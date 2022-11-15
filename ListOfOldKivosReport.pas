unit ListOfOldKivosReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxContainer, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, Vcl.StdCtrls,
  cxButtons, Data.DB, MemDS, DBAccess, PgAccess, cxCustomPivotGrid,
  cxDBPivotGrid, Vcl.ComCtrls, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, dxCore,
  Vcl.ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView, cxMemo,
  cxDBEdit, cxCalc;

type
  TOldKivosReport = class(TBaseFrame)
    PgDataSource1: TPgDataSource;
    PgQuery1: TPgQuery;
    Panel1: TPanel;
    cxTimeEdit_To: TcxTimeEdit;
    cxButton_refresh: TcxButton;
    PgDataSource_Trans: TPgDataSource;
    PgQuery_trans: TPgQuery;
    PgDataSource_TransValues: TPgDataSource;
    PgQuery_TransValues: TPgQuery;
    vShifts: TPgQuery;
    dsvShifts: TPgDataSource;
    vValues: TPgQuery;
    dsvValues: TPgDataSource;
    ScrollBox1: TScrollBox;
    PageControl1: TPageControl;
    TabSheet_Pivot: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    TabSheet_Transactions: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1_CashDeskName: TcxGridDBColumn;
    cxGrid1DBTableView1_Ct_number: TcxGridDBColumn;
    cxGrid1DBTableView1_Name: TcxGridDBColumn;
    cxGrid1DBTableView1_DateTime: TcxGridDBColumn;
    cxGrid1DBTableView1_Gaming_date: TcxGridDBColumn;
    cxGrid1DBTableView1_case: TcxGridDBColumn;
    cxGrid1DBTableView1_name1: TcxGridDBColumn;
    cxGrid1DBTableView1_name2: TcxGridDBColumn;
    cxGrid1DBTableView1_Status: TcxGridDBColumn;
    cxGrid1DBTableView1_description: TcxGridDBColumn;
    cxGrid1DBTableView1_Transname: TcxGridDBColumn;
    cxGrid1DBTableView1_UserName: TcxGridDBColumn;
    cxGrid1DBTableView1_AmountIn: TcxGridDBColumn;
    cxGrid1DBTableView1_amountOut: TcxGridDBColumn;
    cxGrid1DBTableView1_currSymbol: TcxGridDBColumn;
    cxGrid1DBTableView1_Selling: TcxGridDBColumn;
    cxGrid1DBTableView1_chf_in: TcxGridDBColumn;
    cxGrid1DBTableView1_chf_out: TcxGridDBColumn;
    cxGrid1DBTableView1_indicator: TcxGridDBColumn;
    cxGrid1DBTableView1_IdTransactions: TcxGridDBColumn;
    cxGrid1DBTableView1_IdSubTransactions: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView_category: TcxGridDBColumn;
    cxGrid2DBTableView_ValueName: TcxGridDBColumn;
    cxGrid2DBTableView_Nr: TcxGridDBColumn;
    cxGrid2DBTableView_Amount: TcxGridDBColumn;
    cxGrid2DBTableView_changeChf: TcxGridDBColumn;
    cxGrid2DBTableView_AmountCHF: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    TabSheet_Shifts: TTabSheet;
    ScrollBox2: TScrollBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView_category: TcxGridDBColumn;
    cxGridDBTableView_ValueName: TcxGridDBColumn;
    cxGridDBTableView_Nr: TcxGridDBColumn;
    cxGridDBTableView_Multiplier: TcxGridDBColumn;
    cxGridDBTableView_Amount: TcxGridDBColumn;
    cxGridDBTableView_Curr: TcxGridDBColumn;
    cxGridDBTableView_Rate: TcxGridDBColumn;
    cxGridDBTableView_AmountChf: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    vAmounts: TPgQuery;
    dsvAmounts: TPgDataSource;
    Panel2: TPanel;
    cxDateEdit_from: TcxDateEdit;
    cxDateEdit_To: TcxDateEdit;
    cxTimeEdit_From: TcxTimeEdit;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView3Column6: TcxGridDBColumn;
    cxGridDBTableView3Column7: TcxGridDBColumn;
    cxGridDBTableView3Column8: TcxGridDBColumn;
    procedure cxButton_refreshClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Panel2Exit(Sender: TObject);
    procedure cxDBMemo1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RefreshTabsheet1;
    procedure RefreshTransactions;
    procedure RefreshShifts;
  end;

