unit uReportShiftPreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls;

type
  TReportShiftPreview = class(TReportPreview)
    frxDBDataset_Shift: TfrxDBDataset;
    frxDBDataset_Values: TfrxDBDataset;
    frxDBDataset_Balance: TfrxDBDataset;
    Report: TfrxReport;
  private
    // FdataFrom: TDate;
    // FDatato: TDate;
    Fct_number: string;
  public
    destructor Destroy; override;
  protected
    function LoadFiles: boolean; override;
    function LoadData: boolean; override;
    procedure LoadParametres; override;
    procedure ShowReport; override;
    function GetReportName: string; override;
  end;

  TReportShiftQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TReportShiftPreview;
    constructor createNew;
    destructor Destroy; override;
    procedure Print; override;
    procedure GetReport; override;
  end;

var
  ReportShiftPreview: TReportShiftPreview;

implementation

uses uDataBase, uGlobals, DateUtils, uSystem;
{$R *.dfm}
// ##############################################################################
{ TReportShiftPreview }
// ##############################################################################

destructor TReportShiftPreview.Destroy;
var
  xExec: TResultHandle;
  xQuery: string;
begin
  { xExec := TResultHandle.create;
    xQuery := 'Delete from tbl_session where guid=''%s'' and Name in (''%s'',''%s'')';
    xQuery := format(xQuery, [SessionGuid, CParam_shift_report_dataFrom,
    CParam_shift_report_dataTo]);
    xExec.ClearResult;
    xExec.Add(xQuery);
    xExec.ExecuteSQL;
    xExec.ClearResult;
    xExec.Free;
    frxDBDataset_Shift.DataSet.Free;
    frxDBDataset_Values.DataSet.Free;
    frxDBDataset_Balance.DataSet.Free; }

  xExec := TResultHandle.Create;
  xQuery := 'Delete from tbl_session where guid=''%s'' and Name =''%s''';
  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;
  xExec.Free;

  inherited;
end;

// ##############################################################################

function TReportShiftPreview.GetReportName: string;
begin
  result := 'Shift';
end;

function TReportShiftPreview.LoadData: boolean;
var
  xQuery: string;
  xShift: TResultHandle;
  xValues: TResultHandle;
  xBalance: TResultHandle;
begin

  xQuery := ' Select cdt.DateTime as date_start,  cdt.DateTime as date_end, cdt.Gaming_date as gdate,'''' as   '
    + ' acc_name, '''' as operation, '''' as user_name from tbl_cd_cash_transactions cdt  '
  // + ' where ' + ' cast(cdt.DateTime as date)  ' +
  // '      between  ''%s''  and  ''%s''';
    + ' where  cdt.ct_Number=''%s''';

  // xQuery := format(xQuery, [DateTimeToStr(FdataFrom), DateTimeToStr(FDatato)]);
  xQuery := format(xQuery, [Fct_number]);
  xShift := TResultHandle.Create;
  xShift.ClearResult;
  xShift.Add(xQuery);
  xShift.InvokeSQL;
  frxDBDataset_Shift.DataSet := xShift.query;

  xQuery := ' Select val.ct_number as  name,  val.nr,0 as  unit,0 as  mult,' +
    '  0 as amount,  0 as money, val.exchange_rate as change, 0 as  price, val.category_name as cat     '
    + ' from tbl_cd_cash_transactions_subt_categories_values val  ' +
    ' join   tbl_cd_cash_transactions cdt on cdt.id=val.id_cd_transaction  ' +
  // ' where ' + ' cast(cdt.DateTime as date) ' +
  // '     between  ''%s''  and  ''%s''';
    ' where  cdt.ct_Number=''%s''';
  // xQuery := format(xQuery, [DateTimeToStr(FdataFrom), DateTimeToStr(FDatato)]);
  xQuery := format(xQuery, [Fct_number]);

  xValues := TResultHandle.Create;
  xValues.ClearResult;
  xValues.Add(xQuery);
  xValues.InvokeSQL;
  frxDBDataset_Values.DataSet := xValues.query;

  xQuery := ' Select val.id_cd_transaction as id_shift, 0  as money ,val.category_name as cat ,'
    + ' 0 as amount ,val.exchange_rate as change ,0 as price , ' +
    ' 0 as amount_c ,0 as price_c ,0 as amount_diff ,0 as price_diff  ' +
    ' from tbl_cd_cash_transactions_subt_categories_values val  ' +
    ' join   tbl_cd_cash_transactions cdt on cdt.id=val.id_cd_transaction  ' +
  // '  where ' + ' cast(cdt.DateTime as date) ' +
  // '    between  ''%s''  and  ''%s''';
    ' where  cdt.ct_Number=''%s''';
  // xQuery := format(xQuery, [DateTimeToStr(FdataFrom), DateTimeToStr(FDatato)]);
  xQuery := format(xQuery, [Fct_number]);

  xBalance := TResultHandle.Create;
  xBalance.ClearResult;
  xBalance.Add(xQuery);
  xBalance.InvokeSQL;
  frxDBDataset_Balance.DataSet := xBalance.query;

  inherited;

