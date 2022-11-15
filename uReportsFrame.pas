unit uReportsFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Vcl.ComCtrls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxCore, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxSpinEdit, cxTimeEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCustomData,
  cxStyles, cxTL, cxCalc, Data.DB, DBAccess, PgAccess, MemDS,
  cxInplaceContainer, cxDBTL, cxTLData, cxMemo, dxSkinscxPCPainter, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTLExportLink,
  cxGridExportLink, cxExport, frxClass, frxDBSet, cxDateUtils;

type
  TReportsFrame = class(TBaseFrame)
    PageControl1: TPageControl;
    TabSheet_CashDeskTransaction: TTabSheet;
    Panel_: TPanel;
    TabSheet_Shifts: TTabSheet;
    cxButton_Refresh: TcxButton;
    PgQuery22: TPgQuery;
    PgDataSource19: TPgDataSource;
    ScrollBox_All: TScrollBox;
    cxGrid7: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBTableView6id: TcxGridDBColumn;
    cxGridDBTableView6id_cd_sub_transaction: TcxGridDBColumn;
    cxGridDBTableView6id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView6id_cd_value: TcxGridDBColumn;
    cxGridDBTableView6id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView6id_cd_category: TcxGridDBColumn;
    cxGridDBTableView6ct_number: TcxGridDBColumn;
    cxGridDBTableView6category: TcxGridDBColumn;
    cxGridDBTableView6value: TcxGridDBColumn;
    cxGridDBTableView6nr: TcxGridDBColumn;
    cxGridDBTableView6multiplier_1: TcxGridDBColumn;
    cxGridDBTableView6amount: TcxGridDBColumn;
    cxGridDBTableView6change_chf: TcxGridDBColumn;
    cxGridDBTableView6amount_chf: TcxGridDBColumn;
    cxGridDBTableView6Column_ord: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    PgQuery12: TPgQuery;
    PgDataSource11: TPgDataSource;
    ScrollBox1: TScrollBox;
    cxButton_EksportExcel: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    cxDBTreeList_ReportsTransactions: TcxDBTreeList;
    cxDBTreeListColumn_cd_id: TcxDBTreeListColumn;
    cxDBTreeListColumn_CashName: TcxDBTreeListColumn;
    cxDBTreeListColumn_DateTime: TcxDBTreeListColumn;
    cxDBTreeListColumn_Status: TcxDBTreeListColumn;
    cxDBTreeListColumn_TransName: TcxDBTreeListColumn;
    cxDBTreeListColumn_CatName: TcxDBTreeListColumn;
    cxDBTreeListColumn_CtNumber: TcxDBTreeListColumn;
    cxDBTreeListColumn_Desciption: TcxDBTreeListColumn;
    cxDBTreeListColumn_Amount_IN: TcxDBTreeListColumn;
    cxDBTreeListColumn_Amount_Out: TcxDBTreeListColumn;
    cxDBTreeListColumn_CurrSymbol: TcxDBTreeListColumn;
    cxDBTreeListColumn_Selling: TcxDBTreeListColumn;
    cxDBTreeListColumn_CHFIn: TcxDBTreeListColumn;
    cxDBTreeListColumn_CHF_OUT: TcxDBTreeListColumn;
    cxDBTreeListColumn_Indicator: TcxDBTreeListColumn;
    cxDBTreeListColumn_trans: TcxDBTreeListColumn;
    cxDBTreeListColumn_id: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts: TcxDBTreeList;
    cxDBTreeList_ReportsShiftscxDB_id: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_id_cd_transaction: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShift_cd_cashDeskName: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_Operation: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftscxDB_User: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsData: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsCategory: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_CURR: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_CurrRate: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_Amount: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsAmountCHF: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_gamingdate: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_CtNumber: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShiftsc_baseNumber: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_Balance: TcxDBTreeListColumn;
    cxDBTreeList_ReportsShifts_Diferewnce: TcxDBTreeListColumn;
    cxButton_Print: TcxButton;
    frxReport1: TfrxReport;
    GenericQuery: TPgQuery;
    PgSQL1: TPgSQL;
    cxDBTreeList_ReportsTransactionscxDBTreeListGamingdate: TcxDBTreeListColumn;
    cxButton1: TcxButton;
    PopupMenu_Transactions: TPopupMenu;
    PopupMenu_Shifts: TPopupMenu;
    cxDBTreeList_ReportsShits_idCaskDesk: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransactionscxDB_idCashDesk: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransaction_idReport: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransactions_How_Many_Copies: TcxDBTreeListColumn;
    Print1: TMenuItem;
    Print2: TMenuItem;
    Exporttoexcel1: TMenuItem;
    Exporttoexcel2: TMenuItem;
    PopupMenu_values: TPopupMenu;
    Exporttoexcel3: TMenuItem;
    cxDBTreeList_ReportsShiftscxDB_IDNICATOR: TcxDBTreeListColumn;
    Panel1: TPanel;
    cxTimeEdit_From: TcxTimeEdit;
    cxDateEdit_from: TcxDateEdit;
    cxDateEdit_To: TcxDateEdit;
    cxTimeEdit_To: TcxTimeEdit;
    procedure cxButton_RefreshClick(Sender: TObject);
    procedure cxDBTreeList_ReportsShiftsClick(Sender: TObject);
    procedure cxButton_EksportExcelClick(Sender: TObject);
    procedure cxButton_PrintClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure Exporttoexcel2Click(Sender: TObject);
    procedure Exporttoexcel3Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
  private
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RefreshTransaction();
    procedure RefreshShifts();
    procedure PrintTransaction();
    procedure PrintShifts();
  end;

