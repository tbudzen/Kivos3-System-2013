unit uReportBalance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uReportPreview, frxClass, frxDBSet,
  frxGradient, frxExportPDF, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, frxPreview,
  Vcl.ComCtrls, Data.DB, MemDS, DBAccess, PgAccess, uGlobals, uDatabase,
  uFrmDatabase;

type

  TReportBalancePreview = class(TReportPreview)
    Report: TfrxReport;
    q_detail: TPgQuery;
    ds_detail: TPgDataSource;
    frxds_master: TfrxDBDataset;
    q_sum: TPgQuery;
    ds_sum: TPgDataSource;
    frxds_sum: TfrxDBDataset;
    q_header: TPgQuery;
    ds_header: TPgDataSource;
    frxds_header: TfrxDBDataset;
    frxDBDataset_Balance: TfrxDBDataset;
    PgQuery_Balance: TPgQuery;
    frxDBDataset_Values: TfrxDBDataset;
    PgQuery_Values: TPgQuery;
    frxDBDataset_Shift: TfrxDBDataset;
    PgQuery_Shift: TPgQuery;
  private
    FCt_Number: string;
    Fid_cashdesk: string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function LoadFiles: boolean; override;
    function LoadData: boolean; override;
    procedure LoadParametres; override;
    procedure ShowReport; override;
    function GetReportName: string; override;
  end;

  TReportBalancePreview1 = class(TReportQuiet)
  private
  public
    ReportTicket: TReportBalancePreview;
    constructor CreateNew;
    destructor Destroy; override;
    procedure GetReport; override;
    procedure Print;
  end;

implementation

{$R *.dfm}
{ TReportBalancePreview }
// ##############################################################################

constructor TReportBalancePreview.Create(AOwner: TComponent);
begin
  inherited;

end;
// ##############################################################################

destructor TReportBalancePreview.Destroy;
var
  xExec: TResultHandle;
  xQuery: string;
