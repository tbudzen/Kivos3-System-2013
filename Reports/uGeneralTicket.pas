unit uGeneralTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, Data.DB, MemDS, DBAccess, PgAccess;

type
  TGeneralTicket = class(TReportPreview)
    Report: TfrxReport;
    frxDBDataset_Shift: TfrxDBDataset;
    PgQuery_Shift: TPgQuery;
    frxDBDataset_Values: TfrxDBDataset;
    PgQuery_Values: TPgQuery;
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

  TReportTicketGeneralQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TGeneralTicket;
    constructor createNew;
    destructor Destroy; override;
    procedure Print; override;
    procedure GetReport; override;
  end;

var
  GeneralTicket: TGeneralTicket;

implementation

uses Usystem, uDataBase, uGlobals;
{$R *.dfm}
{ TGeneralTicket }

// ##############################################################################

constructor TGeneralTicket.Create(AOwner: TComponent);
begin
  inherited;

end;
// ##############################################################################

destructor TGeneralTicket.Destroy;
var
  xExec: TResultHandle;
  xQuery: string;
begin
  xExec := TResultHandle.Create;
  xQuery := 'Delete from tbl_session where guid=''%s'''; // and Name =''%s''';
  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;
  xExec.Free;
  inherited;
end;
// ##############################################################################

function TGeneralTicket.GetReportName: string;
begin
  result := 'General Ticket';
end;
// ##############################################################################

function TGeneralTicket.LoadData: boolean;
var
  xQuery: string;
begin
  xQuery := '  select tra.id_cashdesk,tra.id_cd_transaction,tra.datetime, ' +
    ' tra.ct_number,tsub.multiple_subtransaction_id,tsub.direction, ' +
    ' tval.nr,tval.multiplier,tval.exchange_rate,tval.currency_symbol,' +
    ' tval.category_name, tbl_values.name,cd.cd_name,to_char(tra.gaming_date,''YYYY-MM-DD'') as gaming_date ' +
    '  from tbl_cd_cash_transactions tra  ' +
    ' left join tbl_cd_cash_transactions_subt tsub on tsub.id_cd_transaction = tra.id '
    + ' left join tbl_cd_cash_transactions_subt_categories_values tval ' +
    ' on tval.id_cd_transaction = tsub.id_cd_transaction' +
    ' left join tbl_transactions ttr on ttr.id =tsub.multiple_subtransaction_id  '  +
    ' left join tbl_values on tbl_values.id= tval.id_cd_value '+
     ' left join tbl_cd cd on cd.id = tra.id_cashdesk  ' +
    ' where tra.ct_number = ''%s''  and tval.nr<>0   ';

  xQuery := format(xQuery, [StringToDataBAse(FCt_number)]);
  if PgQuery_Values.Active then
    PgQuery_Values.Close;
  PgQuery_Values.SQL.Clear;
  PgQuery_Values.SQL.Add(xQuery);
  PgQuery_Values.Open;

  xQuery :=' select tra.ct_number, tval.currency_symbol, tval.Exchange_rate,Sum(tval.nr),'
    + ' Sum(tval.nr * tval.exchange_rate) as amountCurr, tbl_users.user_name,  '
    + ' case when tra.is_multiple_cd_transaction=1 then  tbl_multiple_transactions.name else t.name end as name, '
    + ' acc.name as name1, acct.name as name2, tra.remarks  ' +
    ' from tbl_cd_cash_transactions tra  ' +
    ' left join tbl_cd_cash_transactions_subt tsub on   tsub.id_cd_transaction = tra.id '
    + ' left join tbl_cd_cash_transactions_subt_categories_values tval on tval.id_cd_transaction = tsub.id_cd_transaction '
    + ' left join tbl_users on tra.id_user=tbl_users.id ' +
    ' left join tbl_multiple_transactions on tra.id_cd_transaction= tbl_multiple_transactions.id '
    + ' left join tbl_transactions t on t.id=tra.id_cd_transaction ' +
    'left join tbl_accounts acc on acc.account_id = tra.account_id_from  '+
     'left join tbl_accounts acct on acct.account_id = tra.account_id_to'+
    ' where tra.ct_number =  ''%s''' +
    ' group by tra.ct_number,tra.is_multiple_cd_transaction,t.name, ' +
    ' tval.currency_symbol, tval.Exchange_rate,tval.nr,tbl_users.user_name,tbl_multiple_transactions.name,acc.name,acct.name,'
    + ' tsub.Account_from, tsub.Account_to,tra.remarks ' + ' having nr>0    ';

  xQuery := format(xQuery, [StringToDataBAse(FCt_number)]);
  if PgQuery_Shift.Active then
    PgQuery_Shift.Close;
  PgQuery_Shift.SQL.Clear;
  PgQuery_Shift.SQL.Add(xQuery);
  PgQuery_Shift.Open;

end;
// ##############################################################################

function TGeneralTicket.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'generalTicket.fr3');
end;
// ##############################################################################

procedure TGeneralTicket.LoadParametres;
var
  xDataSet: TResultHandle;
  xQuery: string;
begin
  inherited;
  xQuery := 'Select * from tbl_session where Guid=''%s'' and name=''%s''';

  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.first;
  FCt_number := xDataSet.query.FieldByName('Values').AsString;
  xDataSet.ClearResult;
  xDataSet.Free;
end;
// ##############################################################################

procedure TGeneralTicket.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;
// ##############################################################################

{ TReportTicketQuiet }
// ##############################################################################
constructor TReportTicketGeneralQuiet.createNew;
begin

end;

// ##############################################################################
destructor TReportTicketGeneralQuiet.Destroy;
begin
  inherited;
end;

// ##############################################################################
procedure TReportTicketGeneralQuiet.GetReport;
begin
  inherited;
  ReportTicket := TGeneralTicket.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

// ##############################################################################
procedure TReportTicketGeneralQuiet.Print;
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