var
  OldKivosReport: TOldKivosReport;

implementation

uses cxGridDBDataDefinitions, dateUtils;
{$R *.dfm}
// ##############################################################################

constructor TOldKivosReport.Create(AOwner: TComponent);
var
  xData: TDateTime;
begin
  inherited;
  cxDateEdit_from.Date := dateof(now());
  xData := 0;
  xData := dateof(cxDateEdit_from.Date + 1) + (cxTimeEdit_From.Time);
  cxDateEdit_To.Date := dateof(xData);
  cxTimeEdit_To.Time := TimeOf(xData);
  PageControl1.ActivePage := TabSheet_Pivot;
end;

// ##############################################################################

procedure TOldKivosReport.cxButton_refreshClick(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet_Pivot then
  begin
    RefreshTabsheet1;
  end
  else if PageControl1.ActivePage = TabSheet_Transactions then
  begin
    RefreshTransactions;
  end
  else if PageControl1.ActivePage = TabSheet_Shifts then
  begin
    RefreshShifts;
  end;
end;

procedure TOldKivosReport.cxDBMemo1PropertiesChange(Sender: TObject);
begin
  inherited;

end;

// ##############################################################################

procedure TOldKivosReport.RefreshShifts;
var
  xQueryTime: string;
  xQuery: string;
begin
  xQueryTime := EmptyStr;
  if ((cxTimeEdit_From.Time <> 0) and (cxTimeEdit_To.Time <> 0)) then
  begin
    xQueryTime := ' and cast(cdt.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));
  end
  else
  begin
    if (cxTimeEdit_From.Time <> 0) then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));

    end
    else if cxTimeEdit_To.Time <> 0 then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));

    end;
  end;

  with vShifts do
  begin
    xQuery := ' select  cdt.id as id ' + ' , 0 as id_cd_transaction ' +
      ' , cd.cd_name ' + ' , cdt.base_ct_Number ' + ' , cdt.ct_number  ' +
      ' , sum(tbl_cd_cash_transactions_shift_values.difference) as difference  ' + ' , cdt.DateTime ' + ' , cdt.Gaming_date ' +
      ' ,cast( (case when substr(cdt.ct_number,1,2)=''OP'' then ''Open''' +
      ' when substr(cdt.ct_number,1,2)=''CL'' then ''Close''' +
      ' when substr(cdt.ct_number,1,2)=''IN'' then ''Info''  end)' +
      ' as Varchar(20)) as operation ' +
      ' , us.first_name ||'' ''|| us.last_name as user_name ' +
      ' , cdt.explanation_supervisor,cdt.user_explanation ' + ' from tbl_cd_cash_transactions cdt ' +
      ' left join tbl_cd cd on cd.id=cdt.id_cashDesk ' +
      ' left join tbl_users us on cdt.id_user=us.id ' +
      '  left join tbl_cd_cash_transactions_shift_values on cdt.ct_number=tbl_cd_cash_transactions_shift_values.ct_number '+
      ' where   cdt.type in (1,3,5,6,7,8,9) ' +
      ' and cdt.datetime between %s and %s ' + xQueryTime +
      ' group by cdt.id,cd.cd_name ,us.first_name,us.last_name ';

    xQuery := format(xQuery, [QuotedStr(DateToStr(cxDateEdit_from.Date)),
      QuotedStr(DateToStr(cxDateEdit_To.Date))]);
    if Active then
      Close;
    SQL.Clear;
    SQL.Add(xQuery);
    SQL.SaveToFile('c:\shift.txt');
    Active := false;
    Active := true;
  end;
