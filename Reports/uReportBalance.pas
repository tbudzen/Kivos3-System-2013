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
    PgQuery_Balance: TPgQuery;
    frxDBDataset_Balance: TfrxDBDataset;
    frxDBDataset_Values: TfrxDBDataset;
    frxDBDataset_Shift: TfrxDBDataset;
    PgQuery_Shift: TPgQuery;
    PgQuery_Values: TPgQuery;
    q_detail: TPgQuery;
    ds_detail: TPgDataSource;
    frxds_master: TfrxDBDataset;
    q_sum: TPgQuery;
    ds_sum: TPgDataSource;
    frxds_sum: TfrxDBDataset;
    q_header: TPgQuery;
    ds_header: TPgDataSource;
    frxds_header: TfrxDBDataset;
    procedure ds_sumDataChange(Sender: TObject; Field: TField);
  private
    FCt_Number: string;
    Fid_cashdesk: string;
    Flast_shift_date:string;
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
    constructor createNew;
    destructor Destroy; override;
    procedure Print;
    procedure GetReport; override;
  end;

var
  ReportBalancePreview: TReportBalancePreview;

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
  xQuery := 'Delete from tbl_session where guid=''%s''';
  xQuery := format(xQuery, [SessionGuid]);
  xExec.ClearResult;
  xExec.Add(xQuery);
  xExec.ExecuteSQL;
  xExec.ClearResult;
  xExec.Free;
  inherited;
end;

procedure TReportBalancePreview.ds_sumDataChange(Sender: TObject;
  Field: TField);
begin
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
  xDataSet: TResultHandle;
begin

  xQuery := ' select cctv.multiplier,cctv.exchange_rate,cctv.category_name,tv.name value_name, '
    + ' cctv.currency_symbol, ct.user_explanation,ct.gaming_date,ct.ct_number,ct.datetime, ' + ' case ' +
    ' when cctv.direction=1 then cctv.nr  ' +
    ' when cctv.direction=2 then cctv.nr * -1 ' + ' else 0  end nr  ' +
    ' from tbl_cd_cash_transactions  ct ' +
    ' left join tbl_cd_cash_transactions_subt_categories_values cctv on cctv.ct_number=ct.ct_number  '
    + ' left join tbl_values tv on tv.id=cctv.id_cd_value ' +
    ' where ct.ct_number =''%s'' and cctv.nr <> 0  ' + ' order by tv.sort_order , tv.name ';
  xQuery := format(xQuery, [FCt_Number]);
  if q_detail.Active then
    q_detail.Close;
  q_detail.SQL.Clear;
  q_detail.SQL.Add(xQuery);
  q_detail.Open;

  xQuery := '  select cctt.name, coalesce(u.first_name||'' '','''')||coalesce(u.last_name,'''')casier,  '
    + ' tc.cd_name, current_date, cct.ct_number, cct.dateTime  ' + ' from tbl_cd_cash_transactions cct ' +
    ' left join tbl_cd_cash_transactions_types cctt on cctt.type=cct.type  ' +
    ' left join tbl_users u on u.id=cct.id_user ' +
    ' left join tbl_cd tc on tc.id=cct.id_cashdesk ' +
    ' where cct.ct_number=''%s''';

 xQuery := format(xQuery, [FCt_Number]);
 if q_header.Active then  q_header.Close;
 q_header.SQL.Clear;
 q_header.SQL.Add(xQuery);
 q_header.Open;


 xQuery:= '  select t1.category_name, t2.currency_symbol, t1.amount_0 as actual_amount_fc,  '+
     '  t1.amount_1 as actual_amount, t2.amount_0 as amount_expected_fc, '+
     ' t2.amount_1 as amount_expected, t1.amount_1 - t2.amount_1 as difference '+
     ' from (  select category_name(c.id_cd_category) as category_name,  '+
     ' curr.symbol as currency_symbol, '+
     ' sum(c.nr * v.multiplier) as amount_0, '+
     ' sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 '+
     ' from   '+
     '  tbl_cd_cash_transactions_subt_categories_values as c, '+
     ' tbl_values as v, '+
     ' tbl_categories as cat, '+
     ' tbl_currencies_exchange_rates as cer,'+
     ' tbl_currencies as curr '+
     ' where  ct_number = ''%s'' and '+
     ' c.id_cd_category = cat.id and     c.id_cd_value = v.id and   '+
     ' c.id_cashdesk =%s      and    '+
     ' cer.valid_from <= now() and cer.valid_to >= now() and '+
     '  cer.id_currency = curr.id and     v.id_currency = curr.id   '+
     ' group by c.id_cd_category, curr.symbol  '+
     ' ) as t1,  '+
     ' (  select     s.cat_name as category_name, '+
     ' s.currency_symbol as currency_symbol, '+
     ' sum(s.amount0) as amount_0,     sum(s.amount1) as amount_1 '+
     ' from  ( select  v.category_name as cat_name,  '+
     '     v.currency_symbol as currency_symbol, '+
     '    sum(v.nr * v.multiplier  '+
     '     * (case when v.direction = 1 then 1 else -1 end)) as amount0, '+
     '     sum(v.nr * v.multiplier * v.exchange_rate  '+
     '     * (case when v.direction = 1 then 1 else -1 end)) as amount1 '+
     '   from tbl_cd_cash_transactions_subt_categories_values as v  ' +
     '   where v.ct_number <> ''%s'' and '+
     '     (v.datetime <= now() and v.datetime >= (''%s'')) and    '+
     '      v.id_cashdesk =%s      and    '+
     '     v.category_name is not null and     '+
     '     substring(v.ct_number, 1, 2) <> ''CH'' and  substring(v.ct_number, 1, 3) <> ''INF'''+
     '   group by cat_name, currency_symbol '+
     '  ) as s    '+
     ' group by s.cat_name, s.currency_symbol '+
     ' ) as t2 ' +
     ' where  t1.category_name = t2.category_name and '+
     '  t1.currency_symbol = t2.currency_symbol  ';

  if Flast_shift_date='' then  Flast_shift_date:= DateTimeToStr(now);

  xQuery := format(xQuery, [FCt_Number,Fid_cashdesk,FCt_Number,Flast_shift_date,Fid_cashdesk
    ]);
  if q_sum.Active then q_sum.Close;
  q_sum.SQL.Clear;
  q_sum.SQL.Add(xQuery);
  q_sum.Open;