var
  ReportsFrame: TReportsFrame;

implementation

uses
  DateUtils,
  StrUtils,
  uFrmMain,
  uFrmQuestion,
  uSystem,
  uExceptions,
  uListOfCashTransactionsFrame,
  cxGridDBDataDefinitions, uReportPreview, uDataBase, uGlobals, uReportTicket,
  uExportsGrid;

{$R *.dfm}
// ##############################################################################

constructor TReportsFrame.Create(AOwner: TComponent);
var
  xData: TDateTime;
begin
  inherited;
  cxDateEdit_from.Date := dateof(now());
  xData := 0;
  xData := dateof(cxDateEdit_from.Date + 1) + (cxTimeEdit_From.Time);
  cxDateEdit_To.Date := dateof(xData);
  cxTimeEdit_To.Time := TimeOf(xData);
end;

// ##############################################################################

destructor TReportsFrame.Destroy;
begin

  inherited;
end;
// ##############################################################################

procedure TReportsFrame.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList_ReportsTransactions.Count > 0 then
  begin
    TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList_ReportsTransactions);
    cxDBTreeList_ReportsTransactions.FullCollapse;
  end;
end;
// ##############################################################################

procedure TReportsFrame.Exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList_ReportsShifts.Count > 0 then
  begin
    TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList_ReportsShifts);
    cxDBTreeList_ReportsShifts.FullCollapse;
  end;
end;

procedure TReportsFrame.Exporttoexcel3Click(Sender: TObject);
begin
  inherited;
  if cxGridDBTableView6.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid7);
  end;
end;

// ##############################################################################

procedure TReportsFrame.cxButton1Click(Sender: TObject);
var
  xObject: TReportsPrinter;
begin
  inherited;
  xObject := TReportsPrinter.Create;
  xObject.FIdReport := 2;
  xObject.FidCashDesk := 38;
  xObject.FCopies := 2;
  xObject.Fct_number := 'NORM/38/13/11/2012/328';
  xObject.PrintReport;
  xObject.Free;

end;

// ##############################################################################

procedure TReportsFrame.cxButton_EksportExcelClick(Sender: TObject);
var
  sd: TSaveDialog;
  f: string;
begin
  sd := TSaveDialog.Create(nil);
  sd.InitialDir := ExtractFilePath(Application.ExeName);
  try
    sd.Filter := 'Excel files (*.xls)|*.xls|All Files|*.*';
    if sd.Execute then
    begin
      screen.Cursor := crHourGlass;
      f := sd.FileName;
      cxExportTLToExcel(f, cxDBTreeList_ReportsTransactions, true, true);
      // ExportGridToExcel(f, cxGrid7, True, True, True);

    end;
  finally
    screen.Cursor := crDefault;
    sd.Free;
  end;