end;

// ##############################################################################

procedure TOldKivosReport.RefreshTabsheet1;
var
  xQuery: String;
  xQueryData: string;
  xQueryTime: string;
begin
  xQueryData := EmptyStr;

  xQueryData := ' and cast(trs.DateTime as date) between  ' +
    QuotedStr(DateToStr(cxDateEdit_from.Date)) + '  and  ' +
    QuotedStr(DateToStr(cxDateEdit_To.Date));

  xQueryTime := EmptyStr;
  if ((cxTimeEdit_From.Time <> 0) and (cxTimeEdit_To.Time <> 0)) then
  begin
    xQueryTime := ' and cast(trs.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));

  end
  else
  begin
    if (cxTimeEdit_From.Time <> 0) then
    begin
      xQueryTime := ' and  cast(trs.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));

    end
    else if cxTimeEdit_To.Time <> 0 then
    begin
      xQueryTime := ' and  cast(trs.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));

    end;
  end;

  xQuery := ' select trs.* ,ct.gaming_date,us.user_name,cd.cd_name,' +
    ' case when substring(trs.ct_number, 1,2)= ''IN'' then ''INFO''' +
    ' when substring(trs.ct_number, 1,2)= ''OP'' then ''OPEN''' +
    ' when substring(trs.ct_number, 1,2)= ''CL'' then ''CLOSE''' +
    ' when substring(trs.ct_number, 1,2)= ''CH'' then ''CHANGE''' + ' end ' +
    ' from tbl_cd_cash_transactions_shift_values trs' +
    ' left join tbl_cd_cash_transactions ct on ct.ct_number = trs.ct_number ' +
    ' left join tbl_users us on us.id = ct.id_user ' +
    ' left join tbl_cd cd on cd.id =trs.id_cashdesk' +
    ' where trs.id is not null ' + xQueryData + xQueryTime;

  if PgQuery1.Active then
  begin
    PgQuery1.Close;
  end;
  PgQuery1.SQL.Clear;
  PgQuery1.SQL.Add(xQuery);
  try

    // PgQuery1.SQL.SaveToFile('c:\2.txt');
  except

  end;

  PgQuery1.Open;

end;

// ##############################################################################

procedure TOldKivosReport.RefreshTransactions;
var
  xQuery: string;
  xQueryTime, xQueryTime_2: string;