begin
  xExec := TResultHandle.Create;
  xQuery := 'Delete from tbl_session where guid=''%s'' and Name =''%s''';
  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;

   xQuery := 'Delete from tbl_session where guid=''%s'' and Name =''%s''';
  xQuery := format(xQuery, [SessionGuid, cParams_idCashDesk]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;

  xExec.Free;
  inherited;
end;

// ##############################################################################


function TReportBalancePreview.GetReportName: string;
begin
  result := 'Balance';
end;
// ##############################################################################

function TReportBalancePreview.LoadData: boolean;
var
  xQuery: string;
begin

  xQuery := '  select t1.category_name, t2.currency_symbol, t1.amount_0 as actual_amount_fc,  '
    + '  t1.amount_1 as actual_amount, t2.amount_0 as amount_expected_fc, ' +
    ' t2.amount_1 as amount_expected, t1.amount_1 - t2.amount_1 as difference '
    + ' from (   ' +
    ' select category_name(c.id_cd_category) as category_name, ' +
    ' curr.symbol as currency_symbol,   ' +
    ' sum(c.nr * v.multiplier) as amount_0, ' +
    ' sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 ' + ' from  ' +
    ' tbl_cd_cash_transactions_subt_categories_values as c, ' +
    ' tbl_values as v, ' + ' tbl_categories as cat, ' +
    '  tbl_currencies_exchange_rates as cer,  ' + ' tbl_currencies as curr  ' +
    ' where  ct_number = ''%s'' and ' +
    '  c.id_cd_category = cat.id and     c.id_cd_value = v.id and  ' +
    '  c.id_cashdesk =%s   and  ' +
    '  cer.valid_from <= now() and cer.valid_to >= now() and  ' +
    '  cer.id_currency = curr.id and     v.id_currency = curr.id ' +
    '  group by c.id_cd_category, curr.symbol ' + ' ) as t1, ' + ' ( ' +
    ' select     s.cat_name as category_name, ' +
    '  s.currency_symbol as currency_symbol,   ' +
    '  sum(s.amount0) as amount_0,     sum(s.amount1) as amount_1 ' + ' from ( '
    + '    select ' + '      v.category_name as cat_name, ' +
    '      v.currency_symbol as currency_symbol,  ' +
    '      sum(v.nr * v.multiplier ' +
    '     * (case when v.direction = 1 then 1 else -1 end)) as amount0, ' +
    '     sum(v.nr * v.multiplier * v.exchange_rate  ' +
    '     * (case when v.direction = 1 then 1 else -1 end)) as amount1  ' +
    '   from tbl_cd_cash_transactions_subt_categories_values as v ' +
    '   where v.ct_number <>''%s'' and  ' +
    '     (v.datetime <= now() and v.datetime >= (  ' +
    '       Select datetime  ' + '       from tbl_cd_cash_transactions  ' +
    '       where dateTime=last_shift_date(%s) and (substring(ct_number, 1, 3) <> ''INF'' ) '
    + '    )) and  ' + '    v.id_cashdesk =   :id_cashdesk and  ' +
    '    v.category_name is not null and   ' +
    '    substring(v.ct_number, 1, 2) <> ''CH'' and  substring(v.ct_number, 1, 3) <> ''INF'''
    + '  group by cat_name, currency_symbol ' + ' ) as s ' +
    ' group by s.cat_name, s.currency_symbol ' + ' ) as t2 ' +
    ' where  t1.category_name = t2.category_name and  ' +
    ' t1.currency_symbol = t2.currency_symbol ';

  xQuery := format(xQuery, [FCt_Number, Fid_cashdesk, FCt_Number,
    Fid_cashdesk]);
  if q_sum.Active then
    q_sum.Close;
  q_sum.SQL.Clear;
  q_sum.SQL.Add(xQuery);
  q_sum.Open;

  xQuery := ' select cctv.multiplier,cctv.exchange_rate,cctv.category_name,tv.name value_name, '
    + ' cctv.currency_symbol,  ' + ' case    ' +
    ' when cctv.direction=1 then cctv.nr ' +
    ' when cctv.direction=2 then cctv.nr * -1  ' + ' else 0  end nr ' +
    ' from tbl_cd_cash_transactions  ct  ' +
    ' left join tbl_cd_cash_transactions_subt_categories_values cctv on cctv.ct_number=ct.ct_number  '
    + ' left join tbl_values tv on tv.id=cctv.id_cd_value ' +
    ' where ct.ct_number =''%s'' and cctv.nr <> 0   ' + ' order by tv.name  ';
  xQuery := format(xQuery, [FCt_Number]);
  if q_detail.Active then
    q_detail.Close;
  q_detail.SQL.Clear;
  q_detail.SQL.Add(xQuery);
  q_detail.Open;

  xQuery:= ' select cctt.name, coalesce(u.first_name||'' '','''')||coalesce(u.last_name,'''')casier,'+
      '  tc.cd_name, current_date '+
      ' from tbl_cd_cash_transactions cct '+
      ' left join tbl_cd_cash_transactions_types cctt on cctt.type=cct.type  '+
      ' left join tbl_users u on u.id=cct.id_user '+
      ' left join tbl_cd tc on tc.id=cct.id_cashdesk '+
      ' where cct.ct_number=''%s'' ';
  xQuery := format(xQuery, [FCt_Number]);
  if q_header.Active then
    q_header.Close;
  q_header.SQL.Clear;
  q_header.SQL.Add(xQuery);
  q_header.Open;
end;
// ##############################################################################

function TReportBalancePreview.LoadFiles: boolean;
begin
  Report.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Balance-fr.fr3');
end;

// ##############################################################################

procedure TReportBalancePreview.LoadParametres;
var
  xDataSet: TResultHandle;
  xQuery: string;
  q: TPgQuery;
begin
  inherited;
  xQuery := 'Select * from tbl_session where Guid=''%s'' and name=''%s''';

  xQuery := format(xQuery, [SessionGuid, cParams_ctNumber]);
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.first;
  FCt_Number := xDataSet.query.FieldByName('Values').AsString;
  xDataSet.ClearResult;
  xDataSet.Free;

  q := TPgQuery.Create(nil);
  q.Connection := frmDatabase.KivosConnection;
  q.SQL.Text := 'select * from tbl_session where Guid=:g and Name=:n';
  q.ParamByName('g').AsString := SessionGuid;
  q.ParamByName('n').AsString := cParams_idCashDesk;
  q.Open;
  if not q.IsEmpty then
  begin
    Fid_cashdesk := q.FieldByName('values').AsString;
  end;
  q.Close;
  q.Free;
end;
// ##############################################################################

procedure TReportBalancePreview.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;
// ##############################################################################

{ TReportBalancePreview1 }

constructor TReportBalancePreview1.CreateNew;
begin


end;

destructor TReportBalancePreview1.Destroy;
begin
  ReportTicket.Free;
  inherited;
end;

procedure TReportBalancePreview1.GetReport;
begin
  inherited;
  ReportTicket := TReportBalancePreview.Create(nil);
  ReportTicket.Visible := false;
  ReportTicket.LoadFiles;
  ReportTicket.LoadParametres;
  ReportTicket.LoadData;
  self.Report := ReportTicket.Report;
end;

procedure TReportBalancePreview1.Print;
var
  xName: string;
begin
  xName := ReportTicket.GetPrinterName;
  if xName <> EmptyStr then
  begin
    ReportTicket.Report.PrintOptions.Printer := xName;
  end;
  ReportTicket.Report.PrepareReport();
  ReportTicket.Report.PrintOptions.ShowDialog := true;
  ReportTicket.Report.ShowReport();
end;

end.
