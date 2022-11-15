unit uReportCurrencyFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, Data.DB, MemDS, DBAccess, PgAccess;

type
  TReportCurrency = class(TReportPreview)
    frxDBDataset_print: TfrxDBDataset;
    PgQuery_pRINT: TPgQuery;
    Report: TfrxReport;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadFiles: boolean; override;
    function LoadData: boolean; override;
    procedure LoadParametres; override;
    procedure ShowReport; override;
    function GetReportName: string; override;
  end;

  TReportCurrencyQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TReportCurrency;
    constructor createNew;
    destructor Destroy; override;
    procedure Print; override;
    procedure GetReport; override;
  end;

var
  ReportCurrency: TReportCurrency;

implementation

{$R *.dfm}
{ TReportCurrency }
// ##############################################################################

constructor TReportCurrency.Create(AOwner: TComponent);
begin
  inherited;

end;
// ##############################################################################

destructor TReportCurrency.Destroy;
begin

  inherited;
end;
// ##############################################################################

function TReportCurrency.GetReportName: string;
begin
  result := 'Currency';
end;
// ##############################################################################

function TReportCurrency.LoadData: boolean;
var
  xQuery: string;
begin
  xQuery := ' select cer.buying, c.name, c.symbol as SYMBOL_CURR  ' +
    ' from tbl_currencies_exchange_rates as cer, tbl_currencies as c  ' +
    ' where c.id = cer.id_currency  order by c.symbol ';

  if PgQuery_pRINT.Active then
    PgQuery_pRINT.Close;
  PgQuery_pRINT.SQL.Clear;
  PgQuery_pRINT.SQL.Add(xQuery);
  PgQuery_pRINT.Open;

end;
// ##############################################################################

function TReportCurrency.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Currency.fr3');
end;
// ##############################################################################

procedure TReportCurrency.LoadParametres;
begin
  inherited;

end;
// ##############################################################################

procedure TReportCurrency.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;
// ##############################################################################
{ TReportCurrencyQuiet }
// ##############################################################################

constructor TReportCurrencyQuiet.createNew;
begin
  inherited;
end;

// ##############################################################################

destructor TReportCurrencyQuiet.Destroy;
begin

  inherited;
end;

// ##############################################################################

procedure TReportCurrencyQuiet.GetReport;
begin

  inherited;
  ReportTicket := TReportCurrency.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

// ##############################################################################

procedure TReportCurrencyQuiet.Print;
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