end;
// ##############################################################################

function TReportShiftPreview.LoadFiles: boolean;
var
  xString: TStringStream;
begin
  // xString:= GetResourceFromFile('REPORTSSHIFTS');
  // xString.SaveToFile(ExtractFilePath(Application.ExeName) + 'Shifts.fr3');
  // xString.Free;
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Shifts.fr3');
end;

// ##############################################################################

procedure TReportShiftPreview.LoadParametres;
var
  xQuery: string;
  xDataSet: TResultHandle;
  i: integer;
begin
  inherited; {
    xQuery := 'Select * from tbl_session where Guid=''%s'' and ((name=''%s'') or (name=''%s''))';

    xQuery := format(xQuery, [SessionGuid, CParam_shift_report_dataFrom,
    CParam_shift_report_dataTo]);
    xDataSet := TResultHandle.create;
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    xDataSet.InvokeSQL;
    for i := 0 to xDataSet.count - 1 do
    begin
    if xDataSet.query.FieldByName('name').AsString = CParam_shift_report_dataFrom
    then
    begin
    try
    FdataFrom := StrToDate(xDataSet.query.FieldByName('Values').AsString);
    except
    FdataFrom := dateof(now);
    end;
    end
    else if xDataSet.query.FieldByName('name').AsString = CParam_shift_report_dataTo
    then
    begin
    try
    FDatato := StrToDate(xDataSet.query.FieldByName('Values').AsString);
    except
    FDatato := dateof(now);
    end;
    end;
    xDataSet.next;
    end;
    xDataSet.ClearResult;
    xDataSet.Free;
  }
  xQuery := 'Select * from tbl_session where Guid=''%s'' and name=''%s''';

  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.first;
  Fct_number := xDataSet.query.FieldByName('Values').AsString;
  xDataSet.ClearResult;
  xDataSet.Free;
end;

// ##############################################################################
procedure TReportShiftPreview.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;

// ##############################################################################

{ TReportShiftQuiet }

constructor TReportShiftQuiet.createNew;
begin

end;

destructor TReportShiftQuiet.Destroy;
begin
  ReportTicket.Free;
  inherited;
end;

procedure TReportShiftQuiet.GetReport;
begin

  inherited;
  ReportTicket := TReportShiftPreview.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

procedure TReportShiftQuiet.Print;

var
  xName: string;
begin
  xName := ReportTicket.GetPrinterName;
  if xName <> EmptyStr then
  begin
    ReportTicket.Report.PrintOptions.Printer := xName;
  end;
  ReportTicket.Report.PrepareReport();
  ReportTicket.Report.PrintOptions.ShowDialog := false;
  ReportTicket.Report.Print;
  inherited;
end;

end.
