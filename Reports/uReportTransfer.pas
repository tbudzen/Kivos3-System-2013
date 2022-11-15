unit uReportTransfer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, Data.DB, DBAccess, PgAccess, MemDS, uGlobals, uDatabase,
  uFrmDatabase;

type
  TReportPreviewTransfer = class(TReportPreview)
    Report: TfrxReport;
    q_detail: TPgQuery;
    ds_detail: TPgDataSource;
    frxds_master: TfrxDBDataset;
    q_footer: TPgQuery;
    ds_footer: TPgDataSource;
    frxds_footer: TfrxDBDataset;
  private
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadFiles: boolean; override;
    function LoadData: boolean; override;
    procedure LoadParametres; override;
    procedure ShowReport; override;
    function GetReportName: string; override;
  end;

  TReportTransferQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TReportPreviewTransfer;
    constructor createNew;
    destructor Destroy; override;
    procedure Print;
    procedure GetReport; override;
  end;

implementation

{$R *.dfm}
// ##############################################################################
{ TReportPreviewTransfer }
// ##############################################################################

constructor TReportPreviewTransfer.Create(AOwner: TComponent);
begin
  inherited;

end;

// ##############################################################################

destructor TReportPreviewTransfer.Destroy;
var
  xExec: TResultHandle;
  xQuery: string;
begin
  xExec := TResultHandle.Create;
  xQuery := 'Delete from tbl_session where guid=''%s'''; //and Name =''%s''';
  xQuery := format(xQuery, [SessionGuid]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;
  xExec.Free;
  inherited;
end;

// ##############################################################################

function TReportPreviewTransfer.GetReportName: string;
begin
  result := 'Transfer';
end;

// ##############################################################################

function TReportPreviewTransfer.LoadData: boolean;
var
  xQuery: string;
begin
  xQuery := ' select cctv.multiplier,cctv.exchange_rate,cctv.category_name,tv.name value_name,  '
    + ' cctv.currency_symbol,ct.remarks,ct.ct_number,cctv.nr as nr1, ' + ' case ' +
    ' when cctv.direction=1 then cctv.nr ' +
    ' when cctv.direction=2 then cctv.nr * -1 ' + ' else 0  end nr  ' +
    ' from tbl_cd_cash_transactions  ct ' +
    ' left join tbl_cd_cash_transactions_subt_categories_values cctv on cctv.ct_number=ct.ct_number   '
    + ' left join tbl_values tv on tv.id=cctv.id_cd_value ' +
    ' where ct.ct_number =''%s'' and cctv.nr <> 0 ' + ' order by cctv.category_name, tv.sort_order  ';
  xQuery := format(xQuery, [FCt_Number]);
  if q_detail.Active then
    q_detail.Close;
  q_detail.SQL.Clear;
  q_detail.SQL.Add(xQuery);
  q_detail.Open;

  xQuery := ' select to_char(ct.gaming_date,''YYYY-MM-DD'')as gaming_date, ct.datetime, ' +
    ' coalesce(u.first_name || '' '','''') || coalesce(u.last_name,'''') username,'
    + ' a_from.name from_name, a_to.name to_name, t.name trans_name, tc.cd_name '
    + ' from tbl_cd_cash_transactions  ct  ' +
    ' left join tbl_users u on u.id=ct.id_user  ' +
    ' left join tbl_accounts a_from on a_from.account_id=ct.account_id_from ' +
    ' left join tbl_accounts a_to on a_to.account_id=ct.account_id_to ' +
    ' left join tbl_transactions t on t.id=ct.id_cd_transaction   ' +
    ' left join tbl_cd tc on tc.id=ct.id_cashdesk  ' +
    ' where ct.ct_number = ''%s''';
  xQuery := format(xQuery, [FCt_Number]);

  if q_footer.Active then
    q_footer.Close;
  q_footer.SQL.Clear;
  q_footer.SQL.Add(xQuery);
  q_footer.Open;

end;

// ##############################################################################

function TReportPreviewTransfer.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Ticket4.fr3');
end;
// ##############################################################################

procedure TReportPreviewTransfer.LoadParametres;
begin
  inherited;
end;

// ##############################################################################

procedure TReportPreviewTransfer.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;

// ##############################################################################
{ TReportTransferQuiet }
// ##############################################################################

constructor TReportTransferQuiet.createNew;
begin
end;

// ##############################################################################

destructor TReportTransferQuiet.Destroy;
begin
  inherited;
end;

// ##############################################################################

procedure TReportTransferQuiet.GetReport;
begin
  inherited;
  ReportTicket := TReportPreviewTransfer.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

// ##############################################################################

procedure TReportTransferQuiet.Print;
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
end;
// ##############################################################################

end.