end;
// ##############################################################################

function TReportBalancePreview.LoadFiles: boolean;
begin
  report.LoadFromFile(ExtractFilePath(Application.ExeName)+'Balance-fr_2.fr3');
end;

// ##############################################################################

procedure TReportBalancePreview.LoadParametres;
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
  FCt_Number := xDataSet.query.FieldByName('Values').AsString;
  xDataSet.ClearResult;

  xQuery := 'Select * from tbl_session where Guid=''%s'' and name=''%s''';
  xQuery := format(xQuery, [SessionGuid, cParams_idCashDesk]);
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.first;
  Fid_cashdesk:= xDataSet.query.FieldByName('Values').AsString;
  xDataSet.ClearResult;

  xQuery:= 'select last_shift_date from last_shift_date(%s)';
  xQuery:= format(xQuery,[Fid_cashdesk]) ;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  xDataSet.first;
  Flast_shift_date:=  xDataSet.query.FieldByName('last_shift_date').AsString;
  xDataSet.ClearResult;
  xDataSet.Free;
 end;
// ##############################################################################

procedure TReportBalancePreview.ShowReport;
begin
  inherited;
  Report.ShowReport();
end;
// ##############################################################################

{ TReportBalancePreview1 }

constructor TReportBalancePreview1.createNew;
begin

end;

// ##############################################################################

destructor TReportBalancePreview1.Destroy;
begin
  ReportBalancePreview.Free;
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

// ##############################################################################

procedure TReportBalancePreview1.Print;
var
  xName: string;
begin
  xName := ReportBalancePreview.GetPrinterName;
  if xName <> EmptyStr then
  begin
    ReportBalancePreview.Report.PrintOptions.Printer := xName;
  end;
  ReportBalancePreview.Report.PrepareReport();
  ReportBalancePreview.Report.PrintOptions.ShowDialog := true;
  ReportBalancePreview.Report.ShowReport();
end;

// ##############################################################################

end.