begin

  xQueryTime := EmptyStr;
  xQueryTime_2 := EmptyStr;
  if ((cxTimeEdit_From.Time <> 0) and (cxTimeEdit_To.Time <> 0)) then
  begin
    xQueryTime := ' and cast(cdt.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));
    xQueryTime_2 := ' and cast(cdt.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));

  end
  else
  begin
    if (cxTimeEdit_From.Time <> 0) then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));

      xQueryTime_2 := ' and  cast(cdt.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));
    end
    else if cxTimeEdit_To.Time <> 0 then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));

      xQueryTime_2 := ' and  cast(cdt.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));
    end;
  end;

  xQuery := ' select   subt.id_cd_transaction,  subt.id,  '' '' , ''---->'' as indicator,'
    + ' cdt.ct_number, t.name, case when subt.direction = ''1'' then ''In'' else ''Out'' end,'
    + ' a1.name, a2.name, a3.name,cdt.gaming_date as gamingdate,  subt.amount_in, '
    + ' subt.amount_out,  cdt.datetime, 0 as trans,0 as Mp,  cd.cd_name as cashDeskName,'
    + ' cd.id as idCaskDesk, t.name as transName,cdt.gaming_date,' +
    ' case when cdt.confirmed=1  then ''accounted'' else '''' end  ' +
    ' as Status,  cat.name as transCatName,cdt.remarks as description, ' +
    ' curr.symbol as currSymbol, currRate.selling, t.id_currency,' +
    ' subt.amount_in * currRate.Selling as Cchf_in, ' +
    ' subt.amount_out * currRate.Selling as Cchf_out,t.id_report, ' +
    ' t.how_many_copies ,us.user_name ' +
    ' from  tbl_cd_cash_transactions as cdt ' +
    ' left join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number '
    + ' left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id '
    + ' left join tbl_cd cd on cd.id=cdt.id_cashdesk ' +
    ' left join tbl_categories cat on t.id_category=cat.id ' +
    ' left join tbl_currencies curr on t.id_currency=curr.id ' +
    ' left join tbl_users us on cdt.id_user = us.id ' +
    ' left join tbl_accounts a1 on cast(subt.id_account_from as character varying) '
    + ' = a1.account_id left join tbl_accounts a2 on cast ' +
    ' (subt.id_account_to as character varying)' +
    ' = a2.account_id left join tbl_accounts a3 on cdt.account_id_transfer = a3.account_id '
    + ' left join tbl_currencies_exchange_rates currRate on ' +
    ' currRate.id_currency = curr.id and currRate.valid_from <= cast(now() as Date) and '
    + ' currRate.valid_to >= cast(now() as Date) ' +
    ' where cdt.is_multiple_cd_transaction = 1 and cast(cdt.DateTime as Date) '
    + ' between %s and %s ' + xQueryTime + 'and substring(cdt.ct_number, 1, 4) '
    + ' = ''NORM''' +
    ' union select 0 as id_cd_transaction, subt.id_cd_transaction as id, '' '','
    + ' cdt.ct_number as indicator, cdt.ct_number,' +
    ' case when cdt.is_multiple_cd_transaction = 1 then  ' +
    ' mt.name else t.name end, case when cdt.direction = 1  ' +
    ' then ''In'' else ''Out'' end, a1.name, a2.name, a3.name,' +
    ' cdt.gaming_date as gamingdate, cdt.amount_in, cdt.amount_out, ' +
    '  cdt.DateTime, cdt.id_cd_transaction as trans, ' +
    ' cdt.is_multiple_cd_transaction as Mp, cd.cd_name as cashDeskName, ' +
    '  cd.id as idCaskDesk, t.name as transName, cdt.gaming_date,  ' +
    '  case when cdt.confirmed = 1 then ''accounted'' else '' '' end as Status,'
    + '  cat.name as transCatName, cdt.remarks as description, ' +
    '  curr.symbol as currSymbol, currRate.selling, ' +
    ' t.id_currency, cdt.amount_in * currRate.selling as Cchf_in, ' +
    '  cdt.amount_out * currRate.selling as Cchf_out, t.id_report, ' +
    '  t.how_many_copies, us.user_name ' +
    ' from tbl_cd_cash_transactions as cdt left ' +
    '  join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number '
    + ' left join tbl_transactions as t on cdt.id_cd_transaction = t.id left join '
    + '  tbl_multiple_transactions as mt on cdt.id_cd_transaction = mt.id  ' +
    ' left join tbl_cd cd on cd.id = cdt.id_cashdesk ' +
    ' left join tbl_categories cat on t.id_category = cat.id left join tbl_users  '
    + '  us on cdt.id_user = us.id  ' +
    ' left join tbl_currencies curr on t.id_currency = curr.id ' +
    ' left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id left '
    + ' join tbl_accounts as a2 on cdt.account_id_to = a2.account_id ' +
    ' left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id  '
    + ' left join tbl_currencies_exchange_rates currRate on currRate.id_currency = curr.id '
    + ' and currRate.valid_from <= cast(now() as Date) and ' +
    ' currRate.valid_to >= cast(now() as Date)where cast(cdt.DateTime as Date)'
    + ' between %s  and %s ' + xQueryTime_2 +
    'and substring(cdt.ct_number, 1,4) = ''NORM''';

  xQuery := format(xQuery, [QuotedStr(DateToStr(cxDateEdit_from.Date)),
    QuotedStr(DateToStr(cxDateEdit_To.Date)),
    QuotedStr(DateToStr(cxDateEdit_from.Date)),
    QuotedStr(DateToStr(cxDateEdit_To.Date))]);

  if PgQuery_trans.Active then
  begin
    PgQuery_trans.Close;
  end;
  PgQuery_trans.SQL.Clear;
  PgQuery_trans.SQL.Add(xQuery);
