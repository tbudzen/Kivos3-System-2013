unit uReportTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, uDataBAse, Data.DB, MemDS, DBAccess, PgAccess, printers,
  uGlobals;

type

  TReportTicket = class(TReportPreview)
    frxDBDataset_Values: TfrxDBDataset;
    frxDBDataset_Shift: TfrxDBDataset;
    frxDBDataset_Balance: TfrxDBDataset;
    frxDBDataset_print: TfrxDBDataset;
    PgQuery_Balance: TPgQuery;
    PgQuery_Values: TPgQuery;
    PgQuery_Shift: TPgQuery;
    PgQuery_pRINT: TPgQuery;
    Report: TfrxReport;
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

  TReportTicketQuiet = class(TReportQuiet)
  private
  public
    ReportTicket: TReportTicket;
    constructor createNew;
    destructor Destroy; override;
    procedure Print; override;
    procedure GetReport; override;
  end;

implementation

{$R *.dfm}
{ TReportTicket }

constructor TReportTicket.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TReportTicket.Destroy;
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

function TReportTicket.GetReportName: string;
begin
  result := 'Ticket';
end;

function TReportTicket.LoadData: boolean;
var
  xQuery: string;
begin
  { xQuery := ' Select cdt.DateTime as date_start,  cdt.DateTime as date_end, cdt.Gaming_date as gdate,'''' as   '
    + ' acc_name, '''' as operation, ''ADMIN'' as user_name from tbl_cd_cash_transactions cdt  '
    + ' where ' + '    cdt.ct_number =  ''%s'''; }

  xQuery := ' select tra.Gaming_date as gdate, tval.currency_symbol,' +
    ' tval.Exchange_rate,Sum(tval.nr),Sum(tval.nr * tval.exchange_rate) as amountCurr,'
    + ' tbl_users.user_name,  tbl_multiple_transactions.name, tbl_cd.cd_name  from tbl_cd_cash_transactions tra  '
    + ' left join tbl_cd_cash_transactions_subt tsub on   tsub.id_cd_transaction = tra.id  '
    + ' left join tbl_cd_cash_transactions_subt_categories_values tval on tval.id_cd_sub_transaction = tsub.id  '
    + ' left join tbl_users on tra.id_user=tbl_users.id ' +
    ' left join tbl_multiple_transactions on tra.id_cd_transaction= tbl_multiple_transactions.id '+
    '  left join tbl_cd on tbl_cd.id = tra.id_cashDesk '+
     ' where tra.ct_number =''%s''' +
    ' group by tra.Gaming_date,tval.currency_symbol, tval.Exchange_rate,tval.nr,tbl_users.user_name, '
    + '  tbl_multiple_transactions.name , tbl_cd.cd_name ';

  xQuery := format(xQuery, [Fct_number]);

  if PgQuery_Shift.Active then
    PgQuery_Shift.Close;
  PgQuery_Shift.SQL.Clear;
  PgQuery_Shift.SQL.Add(xQuery);
  PgQuery_Shift.Open;
  // PgQuery_Shift.Active := false;
  // PgQuery_Shift.Active := true;

  xQuery := ' Select val.ct_number as  name,  val.nr,0 as  unit,0 as  mult,' +
    '  0 as amount,  0 as money, val.exchange_rate as change, 0 as  price, val.category_name as cat     '
    + ' from tbl_cd_cash_transactions_subt_categories_values val  ' +
    ' join   tbl_cd_cash_transactions cdt on cdt.id=val.id_cd_transaction  ' +
    ' where ' + '    val.ct_number =  ''%s''  and  nr<>0 ';
  xQuery := format(xQuery, [Fct_number]);
  if PgQuery_Values.Active then
    PgQuery_Values.Close;
  PgQuery_Values.SQL.Clear;
  PgQuery_Values.SQL.Add(xQuery);
  PgQuery_Values.Open;

  {
    xQuery := ' SELECT  t.id_cd_transaction, t.datetime,  t.account_id_from as account_id,  t.ct_number, '
    + ' v.exchange_rate,  v.nr, ' +
    ' v.count, v.id_cd_value, v1.multiplier, v1.name, cc.name as cat,  ' +
    ' tr.name as transaction, '''' as description, 0 as price,0 as money, 0 as change,'
    + ' 0 as price1, t.gaming_date as gdate,'''' as acc_name,'''' as user_name,'''' as description,'''' as doc, 0 as amount, tr.name as tran '
    + '   from  tbl_cd_cash_transactions as t  ' +
    ' left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number '
    + ' left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number  '
    + ' left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number  '
    + ' left join  (select id,name, multiplier from tbl_values) as v1 on v1.id = v.id_cd_value  '
    + ' left join  ( select id, name  from tbl_categories )  as cc on cc.id = v.id_cd_category  '
    + ' left join  (select id, name  from tbl_transactions ) as tr on tr.id = t.id_cd_transaction '
    + ' where v.nr <>0 and v.ct_number =  ''%s''' +
    ' group by t.id_cd_transaction, t.datetime,  t.account_id_from,  t.ct_number, '
    + ' v.exchange_rate,  v.nr,  v.count, v.id_cd_value, v1.multiplier, v1.name ,cc.name , '
    + ' tr.name,t.gaming_date  order by t.ct_number  '; }

  xQuery := '   select tra.id_cashdesk,tra.id_cd_transaction,tra.datetime,' +
    ' tra.ct_number,tsub.multiple_subtransaction_id,tsub.direction,  ' +
    ' tval.nr,tval.multiplier,tval.exchange_rate,tval.currency_symbol,tval.category_name,ttr.name,cd.cd_name,tra.remarks '
    + ' from tbl_cd_cash_transactions tra   ' +
    ' left join tbl_cd_cash_transactions_subt tsub on tsub.id_cd_transaction = tra.id  '
    + ' left join tbl_cd_cash_transactions_subt_categories_values tval on tval.id_cd_sub_transaction = tsub.id  '
    + ' left join tbl_transactions ttr on ttr.id =tsub.multiple_subtransaction_id  '
    + ' left join tbl_cd cd on cd.id = tra.id_cashdesk ' +
    ' where tra.ct_number = ''%s''  and tval.nr<>0';

  xQuery := format(xQuery, [Fct_number]);
  if PgQuery_pRINT.Active then
    PgQuery_pRINT.Close;
  PgQuery_pRINT.SQL.Clear;
  PgQuery_pRINT.SQL.Add(xQuery);
  PgQuery_pRINT.Open;

  xQuery := ' Select val.id_cd_transaction as id_shift, 0  as money ,val.category_name as cat ,  '
    + ' 0 as amount ,val.exchange_rate as change ,0 as price ,  ' +
    ' 0 as amount_c ,0 as price_c ,0 as amount_diff ,0 as price_diff ' +
    ' from tbl_cd_cash_transactions_subt_categories_values val ' +
    ' join   tbl_cd_cash_transactions cdt on cdt.id=val.id_cd_transaction ' +
    ' where  cdt.ct_number =  ''%s''';
  xQuery := format(xQuery, [Fct_number]);
  if PgQuery_Balance.Active then
    PgQuery_Balance.Close;
  PgQuery_Balance.SQL.Clear;
  PgQuery_Balance.SQL.Add(xQuery);
  PgQuery_Balance.Open;
end;

function TReportTicket.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Ticket5.fr3');
end;

procedure TReportTicket.LoadParametres;
begin
  inherited;
end;

procedure TReportTicket.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;


// ##############################################################################
{ TReportTicketQuiet }
// ##############################################################################

constructor TReportTicketQuiet.createNew();
begin
  inherited;
end;

// ##############################################################################

destructor TReportTicketQuiet.Destroy;
begin
  inherited;
end;

procedure TReportTicketQuiet.GetReport;
begin
  inherited;
  ReportTicket := TReportTicket.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

// ##############################################################################

procedure TReportTicketQuiet.Print;
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