end;

// ##############################################################################

procedure TReportsFrame.cxButton_RefreshClick(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet_CashDeskTransaction then
  begin
    RefreshTransaction;
  end
  else
  begin
    RefreshShifts;
  end;
end;

// ##############################################################################

procedure TReportsFrame.Panel1Exit(Sender: TObject);
var
  xData: TDateTime;
begin
  inherited;
  xData := 0;
  xData := dateof(cxDateEdit_from.Date + 1) + (cxTimeEdit_From.Time);
  cxDateEdit_To.Date := dateof(xData);
  cxTimeEdit_To.Time := TimeOf(xData);
end;
// ##############################################################################

procedure TReportsFrame.RefreshShifts;
var
  xQuery: String;
  xQueryData, xQueryData_2: string;
  xQueryTime, xQueryTime_2: string;
begin
  xQueryData := EmptyStr;
  xQueryData_2 := EmptyStr;
  xQueryData := ' cast(cdt.DateTime as date) between  ' +
    QuotedStr(DateToStr(cxDateEdit_from.Date)) + '  and  ' +
    QuotedStr(DateToStr(cxDateEdit_To.Date));
  xQueryData_2 := ' cast(ctr.DateTime as date) between  ' +
    QuotedStr(DateToStr(cxDateEdit_from.Date)) + '  and  ' +
    QuotedStr(DateToStr(cxDateEdit_To.Date));

  xQueryTime := EmptyStr;
  if ((cxTimeEdit_From.Time <> 0) and (cxTimeEdit_To.Time <> 0)) then
  begin
    xQueryTime := ' and cast(cdt.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));
    xQueryTime_2 := ' and cast(ctr.DateTime as time) between ' +
      QuotedStr(TimeToStr(cxTimeEdit_From.Time)) + ' and ' +
      QuotedStr(TimeToStr(cxTimeEdit_To.Time));

  end
  else
  begin
    if (cxTimeEdit_From.Time <> 0) then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));

      xQueryTime_2 := ' and  cast(ctr.DateTime as time) >= ' +
        QuotedStr(TimeToStr(cxTimeEdit_From.Time));
    end
    else if cxTimeEdit_To.Time <> 0 then
    begin
      xQueryTime := ' and  cast(cdt.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));

      xQueryTime_2 := ' and  cast(ctr.DateTime as time) <=' +
        QuotedStr(TimeToStr(cxTimeEdit_To.Time));
    end;
  end;

  xQuery := ' select ' +
    ' cdt.id as id, 0 as id_cd_transaction,  cd.cd_name,cd.id as cd_id, ' +
    ' cdt.base_ct_Number, 0 as exchange_rate, cdt.ct_number, ' +
    ' cdt.difference as difference, ' +
    ' (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) ' +
    ' from  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
    ' left join tbl_values as tbval on ctv.id_cd_value = tbval.id ' +
    ' where cdt.id = ctv.id_cd_transaction)as totalamount, ' +
    ' cast(cdt.DateTime as date)  as date, ' +
    ' '''' as catName, cdt.Gaming_date, ' +
    ' case when substr(cdt.ct_number,1,2)=''OP'' then ''open'' ' +
    ' when substr(cdt.ct_number,1,2)=''CL'' then ''close'' end as operation, ' +
    ' us.first_name ||'' ''|| us.last_name as user, ' +
    ' ''CHF'' as currSymbol,  ' +
    ' case when cdt.difference < 0 then sum(cdt.difference + ' +
    ' (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) ' +
    ' from  tbl_cd_cash_transactions_subt_categories_values as ctv ' +
    ' left join tbl_values as tbval on ctv.id_cd_value = tbval.id ' +
    ' where cdt.id = ctv.id_cd_transaction))  else 0 end as balance , ' +
    ' 0 as currrate, ' + ' 0 as amountchf ' +
    ' from tbl_cd_cash_transactions cdt ' +
    ' left join tbl_cd cd on cd.id=cdt.id_cashDesk ' +
    ' left join tbl_users us on cdt.id_user=us.id ' +
    ' where   cdt.type in (1,3,5,6,7,8,9)  and ' + xQueryData + xQueryTime +
    ' group by cdt.id,cd.cd_name ,cd.id ,us.first_name,us.last_name ' +
  // --------------------------------------------------------------------------
    ' Union ' +
    ' select ctv.id,  ctv.id_cd_transaction,  '' '' as cd_name, ctr.id_cashDesk as  cd_id, '
    + ' ctv.ct_number,  ctv.exchange_rate , ctr.ct_number, ' +
    ' 0 as difference, ' + ' sum(ctv.nr * tbval.multiplier) as totalamount, ' +
    ' ctr.dateTime  as date, ' + ' cat.name as catName, ' +
    ' ctr.gaming_date as Gaming_date, ' + '  '''' as operation, ' +
    ' '''' as user, ' + ' curr.symbol as currSymbol, ' + ' 0 as balance, ' +
    ' currRate.buying as currrate, ' +
    ' sum(ctv.nr * tbval.multiplier)* currRate.buying as amountchf ' +
    ' from tbl_cd_cash_transactions_subt_categories_values as ctv ' +
    ' join tbl_cd_cash_transactions as ctr on ctr.id= ctv.id_cd_transaction ' +
    ' left join tbl_values as tbval on ctv.id_cd_value = tbval.id ' +
    ' left  join tbl_cd cd on cd.id = ctv.id_cashdesk ' +
    ' left join tbl_categories  cat on ctv.id_cd_category= cat.id ' +
    ' left join tbl_currencies curr on curr.id=tbval.id_currency ' +
    ' left join tbl_currencies_exchange_rates currRate on  currRate.id_currency=curr.id '
    + '    and  currRate.valid_from <= cast(now() as date) and ' +
    '     currRate.valid_to>= cast(now() as date) ' + ' where ' +
    ' ctr.type in (1,3,5,6,7,8,9)  and nr <> 0  and ' + xQueryData_2 +
    xQueryTime_2 +
    ' group by ctv.id, cd.cd_name, ctr.id_cashDesk ,ctv.ct_number, ' +
    ' ctv.exchange_rate ,ctr.ct_number ,ctr.difference, ctv.id_cd_transaction ,ctr.dateTime, '
    + ' cat.name,curr.symbol, ctr.id_cd_transaction ,  currRate.buying,ctr.gaming_date';

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

procedure TReportsFrame.RefreshTransaction;
var
  xQuery: string;
  xQueryData: string;
  xQueryTime: string;
begin
  inherited;
  xQueryData := EmptyStr;
  xQueryData := ' cast(cdt.DateTime as date) between  ' +
    QuotedStr(DateToStr(cxDateEdit_from.Date)) + '  and  ' +
    QuotedStr(DateToStr(cxDateEdit_To.Date));

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

  xQuery := ' select  ' + ' subt.id_cd_transaction, ' + ' subt.id, ' +
    ' '' '' ,' + ' ''---->'' as indicator,' + ' cdt.ct_number, ' + ' t.name,' +
    ' case when subt.direction = ''1'' then ''In'' else ''Out'' end,' +
    ' a1.name, a2.name, a3.name,cdt.gaming_date as gamingdate, ' +
    ' subt.amount_in, ' + ' subt.amount_out, ' +
    ' cdt.datetime,0 as trans,0 as Mp, ' +
    ' cd.cd_name as cashDeskName,cd.id as idCaskDesk, ' +
    ' t.name as transName,cdt.gaming_date, case when cdt.confirmed=1 ' +
    ' then ''accounted'' else '''' end as Status, ' +
    ' cat.name as transCatName,cdt.remarks as description, ' +
    ' curr.symbol as currSymbol, currRate.selling, t.id_currency, ' +
    ' subt.amount_in * currRate.Selling as Cchf_in, ' +
    ' subt.amount_out * currRate.Selling as Cchf_out,t.id_report, t.how_many_copies '
    + ' from ' + ' tbl_cd_cash_transactions as cdt ' +
    ' left join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number '
    + ' left join tbl_transactions as t on subt.multiple_subtransaction_id = t.id '
    + ' left join tbl_cd cd on cd.id=cdt.id_cashdesk ' +
    ' left join tbl_categories cat on t.id_category=cat.id ' +
    ' left join tbl_currencies curr on t.id_currency=curr.id ' +
    ' left join tbl_accounts  a1 on cdt.account_id_from = a1.account_id ' +
    ' left join tbl_accounts  a2 on cdt.account_id_to = a2.account_id ' +
    ' left join tbl_accounts a3 on cdt.account_id_transfer = a3.account_id ' +
    ' left join tbl_currencies_exchange_rates currRate on  currRate.id_currency=curr.id '
    + '       and  currRate.valid_from <= cast(now() as date) and ' +
    '            currRate.valid_to>= cast(now() as date) ' + ' where ' +
    '   cdt.is_multiple_cd_transaction = 1  and ' + xQueryData + xQueryTime +

    '  union  ' + '  select  0, ' + '  subt.id_cd_transaction,  ' + ' '' '', ' +
    '  cdt.ct_number as indicator, ' + '  cdt.ct_number, ' +
    '  case when cdt.is_multiple_cd_transaction = 1 then mt.name else t.name end, '
    + '  case when cdt.direction = 1 then ''In'' else ''Out'' end,  ' +
    '  a1.name, a2.name, a3.name ,cdt.gaming_date as gamingdate, ' +
    ' cdt.amount_in,  ' + ' cdt.amount_out,  ' + ' cdt.datetime, ' +
    ' cdt.id_cd_transaction as trans,   ' +
    ' cdt.is_multiple_cd_transaction as Mp,cd.cd_name as cashDeskName,cd.id as idCaskDesk, '
    + ' t.name as transName, cdt.gaming_date, case when cdt.confirmed=1 ' +
    ' then ''accounted'' else '''' end as Status,  ' +
    ' cat.name as transCatName, cdt.remarks as description,  ' +
    ' curr.symbol as currSymbol, currRate.selling , t.id_currency, ' +
    ' cdt.amount_in * currRate.Selling as Cchf_in, ' +
    ' cdt.amount_out * currRate.Selling as Cchf_out, t.id_report, t.how_many_copies '
    + ' from ' + ' tbl_cd_cash_transactions as cdt  ' +
    ' left join tbl_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_number  '
    + ' left join tbl_transactions as t on cdt.id_cd_transaction = t.id ' +
    ' left join tbl_multiple_transactions as mt on cdt.id_cd_transaction = mt.id '
    + ' left join tbl_cd cd on cd.id=cdt.id_cashdesk ' +
    ' left join tbl_categories cat on t.id_category=cat.id ' +
    ' left join tbl_currencies curr on t.id_currency=curr.id ' +
    ' left join tbl_accounts as a1 on cdt.account_id_from = a1.account_id ' +
    ' left join tbl_accounts as a2 on cdt.account_id_to = a2.account_id ' +
    ' left join tbl_accounts as a3 on cdt.account_id_transfer = a3.account_id '
    + ' left join tbl_currencies_exchange_rates currRate on  currRate.id_currency=curr.id '
    + '          and  currRate.valid_from <= cast(now() as date) and ' +
    '            currRate.valid_to>= cast(now() as date) where   ' + xQueryData
    + xQueryTime;

  if PgQuery22.Active then
    PgQuery22.Close;
  PgQuery22.SQL.Clear();
  PgQuery22.SQL.Add(xQuery);
  // try
  // PgQuery22.SQL.SaveToFile('c:\1.txt');
  // except
  // end;
  PgQuery22.Open;

end;

// ##############################################################################

procedure TReportsFrame.cxDBTreeList_ReportsShiftsClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  CTNr: string;
  IdCdSubTransaction, Indicator, CTNr2: string;
begin
  inherited;
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsTransactions.DataController;
  if Assigned(cxDBTreeList_ReportsTransactions.FocusedNode) then

    SelectedRow := cxDBTreeList_ReportsTransactions.FocusedNode.AbsoluteIndex;

  begin
    if (SelectedRow >= 0) then
    begin

      Indicator := VarToStr(DC.Values[SelectedRow, 14]);
      CTNr2 := VarToStr(DC.Values[SelectedRow, 15]);
      CTNr := VarToStr(DC.Values[SelectedRow, 6]);

      if Indicator = '---->' then
      begin

        IdCdSubTransaction := VarToStr(DC.Values[SelectedRow, 16]);

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
          + CTNr2 + 'where ' + '  c.ct_number = ''' + CTNr + ''' and ' +
          '  c.id_cd_sub_transaction = ' + IdCdSubTransaction + ' order by ' +
          ' cdv.ord asc';

        PgQuery12.SQL.Clear();
        PgQuery12.SQL.Add(xQuery);
        PgQuery12.Active := False;
        PgQuery12.Active := true;

      end
      else
      begin

        // IdCdSubTransaction := '';

        if CTNr2 = EmptyStr then
        begin

          xQuery := 'select ' + '  c.*, ' + '  v.multiplier, ' +
            '  c.nr * v.multiplier as amount, ' +
            '  c.exchange_rate as change_chf, ' +
            '  c.nr * v.multiplier * c.exchange_rate as amount_chf, ' +
            '  cat.name as category, ' + '  v.name as value ' + 'from ' +
            '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
            '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
            '  ct_number = ''' + CTNr + ''' and ' +
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
            + '  cdv.id_transaction=' + CTNr2 + ' where ' + '  ct_number = ''' +
            CTNr + ''' and ' +
          // '  v.is_system_value <> ''1'' and   '+
            '  c.id_cd_value = v.id order by  cdv.ord asc';
        end;
        PgQuery12.SQL.Clear();
        PgQuery12.SQL.Add(xQuery);
        PgQuery12.Active := False;
        PgQuery12.Active := true;

      end;

      if PgQuery12.Active then
        PgQuery12.Close();
      PgQuery12.SQL.Clear;
      PgQuery12.SQL.Add(xQuery);
      PgQuery12.Open;

    end;
  end;
end;


// ##############################################################################

procedure TReportsFrame.cxButton_PrintClick(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePage = TabSheet_CashDeskTransaction then
  begin
    PrintTransaction;
  end
  else
  begin
    PrintShifts;
  end;
end;

// ##############################################################################

procedure TReportsFrame.Print1Click(Sender: TObject);
begin
  inherited;
  PrintTransaction;
end;

procedure TReportsFrame.Print2Click(Sender: TObject);
begin
  inherited;
  PrintShifts;
end;


// ##############################################################################

procedure TReportsFrame.PrintShifts;
var
  xObject: TReportsPrinter;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
begin
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsShifts.DataController;
  if Assigned(cxDBTreeList_ReportsShifts.FocusedNode) then
    SelectedRow := cxDBTreeList_ReportsShifts.FocusedNode.AbsoluteIndex;
  begin
    if (SelectedRow >= 0) then
    begin
      xObject := TReportsPrinter.Create;
      try
        xObject.FidCashDesk := StrInt(VarToStr(DC.Values[SelectedRow, 16]));
      except
        xObject.FidCashDesk := ckeyNILL;
      end;
      xObject.Fct_number := VarToStr(DC.Values[SelectedRow, 12]);
      xObject.FIdReport := cReportBalanceShifts;
      xObject.FCopies := 1;
      if xObject.FIdReport <> 0 then
      begin
        xObject.PrintReport;
      end;
      xObject.Free;
    end;
  end;
end;


// ##############################################################################

procedure TReportsFrame.PrintTransaction;
var
  xObject: TReportsPrinter;
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  xQuery: string;
  xDataSet: TResultHandle;
  xIdreport: string;
  xHow_many_copies: string;
begin
  inherited;
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsTransactions.DataController;
  if Assigned(cxDBTreeList_ReportsTransactions.FocusedNode) then
    SelectedRow := cxDBTreeList_ReportsTransactions.FocusedNode.AbsoluteIndex;
  begin
    if (SelectedRow >= 0) then
    begin

      xObject := TReportsPrinter.Create;
      try
        xObject.FidCashDesk := StrInt(VarToStr(DC.Values[SelectedRow, 18]));
      except
        xObject.FidCashDesk := ckeyNILL;
      end;

      if VarToStr(DC.Values[SelectedRow, 14]) = '---->' then
      begin
        xQuery := 'Select  trans.id_report,trans.how_many_copies from tbl_cd_cash_transactions_subt  subt  '
          + ' join tbl_cd_cash_transactions cdt on subt.id_cd_transaction=cdt.id '
          + ' left join tbl_multiple_transactions trans on trans.id=cdt.id_cd_transaction '
          + ' where Subt.id=%s  ';
        xQuery := format(xQuery, [VarToStr(DC.Values[SelectedRow, 16])]);
        xDataSet := TResultHandle.Create;
        xDataSet.ClearResult;
        xDataSet.Add(xQuery);
        xDataSet.InvokeSQL;
        if xDataSet.Count > 0 then
        begin
          xIdreport := xDataSet.Query.FieldByName('id_report').AsString;
          xHow_many_copies := xDataSet.Query.FieldByName
            ('how_many_copies').AsString;
        end;
        xDataSet.ClearResult;
        xDataSet.Free;
      end
      else
      begin
        xQuery := ' Select type, is_multiple_cd_transaction from tbl_cd_cash_transactions where id= %s';
        xQuery := format(xQuery, [VarToStr(DC.Values[SelectedRow, 16])]);
        xDataSet := TResultHandle.Create;
        xDataSet.ClearResult;
        xDataSet.Add(xQuery);
        xDataSet.InvokeSQL;
        if xDataSet.Query.FieldByName('type').AsInteger in [1, 3, 5] then
        begin
          xIdreport := IntToStr(cReportBalanceShifts);
          xHow_many_copies := '1';
        end
        else
        begin
          if xDataSet.Query.FieldByName('is_multiple_cd_transaction')
            .AsInteger = 1 then
          begin
            xQuery := ' Select  trans.id_report,trans.how_many_copies from tbl_cd_cash_transactions cdt '
              + '  left join tbl_multiple_transactions trans on trans.id=cdt.id_cd_transaction  '
              + ' where cdt.id=%s ';
            xQuery := format(xQuery, [VarToStr(DC.Values[SelectedRow, 16])]);
            xDataSet.ClearResult;
            xDataSet.Add(xQuery);
            xDataSet.InvokeSQL;
            if xDataSet.Count > 0 then
            begin
              xIdreport := xDataSet.Query.FieldByName('id_report').AsString;
              xHow_many_copies := xDataSet.Query.FieldByName
                ('how_many_copies').AsString;
            end;
            xDataSet.ClearResult;
            xDataSet.Free;
          end
          else
          begin
            xQuery := ' Select trans.id_report,trans.how_many_copies  from tbl_cd_cash_transactions cdt '
              + ' join tbl_transactions trans on trans.id=cdt.id_cd_transaction '
              + ' where cdt.id=%s ';
            xQuery := format(xQuery, [VarToStr(DC.Values[SelectedRow, 16])]);
            xDataSet.ClearResult;
            xDataSet.Add(xQuery);
            xDataSet.InvokeSQL;
            if xDataSet.Count > 0 then
            begin
              xIdreport := xDataSet.Query.FieldByName('id_report').AsString;
              xHow_many_copies := xDataSet.Query.FieldByName
                ('how_many_copies').AsString;
            end;
            xDataSet.ClearResult;
            xDataSet.Free;
          end;
        end;
      end;
      try
        xObject.FIdReport := StrInt(xIdreport);
      except
        xObject.FIdReport := ckeyNILL;
      end;
      try
        xObject.FCopies := StrInt(xHow_many_copies);
      except
        xObject.FCopies := 1;
      end;
      if xObject.FCopies = 0 then
        xObject.FCopies := 1;

      xObject.Fct_number := VarToStr(DC.Values[SelectedRow, 6]);
      if xObject.FIdReport <> ckeyNILL then
      begin
        xObject.PrintReport;
      end;
      xObject.Free;
    end;

  end;
end;
// ##############################################################################

end.