//  PgQuery_trans.SQL.SaveToFile('c:\2.txt');

  PgQuery_trans.Active := false;
  PgQuery_trans.Active := true;

end;

// ##############################################################################

procedure TOldKivosReport.cxGrid1DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  xQuery: string;
  SelectedRow: Integer;
  DC: TcxGridDBDataController;
  CTNr: string;
  IdCdSubTransaction, Indicator, xIdTransactions: string;
begin
  inherited;
  SelectedRow := -1;
  DC := cxGrid1DBTableView1.DataController;
  SelectedRow := DC.FocusedRecordIndex;

  if (SelectedRow >= 0) then
  begin

    Indicator := VarToStr(DC.Values[SelectedRow, 18]);
    CTNr := VarToStr(DC.Values[SelectedRow, 1]);
    xIdTransactions := VarToStr(DC.Values[SelectedRow, 19]);

    if Indicator = '---->' then
    begin

      IdCdSubTransaction := VarToStr(DC.Values[SelectedRow, 20]);

      { xQuery := 'select ' + '  c.*, ' + '  v.multiplier, ' +
        '  c.nr * v.multiplier as amount, ' +
        '  c.exchange_rate as change_chf, ' +
        '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
        '  cat.name as category, ' + '  v.name as value ' + 'from ' +
        '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
        '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
        '  ct_number = ''' + CTNr + ''' and ' + '  c.id_cd_sub_transaction = ' +
        IdCdSubTransaction + ' and  ' + '  c.id_cd_category = cat.id and ' +
        '  c.id_cd_value = v.id ' + 'order by ' + '  v.sort_order asc'; }

      xQuery := ' Select   c.*,   v.multiplier,   c.nr * v.multiplier as amount, '
        + ' c.exchange_rate as change_chf,   c.nr * v.multiplier * c.exchange_rate as amount_chf, '
        + ' cat.name as category,   v.name as value, cdv.ord ' +
        '  from   tbl_cd_cash_transactions_subt_categories_values as c ' +
        ' left join tbl_values as v on  c.id_cd_value = v.id ' +
        ' left join tbl_categories as cat  on  c.id_cd_category = cat.id ' +
        ' left join tbl_cd_cash_transactions_subt as cd on cd.id=c.id_cd_sub_transaction '
        + ' left join  tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and cdv.id_transaction='
        + xIdTransactions + 'where ' + '  c.ct_number = ''' + CTNr + ''' and ' +
        '  c.id_cd_sub_transaction = ' + IdCdSubTransaction + ' order by ' +
        ' cdv.ord asc';

      PgQuery_TransValues.SQL.Clear();
      PgQuery_TransValues.SQL.Add(xQuery);
      PgQuery_TransValues.Active := false;
      PgQuery_TransValues.Active := true;

    end
    else
    begin

      // IdCdSubTransaction := '';

      if xIdTransactions = '0' then
      begin

        xQuery := 'select ' + '  c.*, ' + '  v.multiplier, ' +
          '  c.nr * v.multiplier as amount, ' +
          '  c.exchange_rate as change_chf, ' +
          '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          '  cat.name as category, ' + '  v.name as value ' + 'from ' +
          '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
          '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
          '  ct_number = ''' + CTNr + ''' and  c.nr <> 0  and ' +
          '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id ' +
          'order by ' + '  v.sort_order asc';
      end
      else
      begin
        xQuery := '  select  cdv.ord, c.*,   v.multiplier,   c.nr * v.multiplier as amount,'
          + ' c.exchange_rate as change_chf, ' +
          ' c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
          ' cat.name as category,   v.name as value from ' +
          ' tbl_cd_cash_transactions_subt_categories_values as c ' +
          ' join tbl_values as v on c.id_cd_value =v.id ' +
          '  join  tbl_categories as cat on  c.id_cd_category = cat.id ' +
          ' left join  tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and '
          + '  cdv.id_transaction=' + xIdTransactions + ' where ' +
          '  ct_number = ''' + CTNr + ''' and ' +
        // '  v.is_system_value <> ''1'' and   '+
          '  c.id_cd_value = v.id order by  cdv.ord asc';
      end;
      PgQuery_TransValues.SQL.Clear();
      PgQuery_TransValues.SQL.Add(xQuery);
      PgQuery_TransValues.Active := false;
      PgQuery_TransValues.Active := true;

    end;

  end;
end;

// ##########################################################################################3

procedure TOldKivosReport.cxGridDBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  xQuery: string;
  SelectedRow: Integer;
  DC: TcxGridDBDataController;
  xIdTransaction: string;
  Fct_number : string;
begin
  inherited;
  SelectedRow := -1;
  DC := cxGridDBTableView2.DataController;
  SelectedRow := DC.FocusedRecordIndex;

  if (SelectedRow >= 0) then
  begin
    xIdTransaction := VarToStr(DC.Values[SelectedRow, 8]);
     Fct_number := VarToStr(DC.Values[SelectedRow, 2]);
    xQuery := ' Select   c.* ' + ' ,  c.id_cd_transaction c_id_cd_transaction '
      + ' ,   v.multiplier  ' + ' ,   c.nr * v.multiplier as amount_base ' +
      ' ,   c.exchange_rate as change_chf  ' +
      ' ,   c.nr * v.multiplier * c.exchange_rate as amount_chf ' +
      ' ,   cat.name as category ' + ' ,   v.name as value_name  ' +
      ' ,  (select ord from tbl_transactions_values cdv where c.id_cd_value = cdv.id_value and cdv.id_transaction=c.id_cd_transaction) ord '
      + ' ,   (case when c.direction = 1 then c.amount_in ' +
      '      when c.direction = 2 then c.amount_out ' + ' end) amount ' +
      ' from tbl_cd_cash_transactions_subt_categories_values as c ' +
      ' left join tbl_values as v on c.id_cd_value = v.id left join tbl_categories as cat '
      + ' on c.id_cd_category = cat.id ' +
      ' left join tbl_cd_cash_transactions_subt as cd on cd.id = c.id_cd_sub_transaction '
      + ' left join tbl_transactions_values cdv on c.id_cd_value = cdv.id_value and '
      + ' cdv.id_transaction = c.id_cd_transaction ' +
      ' where c.id_cd_transaction = %s order by cdv.ord asc ';
    xQuery := format(xQuery, [xIdTransaction]);
    if vValues.Active then
      vValues.Close;
    vValues.SQL.Clear;
    vValues.SQL.Add(xQuery);
    vValues.Active := false;
    vValues.Active := true;

   xQuery:=' Select category_name, currency_symbol, actual_amount_fc, actual_amount,'+
          ' amount_expected_fc, amount_expected, difference, datetime '+
          ' from tbl_cd_cash_transactions_shift_values  where ct_number=''%s'''+
          ' order by id ';


  xQuery := format(xQuery, [Fct_number]);
    if vAmounts.Active then
      vAmounts.Close;
    vAmounts.SQL.Clear;
    vAmounts.SQL.Add(xQuery);
    vAmounts.Active := false;
    vAmounts.Active := true;
  end;
end;

destructor TOldKivosReport.Destroy;
begin

  inherited;
end;

procedure TOldKivosReport.Panel2Exit(Sender: TObject);
var
  xData: TDateTime;
begin
  inherited;
  xData := 0;
  xData := dateof(cxDateEdit_from.Date + 1) + (cxTimeEdit_From.Time);
  cxDateEdit_To.Date := dateof(xData);
  cxTimeEdit_To.Time := TimeOf(xData);
end;

end.
