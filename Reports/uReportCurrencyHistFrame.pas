unit uReportCurrencyHistFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, Data.DB, MemDS, DBAccess, PgAccess;

type
  TReportCurrencyHistPreview = class(TReportPreview)
    Report: TfrxReport;
    frxDBDataset_print: TfrxDBDataset;
    PgQuery_pRINT: TPgQuery;
  private
    { Private declarations }
  public
    FdataFrom: TDateTime;
    Fdatato: TDateTime;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadFiles: boolean; override;
    function LoadData: boolean; override;
    procedure LoadParametres; override;
    procedure ShowReport; override;
    function GetReportName: string; override;
  end;

  TReportCurrencyHistQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TReportCurrencyHistPreview;

    constructor createNew;
    destructor Destroy; override;
    procedure Print; override;
    procedure GetReport; override;
  end;

implementation

uses udataBase, uGlobals, dateUtils;
{$R *.dfm}
{ TReportCurrencyHistPreview }
// ##############################################################################

constructor TReportCurrencyHistPreview.Create(AOwner: TComponent);
begin
  inherited;
  FdataFrom := 0;
  Fdatato := 0;
end;
// ##############################################################################

destructor TReportCurrencyHistPreview.Destroy;
var
  xExec: TResultHandle;
  xQuery: string;
begin
  xExec := TResultHandle.Create;
  xQuery := 'Delete from tbl_session where guid=''%s''';
  xQuery := format(xQuery, [SessionGuid]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;
  xExec.Free;
  inherited;
end;
// ##############################################################################

function TReportCurrencyHistPreview.GetReportName: string;
begin
  result := 'Currency historical';
end;

// ##############################################################################

function TReportCurrencyHistPreview.LoadData: boolean;
var
  xQuery: string;
  xQueryData: string;
begin

  xQueryData := ' and  cer.valid_from >=%s and cer.valid_to <=%s';
  xQueryData := format(xQueryData, [QuotedStr(DateToStr(FdataFrom)),
    QuotedStr(DateToStr(Fdatato))]);

  xQuery := ' select c.symbol as SYMBOL_CURR, cer.buying, cer.selling, cer.valid_from, cer.valid_to '
    + ' from tbl_currencies_exchange_rates_hist as cer, tbl_currencies as c ' +
    ' where c.id = cer.id_currency  ' + xQueryData +
    ' order by c.symbol , cer.valid_from desc, cer.valid_to desc ';
  if PgQuery_pRINT.Active then
    PgQuery_pRINT.Close;
  PgQuery_pRINT.SQL.Clear;
  PgQuery_pRINT.SQL.Add(xQuery);
  PgQuery_pRINT.Open;
end;

// ##############################################################################

function TReportCurrencyHistPreview.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'CurrencyHist.fr3');
end;

// ##############################################################################

procedure TReportCurrencyHistPreview.LoadParametres;
var
  xQuery: string;
  xDataSet: TResultHandle;
  i: integer;
begin
  inherited;
  xQuery := 'Select * from tbl_session where Guid=''%s'' and ((name=''%s'') or (name=''%s''))';

  xQuery := format(xQuery, [SessionGuid, cParams_dataFrom, cParams_datato]);
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  for i := 0 to xDataSet.count - 1 do
  begin
    if xDataSet.query.FieldByName('name').AsString = cParams_dataFrom then
    begin
      try
        FdataFrom := StrToDate(xDataSet.query.FieldByName('Values').AsString);
      except
        FdataFrom := dateof(now);
      end;
    end
    else if xDataSet.query.FieldByName('name').AsString = cParams_datato then
    begin
      try
        Fdatato := StrToDate(xDataSet.query.FieldByName('Values').AsString);
      except
        Fdatato := dateof(now);
      end;
    end;
    xDataSet.next;
  end;
  xDataSet.ClearResult;
  xDataSet.Free;
end;

// ##############################################################################

procedure TReportCurrencyHistPreview.ShowReport;
begin
  inherited;

end;
// ##############################################################################

{ TReportCurrencyHistQuiet }

// ##############################################################################

constructor TReportCurrencyHistQuiet.createNew;
begin
  inherited
end;

// ##############################################################################

destructor TReportCurrencyHistQuiet.Destroy;
begin

  inherited;
end;

// ##############################################################################

procedure TReportCurrencyHistQuiet.GetReport;
begin
  inherited;
  ReportTicket := TReportCurrencyHistPreview.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

// ##############################################################################

procedure TReportCurrencyHistQuiet.Print;
var
  xName: string;
begin
  xName := ReportTicket.GetPrinterName;
  if xName <> EmptyStr then
  begin
    ReportTicket.Report.PrintOptions.Printer := xName;
  end;
  ReportTicket.Report.PrepareReport();
  if xName <> EmptyStr then
  begin
    ReportTicket.Report.PrintOptions.ShowDialog := false;
  end;
  ReportTicket.Report.Print;

end;

// ##############################################################################

end.
