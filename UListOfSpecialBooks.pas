unit UListOfSpecialBooks;

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
  cxGridExportLink, cxExport, frxClass, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TListOfSpecialBooks = class(TBaseFrame)
    PageControl1: TPageControl;
    TabSheet_CashDeskTransaction: TTabSheet;
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
    btnReverseTransaction: TcxButton;
    TabSheet_Shifts: TTabSheet;
    ScrollBox1: TScrollBox;
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
    Panel_: TPanel;
    cxDateEdit_from: TcxDateEdit;
    cxTimeEdit_From: TcxTimeEdit;
    cxButton_Refresh: TcxButton;
    cxDateEdit_To: TcxDateEdit;
    cxTimeEdit_To: TcxTimeEdit;
    GenericQuery: TPgQuery;
    PgSQL1: TPgSQL;
    PgQuery22: TPgQuery;
    PgDataSource19: TPgDataSource;
    PgDataSource11: TPgDataSource;
    PgQuery12: TPgQuery;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    cxButton_SpecialBooks: TcxButton;
    PgTable1: TPgTable;
    TabSheet_Cd_Transaction: TTabSheet;
    ComboBox_Transaction: TComboBox;
    PgQuery_Execute: TPgQuery;
    Edit_CashDesk: TEdit;
    Label_Date: TLabel;
    Edit_Date: TEdit;
    Edit_status: TEdit;
    ComboBox_Category: TComboBox;
    Edit_NDoc: TEdit;
    cxDBTreeList_ReportsTransaction_Mp: TcxDBTreeListColumn;
    Memo_Description: TMemo;
    JvValidateEdit_AmountIn: TJvValidateEdit;
    ComboBox_Curr: TComboBox;
    JvValidateEdit_seling: TJvValidateEdit;
    JvValidateEdit_AmountInChf: TJvValidateEdit;
    JvValidateEdit_amountOutCHF: TJvValidateEdit;
    cxDBTreeList_ReportsTransactions_Type: TcxDBTreeListColumn;
    Label6: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PgQuery2: TPgQuery;
    ScrollBox2: TScrollBox;
    Label_Status: TLabel;
    Label_cashDesk: TLabel;
    Label_transaction: TLabel;
    Label_Category: TLabel;
    Label_Description: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label_Curr: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    cxButton_Save: TcxButton;
    cxButton_Cancel: TcxButton;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GD_main: TcxDateEdit;
    GD_acc_from: TcxDateEdit;
    GD_acc_to: TcxDateEdit;
    ComboBox_AccountFrom: TComboBox;
    ComboBox_AccountTo: TComboBox;
    Label_AccountFrom: TLabel;
    Label_AccountTo: TLabel;
    JvValidateEdit_AmountOut: TJvValidateEdit;
    cxDBTreeList_ReportsAccountFrom: TcxDBTreeListColumn;
    cxDBTreeList_ReportsAccoutTo: TcxDBTreeListColumn;
    Label_Transfer: TLabel;
    ComboBox_AccountTransfer: TComboBox;
    cxDBTreeList_ReportsAccount_transfer: TcxDBTreeListColumn;

    cxDBTreeList_ReportsTransactionscxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransactionscxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransactionscxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList_ReportsTransactionscxDBTreeListColumn4: TcxDBTreeListColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    PgQuery3: TPgQuery;
    PgDataSource2: TPgDataSource;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    StaticText1: TStaticText;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    cxGrid2DBTableView1Column10: TcxGridDBColumn;
    cxGrid2DBTableView1Column11: TcxGridDBColumn;
    PopupMenu_trans: TPopupMenu;
    PopupMenu_Hist: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    exporttoexcel2: TMenuItem;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;

    procedure btnReverseTransactionClick(Sender: TObject);
    procedure cxButton_RefreshClick(Sender: TObject);
    procedure cxDBTreeList_ReportsTransactionsClick(Sender: TObject);
    procedure cxButton_SpecialBooksClick(Sender: TObject);
    procedure cxButton_CancelClick(Sender: TObject);
    procedure cxButton_SaveClick(Sender: TObject);

    procedure TabSheet_ShiftsContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxDBTreeList_ReportsTransactionsCustomDrawDataCell
      (Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure exporttoexcel2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);

  private
    FCtNumber: string; // Modification transaction
    FId_cd_Transaction: string; // Modification transaction
    FId_cd_Trancation_Hist: string; // New historical sign
    procedure PrepareListOfTransactions(AcashDesk: integer;
      AMultipleTransaction: Boolean);
    procedure PrepareEditsValues;
    procedure PrepareCategories;
    procedure PreparePanel_Upper(Avisible: Boolean);
    procedure PrepareCurr;
    procedure PrepareAccount;
    procedure OnChange_AmountIn(Asender: TObject);
    procedure OnChange_AmountOut(Asender: TObject);

    function SignOldValues(AidMainTransaction: string): Boolean;
    function SignNewValues(AidMainTransaction: string): Boolean;
    function DeleteHistAfterCancel: Boolean;
    function RestoreValues: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RefreshTransaction;
    function GetNextCashTransactionNumber(): integer;

  end;

var
  ListOfSpecialBooks: TListOfSpecialBooks;

implementation

uses uFrmMain, StrUtils, uSystem, DateUtils, uGlobals, Udatabase, uExportsGrid;
{$R *.dfm}
// ##############################################################################
{ TListOfSpecialBooks }
// ##############################################################################

procedure TListOfSpecialBooks.btnReverseTransactionClick(Sender: TObject);
var
  SelectedRow: integer;
  TypeId, CashDesk, Direction: integer;
  CTNr, NewCTNr, Confirms: WideString;
  Reversed, Confirmed: Boolean;
  dYear, dMonth, dDay: Word;
  DC: TcxDBTreeListDataController;
begin

  DC := cxDBTreeList_ReportsTransactions.DataController;

  if cxDBTreeList_ReportsTransactions.FocusedNode <> nil then
  begin

    SelectedRow := cxDBTreeList_ReportsTransactions.FocusedNode.AbsoluteIndex;
    if (SelectedRow >= 0) then
    begin
      if Question
        ('You are about to reverse confirmed transaction - are you sure ?') then
      begin

        CTNr := VarToStr(DC.Values[SelectedRow, 6]);

        TypeId := StrToInt
          (frmMain.GetFieldAsString
          ('select type from tbl_cd_cash_transactions where ct_number = ''' +
          CTNr + '''', 'type'));

        CashDesk :=
          StrToInt(frmMain.GetFieldAsString
          ('select id from tbl_cd where cd_name = ''' +
          VarToStr(DC.Values[SelectedRow, 1]) + '''', 'id'));

        frmMain.InitializeShifts();

        DecodeDate(Now(), dYear, dMonth, dDay);
        NewCTNr := frmMain.ShiftInfo[TypeId].Mnemonic + '/' + IntToStr(CashDesk)
          + '/' + IntToStr(dDay) + '/' + IntToStr(dMonth) + '/' +
          IntToStr(dYear) + '/' + IntToStr(GetNextCashTransactionNumber());

        Direction :=
          StrToInt(frmMain.GetFieldAsString
          ('select direction from tbl_cd_cash_transactions where ct_number = '''
          + CTNr + '''', 'direction'));

        Confirms := '';
        Reversed := True;
        Confirmed := True;

        frmMain.CopyTransaction(CTNr, NewCTNr, TypeId, CashDesk, Direction,
          Confirms, Reversed, Confirmed);

        frmMain.Refresh(PgQuery22);

      end;

    end;
  end;
end;

// ##############################################################################

constructor TListOfSpecialBooks.Create(AOwner: TComponent);
begin
  inherited;
  cxDateEdit_from.Date := dateof(Now());
  cxDateEdit_To.Date := dateof(Now());
  PageControl1.ActivePage := TabSheet_CashDeskTransaction;
  JvValidateEdit_AmountIn.Onexit := OnChange_AmountIn;
  JvValidateEdit_AmountOut.Onexit := OnChange_AmountOut;
  FId_cd_Transaction := EmptyStr;
  FCtNumber := EmptyStr;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
  exporttoexcel2.Caption := cPopMenu_eksport_toExcel;
  MenuItem1.Caption:= cPopMenu_eksport_toExcel;
end;

// ##############################################################################

procedure TListOfSpecialBooks.cxButton_CancelClick(Sender: TObject);
var
  xOk: Boolean;
begin
  inherited;
  PgQuery_Execute.Connection.StartTransaction;
  xOk := RestoreValues;
  if xOk then
    xOk := DeleteHistAfterCancel;
  if xOk then
  begin
    PgQuery_Execute.Connection.Commit;
    PgQuery22.Refresh();
    PgQuery12.Refresh();
  end
  else
  begin
    PgQuery_Execute.Connection.Rollback;
  end;
  if xOk then
  begin
    PreparePanel_Upper(True);
    PageControl1.ActivePage := TabSheet_CashDeskTransaction;
  end
  else
  begin
    // Komunikat
  end;
end;

// ##############################################################################

procedure TListOfSpecialBooks.cxButton_RefreshClick(Sender: TObject);
begin
  inherited;
  RefreshTransaction;
end;

// ##############################################################################

procedure TListOfSpecialBooks.cxDBTreeList_ReportsTransactionsClick
  (Sender: TObject);
var
  xQuery: string;
  SelectedRow: integer;
  DC: TcxDBTreeListDataController;
  CTNr: string;

  IdCdSubTransaction, Indicator, CTNr2, ishistory: string;

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

      ishistory := VarToStr(DC.Values[SelectedRow, 25]);

      if  ishistory= '1' then
      begin
      cxGrid2.Visible := true;
             xQuery := ' Select *,acc.name,acc1.name from tbl_cd_cash_transactions_hist cc '+
             'left join tbl_accounts acc on  acc.account_id = cc.account_id_from '+
             'left join tbl_accounts acc1 on  acc1.account_id = cc.account_id_to '+
          'where ' + '  cc.ct_number = ' + QuotedStr(CTNr) ;

        PgQuery3.SQL.Clear();
        PgQuery3.SQL.Add(xQuery);
        PgQuery3.Active := False;
        PgQuery3.Active := True;
      end
      else
      begin
      cxGrid2.Visible := false
      end;



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
        PgQuery12.Active := True;

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
        PgQuery12.Active := True;

      end;

      if PgQuery12.Active then
        PgQuery12.Close();
      PgQuery12.SQL.Clear;
      PgQuery12.SQL.Add(xQuery);
      PgQuery12.Open;

    end;
  end;
end;


procedure TListOfSpecialBooks.cxDBTreeList_ReportsTransactionsCustomDrawDataCell(
  Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  inherited;
//if AViewInfo.da  then
//begin
//  ACanvas.Brush.Color := clSkyBlue;
//end;

end;


// ##############################################################################

destructor TListOfSpecialBooks.Destroy;
var
  i: integer;
begin
  for i := 0 to ComboBox_Transaction.Items.Count - 1 do
  begin
    ComboBox_Transaction.Items.Objects[i].Free;
  end;
  for i := 0 to ComboBox_Curr.Items.Count - 1 do
  begin
    ComboBox_Curr.Items.Objects[i].Free;
  end;
  for i := 0 to ComboBox_Category.Items.Count - 1 do
  begin
    ComboBox_Category.Items.Objects[i].Free;
  end;
  inherited;
end;

procedure TListOfSpecialBooks.Exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList_ReportsTransactions.Count > 0 then
  begin
    TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList_ReportsTransactions);
  end;
end;

procedure TListOfSpecialBooks.exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxGrid2DBTableView1.ViewData.RecordCount>0 then begin
    TExportsGrid.ExportsGridToExcel(cxGrid2);
  end;
end;

// ##############################################################################

function TListOfSpecialBooks.GetNextCashTransactionNumber: integer;
var
  QueryStr, MaxId, TempNo: String;
  i, j: integer;
begin

  // WARNING:
  // Problem pojawia³ siê w przypadku Reversed transaction,
  // gdy wczeœniejsza data by³a PO póŸniejszej

  {
    'where id in ' +
    '(  ' +
    '  select id from tbl_cd_cash_transactions ' +
    '  where datetime in ' +
    '  (' +
    '    select max(datetime) from tbl_cd_cash_transactions' +
    '  ) ' +
    '  order by id desc limit 1' +
    ') ',
  }

  MaxId := frmMain.GetFieldAsString('select max(id) as max_id ' +
    'from tbl_cd_cash_transactions', 'max_id');

  TempNo := frmMain.GetFieldAsString('select ct_number ' +
    'from tbl_cd_cash_transactions ' + 'where id = ' + MaxId, 'ct_number');

  if TempNo = '' then
  begin
    Information('Warning',
      'Empty [ct_number] in TListOfSpecialBooks.GetNextCashTransactionNumber()');
    Result := 1;
  end
  else
  begin
    i := Pos('/', TempNo);
    j := PosEx('/', TempNo, i + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    Result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;

end;

procedure TListOfSpecialBooks.MenuItem1Click(Sender: TObject);
begin
  inherited;
 if cxGridDBTableView6.ViewData.RecordCount>0 then begin
  TExportsGrid.ExportsGridToExcel(cxGrid7);
 end;
end;

// ##############################################################################
procedure TListOfSpecialBooks.OnChange_AmountIn(Asender: TObject);
begin
  try
    JvValidateEdit_AmountInChf.value :=
      (JvValidateEdit_AmountIn.value * JvValidateEdit_seling.value);
  except
    JvValidateEdit_AmountInChf.value := 0;
  end;
end;

// ##############################################################################
procedure TListOfSpecialBooks.OnChange_AmountOut(Asender: TObject);
begin
  try
    JvValidateEdit_amountOutCHF.value :=
      (JvValidateEdit_AmountOut.value * JvValidateEdit_seling.value);
  except
    JvValidateEdit_amountOutCHF.value := 0;
  end;
end;

// ##############################################################################

procedure TListOfSpecialBooks.PrepareListOfTransactions(AcashDesk: integer;
  AMultipleTransaction: Boolean);
var
  xQuery: string;
  i: integer;
  xId: Tid;
begin

  if AMultipleTransaction = False then
  begin
    xQuery := ' select * from (  ' +
      ' select cdt.id_transaction, t.name  from tbl_cd_transactions as cdt ' +
      ' left join tbl_transactions as t on cdt.id_transaction = t.id ' +
      ' where   cdt.id_cashdesk =%s ' + ' ) as t order by id_transaction asc ';
  end
  else
  begin
    xQuery := ' Select trans.id as id_transaction , trans.name from tbl_cd_multiple_transactions mp '
      + ' left join tbl_multiple_transactions as t on t.id= mp.id_multiple_transaction '
      + ' left join tbl_multiple_transactions_transactions tt on tt.id_multiple_transaction=mp.id_multiple_transaction '
      + ' left join tbl_transactions trans on trans.id=tt.id_Transaction ' +
      ' where id_cashDesk=%s ' +
      ' group by trans.id, trans.name  order by trans.name';

  end;
  xQuery := Format(xQuery, [IntToStr(AcashDesk)]);
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close();
  PgQuery_Execute.SQL.Clear();
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  PgQuery_Execute.First;

  ComboBox_Transaction.Items.BeginUpdate;
  ComboBox_Transaction.Items.Clear;
  for i := 0 to ComboBox_Transaction.Items.Count - 1 do
  begin
    ComboBox_Transaction.Items.Objects[i].Free;
  end;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    xId.id := PgQuery_Execute.FieldByName('id_transaction').AsInteger;
    ComboBox_Transaction.Items.AddObject(PgQuery_Execute.FieldByName('Name')
      .AsString, xId);
    PgQuery_Execute.next;
  end;
  ComboBox_Transaction.Items.EndUpdate;
  if ComboBox_Transaction.Items.Count > 0 then
  begin
    ComboBox_Transaction.Visible := True;
    Label_transaction.Visible := True;
  end
  else
  begin
    ComboBox_Transaction.Visible := False;
    Label_transaction.Visible := False;
  end;
end;

// #############################################################################

procedure TListOfSpecialBooks.PreparePanel_Upper(Avisible: Boolean);
begin
  cxDateEdit_from.Visible := Avisible;
  cxTimeEdit_From.Visible := Avisible;
  cxDateEdit_To.Visible := Avisible;
  cxTimeEdit_To.Visible := Avisible;
  cxButton_Refresh.Visible := Avisible;
end;


// ##############################################################################

procedure TListOfSpecialBooks.RefreshTransaction;
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
    ' a1.name, a2.name, a3.name, ' + ' subt.amount_in, ' + ' subt.amount_out, '
    + ' cdt.datetime,0 as trans,0 as Mp, ' + ' cd.cd_name as cashDeskName, ' +
    ' t.name as transName,cdt.gaming_date, case when cdt.confirmed=1 ' +
    ' then ''accounted'' else '''' end as Status, ' +
    ' cat.name as transCatName,cdt.remarks as description, ' +
    ' curr.symbol as currSymbol, currRate.selling, t.id_currency, ' +
    ' subt.amount_in * currRate.Selling as Cchf_in, ' +
    ' subt.amount_out * currRate.Selling as Cchf_out, cdt.type, cdt.account_id_from, cdt.account_id_to,cdt.account_id_transfer,cdt.is_modyfied '
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
    '  a1.name, a2.name, a3.name , ' + ' cdt.amount_in,  ' +
    ' cdt.amount_out,  ' + ' cdt.datetime, ' +
    ' cdt.id_cd_transaction as trans,   ' +
    ' cdt.is_multiple_cd_transaction as Mp,cd.cd_name as cashDeskName,  ' +
    ' t.name as transName, cdt.gaming_date, case when cdt.confirmed=1 ' +
    ' then ''accounted'' else '''' end as Status,  ' +
    ' cat.name as transCatName, cdt.remarks as description,  ' +
    ' curr.symbol as currSymbol, currRate.selling , t.id_currency, ' +
    ' cdt.amount_in * currRate.Selling as Cchf_in, ' +
    ' cdt.amount_out * currRate.Selling as Cchf_out, cdt.type,cdt.account_id_from, cdt.account_id_to,cdt.account_id_transfer,cdt.is_modyfied '
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




// #############################################################################

function TListOfSpecialBooks.SignNewValues(AidMainTransaction: string): Boolean;
var
  xQuery: string;
  xIdTransaction: string;
  xId: Tid;
  xId_AccountFrom: string;
  xId_AccountTo: string;
  xId_AccountTransfer: string;

  procedure ClearQuery;
  begin
    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear;
  end;

begin
  Result := True;
  xId := nil;
  xIdTransaction := EmptyStr;
  xId_AccountFrom := EmptyStr;
  xId_AccountTo := EmptyStr;
  xId_AccountTransfer := EmptyStr;

  if ComboBox_Transaction.ItemIndex <> -1 then
  begin
    xId := Tid(ComboBox_Transaction.Items.Objects
      [ComboBox_Transaction.ItemIndex]);
  end;
  if Assigned(xId) then
  begin
    xIdTransaction := IntToStr(xId.id);
  end
  else
  begin
    xIdTransaction := 'NULL';
  end;

  xId := nil;

  if ComboBox_AccountFrom.ItemIndex <> -1 then
  begin
    xId := Tid(ComboBox_AccountFrom.Items.Objects
      [ComboBox_AccountFrom.ItemIndex]);
  end;
  if Assigned(xId) then
  begin
    xId_AccountFrom := IntToStr(xId.id);
  end
  else
  begin
    xId_AccountFrom := 'NULL';
  end;

  xId := nil;

  if ComboBox_AccountTo.ItemIndex <> -1 then
  begin
    xId := Tid(ComboBox_AccountTo.Items.Objects[ComboBox_AccountTo.ItemIndex]);
  end;
  if Assigned(xId) then
  begin
    xId_AccountTo := IntToStr(xId.id);
  end
  else
  begin
    xId_AccountTo := 'NULL';
  end;

  xId := nil;

  if ComboBox_AccountTransfer.ItemIndex <> -1 then
  begin
    xId := Tid(ComboBox_AccountTransfer.Items.Objects
      [ComboBox_AccountTransfer.ItemIndex]);
  end;
  if Assigned(xId) then
  begin
    xId_AccountTransfer := IntToStr(xId.id);
  end
  else
  begin
    xId_AccountTransfer := 'NULL';
  end;

  if GD_acc_from.Text = '' then  begin  GD_acc_from.Text :='1900-01-01 ' end ;
  if GD_acc_to.Text = '' then  begin  GD_acc_to.Text :='1900-01-01 'end ;



  xQuery := 'Update tbl_cd_cash_transactions Set id_cd_transaction =' +
    xIdTransaction + ',' + ' amount_in=' +
    FloatStr(JvValidateEdit_AmountIn.value) + ',' + ' amount_out=' +
    FloatStr(JvValidateEdit_AmountOut.value) + ' ,' + ' remarks=' +
    QuotedStr(Memo_Description.Text) + ',' + 'gaming_date=' +
    QuotedStr(GD_main.Text) + ',' + 'acc_from_gd=' + QuotedStr(GD_acc_from.Text)
    + ',' + 'acc_to_gd=' + QuotedStr(GD_acc_to.Text) + ',' + ' account_id_from='
    + xId_AccountFrom + ',' + ' account_id_to=' + xId_AccountTo + ',' +

    ' account_id_transfer=' + xId_AccountTransfer +','+ 'is_modyfied =1  where id=' +
    AidMainTransaction;


  ClearQuery;
  PgQuery_Execute.SQL.Add(xQuery);
  try
    PgQuery_Execute.Execute;
  except
    Result := False;
  end;
end;

// #############################################################################

function TListOfSpecialBooks.SignOldValues(AidMainTransaction: string): Boolean;
var
  xQuery: string;
  xIdUSer: string;
  xIdCashDesk: string;
  xId_Sub_transactions: string;
  // xId_Hist: string;
  procedure ClearQuery;
  begin
    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear;
  end;

begin
  Result := True;
  xIdUSer := frmMain.GetFieldAsString('select id  ' + ' from tbl_users ' +
    'where  user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  xIdCashDesk := frmMain.GetFieldAsString
    (' Select id_cashDesk from tbl_cd_cash_transactions where id=' +
    AidMainTransaction, 'id_cashDesk');

  ClearQuery;

  { confirmation_id_user_controller
    user_explanation
    modification_datetime
    modification_client_name
    modification_user_name
    modification_id_user }

  xQuery := 'Insert into tbl_cd_cash_transactions_Hist(id_cashdesk, confirmed, confirmation_id_user,id_user, '
    + ' type, datetime, ct_number, is_multiple_cd_transaction, direction, base_ct_number, remarks, amount_in, '
    + ' amount_out, account_id_from, account_id_to, account_id_transfer, difference, copied_from_ct_number, '
    + ' confirmed_from_other_transaction,  confirms, gaming_date, allow_change_gd, main_transaction_gd, '
    + ' account_from_gd, account_to_gd,  acc_from_gd, acc_to_gd, id_category_diff_s, explanation_supervisor, '
    + ' Id_cd_cash_transactions_hist, Date_Hist,  User_hist, confirmation_id_user_controller,user_explanation, '
    + ' modification_datetime,modification_client_name,modification_user_name, modification_id_user) '
    +
  // --
    ' Select id_cashdesk, confirmed, confirmation_id_user,id_user, ' +
    ' type, datetime, ct_number, is_multiple_cd_transaction, direction, base_ct_number, remarks, amount_in, '
    + ' amount_out, account_id_from, account_id_to, account_id_transfer, difference, copied_from_ct_number, '
    + ' confirmed_from_other_transaction,  confirms, gaming_date, allow_change_gd, main_transaction_gd, '
    + ' account_from_gd, account_to_gd,  acc_from_gd, acc_to_gd, id_category_diff_s, explanation_supervisor '
    + ' ,' + AidMainTransaction + ',' + QuotedStr(DateTimeToStr(Now)) + ',' +

    xIdUSer + ' , confirmation_id_user_controller, user_explanation, now(), id_user '
    + ' , '''', 0 ' +
    ' from  tbl_cd_cash_transactions where id=' + AidMainTransaction;


  PgQuery_Execute.SQL.Add(xQuery);
  try
    PgQuery_Execute.Execute;
  except
    Result := False;
  end;
  if Result then
  begin
    FId_cd_Trancation_Hist := frmMain.GetFieldAsString
      ('Select max(id) as id from tbl_cd_cash_transactions_Hist', 'id');
  end;

  { account_from character varying,
    account_to character varying,
    id_account_from integer,
    id_account_to integer,
    modification_datetime timestamp with time zone,
    modification_client_name character varying,
    modification_id_user integer,
    modification_user_name character varying, }

  if Result then
  begin
    ClearQuery;
    xQuery := ' Insert into  tbl_cd_cash_transactions_subt_hist( id_cd_transaction, id_cashdesk ,ct_number, '
      + ' multiple_subtransaction_id, amount_in,  amount_out,  direction,  id_cd_cash_transactions_subt_hist,'
      + ' account_from, account_to, id_account_from, id_account_to, modification_datetime, modification_client_name,'
      + ' modification_id_user, modification_user_name  ) ' +

      ' Select id_cd_transaction, id_cashdesk,ct_number, ' +
      ' multiple_subtransaction_id, amount_in,  amount_out,  direction, ' +
      FId_cd_Trancation_Hist +
      ' ,account_from, account_to, id_account_from, id_account_to, now(), '''','
      + ' 0, '''' ' +
      ' from tbl_cd_cash_transactions_subt where   id_cd_transaction=' +
      AidMainTransaction + ' and   id_cashdesk=' + xIdCashDesk;

    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
    except
      Result := False;
    end;
  end;

  {
    modification_datetime timestamp with time zone,
    modification_client_name character varying,
    modification_id_user integer,
    modification_user_name character varying,
  }
  if Result then
  begin
    ClearQuery;
    xQuery := 'Insert into tbl_cd_cash_transactions_subt_categories_Hist( id_cashdesk, '
      + ' id_cd_transaction, id_cd_category, ct_number , id_cd_sub_transaction,nr,  '
      + ' id_cd_cash_transactions_subt_categories_Hist, modification_datetime, modification_client_name,  '
      + ' modification_id_user,modification_user_name) ' +
      ' Select id_cashdesk, id_cd_transaction, id_cd_category, ct_number , id_cd_sub_transaction,nr, '

      + FId_cd_Trancation_Hist +
      ',now(),'''',0,''''  '
      + ' from tbl_cd_cash_transactions_subt_categories ' +

      ' where  id_cd_transaction=' + AidMainTransaction + ' and  id_cashdesk=' +
      xIdCashDesk;

    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
    except
      Result := False;
    end;
  end;

  { direction integer,
    multiplier double precision,
    last_shift_datetime timestamp with time zone,
    goes_into_amount_expected character varying,
    datetime timestamp with time zone,
    category_name character varying,
    currency_symbol character varying,
    id_cd_transactionccr integer,
    id_transaction integer,
    modification_datetime timestamp with time zone,
    modification_client_name character varying,
    modification_id_user integer,
    modification_user_name character varying,
  }

  if Result then
  begin
    xId_Sub_transactions := frmMain.GetFieldAsString
      ('Select id_cd_sub_transaction from tbl_cd_cash_transactions_subt_categories'
      + ' where id_cd_transaction=' + AidMainTransaction + ' and  id_cashdesk='
      + xIdCashDesk, 'id_cd_sub_transaction');

    ClearQuery;
    xQuery := 'Insert into tbl_cd_cash_transactions_subt_categories_values_Hist('
      + ' id_cd_sub_transaction, id_cd_transaction,  id_cd_value, id_cashdesk , count, amount_in,'
      + ' amount_out, id_cd_category, ct_number, nr, exchange_rate,  id_cd_cash_transactions_subt_categories_values_Hist,'
      + ' direction,multiplier, last_shift_datetime, goes_into_amount_expected, datetime,category_name,currency_symbol,'
      + ' id_cd_transactionccr,id_transaction, modification_datetime,modification_client_name, modification_id_user,'
      + ' modification_user_name    ) ' +
      ' Select id_cd_sub_transaction, id_cd_transaction,  id_cd_value, id_cashdesk , count, amount_in, '
      + ' amount_out, id_cd_category, ct_number, nr, exchange_rate, ' +
      StringToDataBase(FId_cd_Trancation_Hist) +
      ' , direction, multiplier, last_shift_datetime, goes_into_amount_expected, datetime, category_name,  currency_symbol,'

      + ' id_cd_transactionccr, id_transaction ,now(), '''', 0,'
      + ' '''' ' +

      ' from tbl_cd_cash_transactions_subt_categories_values where ' +
      ' id_cd_transaction=' + StringToDataBase(AidMainTransaction) +
      ' and id_cashdesk=' + xIdCashDesk + ' and id_cd_sub_transaction=' +
      StringToDataBase(xId_Sub_transactions);
    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
    except
      Result := False;
    end;
  end;
end;

procedure TListOfSpecialBooks.TabSheet_ShiftsContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;

end;

// ##############################################################################
// tbl_cd_cash_transactions
// tbl_cd_cash_transactions_subt
// tbl_cd_cash_transactions_subt_categories
// tbl_cd_cash_transactions_subt_categories_values

procedure TListOfSpecialBooks.cxButton_SaveClick(Sender: TObject);
var
  xId_cd_Transaction: string;
  xOk: Boolean;
begin
  inherited;
  PreparePanel_Upper(True);
  if trim(FCtNumber) <> '' then
  begin
    xOk := True;
    xId_cd_Transaction := frmMain.GetFieldAsString
      ('select id from tbl_cd_cash_transactions  where ct_number = ''' +
      FCtNumber + '''', 'id');
    PgQuery_Execute.Connection.StartTransaction;
    xOk := SignOldValues(xId_cd_Transaction);
    if xOk then
    begin
      xOk := SignNewValues(xId_cd_Transaction);
    end;
    if xOk then
    begin
      PgQuery_Execute.Connection.Commit;
      PgQuery22.Refresh();
      PgQuery12.Refresh();
      PreparePanel_Upper(True);
      PageControl1.ActivePage := TabSheet_CashDeskTransaction;
    end
    else
    begin
      PgQuery_Execute.Connection.Rollback;
    end;
  end;
end;

// ##############################################################################

procedure TListOfSpecialBooks.cxButton_SpecialBooksClick(Sender: TObject);
var
  xQuery: string;
  SelectedRow: integer;
  DC: TcxDBTreeListDataController;
  CTNr: string;
  IdCdSubTransaction, CTNr2: string;
  CashDesk: integer;
  Indicator: string;
  xType: string;
begin
  inherited;
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsTransactions.DataController;
  if Assigned(cxDBTreeList_ReportsTransactions.FocusedNode) then
    SelectedRow := cxDBTreeList_ReportsTransactions.FocusedNode.AbsoluteIndex;
  begin
    if (SelectedRow >= 0) then
    begin

      FCtNumber := VarToStr(DC.Values[SelectedRow, 6]);
      FId_cd_Transaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions  where ct_number = ''' +
        FCtNumber + '''', 'id');

      if ((trim(FCtNumber) <> EmptyStr) and (FId_cd_Transaction <> EmptyStr))
      then
      begin
        CashDesk :=
          StrToInt(frmMain.GetFieldAsString
          ('select id from tbl_cd where cd_name = ''' +
          VarToStr(DC.Values[SelectedRow, 1]) + '''', 'id'));
        Indicator := VarToStr(DC.Values[SelectedRow, 14]);

        xType := VarToStr(DC.Values[SelectedRow, 18]);
        {
          PgQuery_Execute.Connection.StartTransaction;
          if SignOldValues(FId_cd_Transaction) then
          begin
          PgQuery_Execute.Connection.Commit;
          end
          else
          begin
          PgQuery_Execute.Connection.Rollback;
          end;
        }

        if ((VarToStr(DC.Values[SelectedRow, 17]) = '0') and (xType <> '1') and
          (xType <> '3')) then
        begin
          PrepareListOfTransactions(CashDesk, trim(Indicator) = '---->');
          PrepareCategories();
          PrepareCurr;
          PrepareAccount();
        end
        else
        begin
          ComboBox_Transaction.Visible := False;
          Label_transaction.Visible := False;
          ComboBox_Category.Visible := False;
          Label_Category.Visible := False;
          ComboBox_Curr.Visible := False;
          Label_Curr.Visible := False;
        end;
        PrepareEditsValues();
        PreparePanel_Upper(False);
        PageControl1.ActivePage := TabSheet_Cd_Transaction;
      end;
    end;
  end;
end;
// ##############################################################################

procedure TListOfSpecialBooks.PrepareAccount;
var
  xQuery: string;
  i: integer;
  xId: Tid;
begin
  xQuery := ' Select account_id as id , name from tbl_accounts order by id  ';
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close();
  PgQuery_Execute.SQL.Clear();
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  PgQuery_Execute.First;

  ComboBox_AccountFrom.Items.BeginUpdate;
  ComboBox_AccountTo.Items.BeginUpdate;
  ComboBox_AccountTransfer.Items.BeginUpdate;
  ComboBox_AccountFrom.Items.Clear;
  ComboBox_AccountTo.Items.Clear;
  ComboBox_AccountTransfer.Items.Clear;

  for i := 0 to ComboBox_AccountFrom.Items.Count - 1 do
  begin
    ComboBox_AccountFrom.Items.Objects[i].Free;
  end;

  for i := 0 to ComboBox_AccountTo.Items.Count - 1 do
  begin
    ComboBox_AccountTo.Items.Objects[i].Free;
  end;

  for i := 0 to ComboBox_AccountTransfer.Items.Count - 1 do
  begin
    ComboBox_AccountTransfer.Items.Objects[i].Free;
  end;

  PgQuery_Execute.First;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    try
      xId.id := StrToInt(PgQuery_Execute.FieldByName('id').AsString);
    except
      xId.id := ckeyNILL;
    end;
    ComboBox_AccountFrom.Items.AddObject(PgQuery_Execute.FieldByName('name')
      .AsString, xId);
    PgQuery_Execute.next;
  end;

  PgQuery_Execute.First;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    try
      xId.id := StrToInt(PgQuery_Execute.FieldByName('id').AsString);
    except
      xId.id := ckeyNILL;
    end;
    ComboBox_AccountTo.Items.AddObject(PgQuery_Execute.FieldByName('name')
      .AsString, xId);
    PgQuery_Execute.next;
  end;

  PgQuery_Execute.First;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    try
      xId.id := StrToInt(PgQuery_Execute.FieldByName('id').AsString);
    except
      xId.id := ckeyNILL;
    end;
    ComboBox_AccountTransfer.Items.AddObject(PgQuery_Execute.FieldByName('name')
      .AsString, xId);
    PgQuery_Execute.next;
  end;

  ComboBox_AccountFrom.Items.EndUpdate;
  ComboBox_AccountTo.Items.EndUpdate;
  ComboBox_AccountTransfer.Items.EndUpdate;

  if ComboBox_AccountFrom.Items.Count > 0 then
  begin
    ComboBox_AccountFrom.Visible := True;
    Label_AccountFrom.Visible := True;
  end
  else
  begin
    ComboBox_AccountFrom.Visible := False;
    Label_AccountFrom.Visible := False;
  end;

  if ComboBox_AccountTo.Items.Count > 0 then
  begin
    ComboBox_AccountTo.Visible := True;
    Label_AccountTo.Visible := True;
  end
  else
  begin
    ComboBox_AccountTo.Visible := False;
    Label_AccountTo.Visible := False;
  end;

  if ComboBox_AccountTransfer.Items.Count > 0 then
  begin
    ComboBox_AccountTransfer.Visible := True;
    Label_Transfer.Visible := True;
  end
  else
  begin
    ComboBox_AccountTransfer.Visible := False;
    Label_Transfer.Visible := False;
  end;

end;

// ##############################################################################

procedure TListOfSpecialBooks.PrepareCategories;
var
  xQuery: string;
  i: integer;
  xId: Tid;
begin
  xQuery := ' Select id,name from tbl_categories order by name ';
  if PgQuery_Execute.Active then
    PgQuery_Execute.Close();
  PgQuery_Execute.SQL.Clear();
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  PgQuery_Execute.First;

  ComboBox_Category.Items.BeginUpdate;
  ComboBox_Category.Items.Clear;
  for i := 0 to ComboBox_Category.Items.Count - 1 do
  begin
    ComboBox_Category.Items.Objects[i].Free;
  end;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    xId.id := PgQuery_Execute.FieldByName('id').AsInteger;
    ComboBox_Category.Items.AddObject(PgQuery_Execute.FieldByName('Name')
      .AsString, xId);
    PgQuery_Execute.next;
  end;
  ComboBox_Category.Items.EndUpdate;
  if ComboBox_Category.Items.Count > 0 then
  begin
    ComboBox_Category.Visible := True;
    Label_Category.Visible := True;
  end
  else
  begin
    ComboBox_Category.Visible := False;
    Label_Category.Visible := False;
  end;
end;


// ##############################################################################

procedure TListOfSpecialBooks.PrepareCurr;
var
  xQuery: string;
  i: integer;
  xId: Tid;
begin
  xQuery := ' Select id, symbol from tbl_currencies order by symbol ';

  if PgQuery_Execute.Active then
    PgQuery_Execute.Close();
  PgQuery_Execute.SQL.Clear();
  PgQuery_Execute.SQL.Add(xQuery);
  PgQuery_Execute.Open;
  PgQuery_Execute.First;

  ComboBox_Curr.Items.BeginUpdate;
  ComboBox_Curr.Items.Clear;
  for i := 0 to ComboBox_Curr.Items.Count - 1 do
  begin
    ComboBox_Curr.Items.Objects[i].Free;
  end;

  for i := 0 to PgQuery_Execute.RecordCount - 1 do
  begin
    xId := Tid.Create;
    xId.index := i;
    xId.id := PgQuery_Execute.FieldByName('id').AsInteger;
    ComboBox_Curr.Items.AddObject(PgQuery_Execute.FieldByName('Symbol')
      .AsString, xId);
    PgQuery_Execute.next;
  end;
  ComboBox_Curr.Items.EndUpdate;
  if ComboBox_Curr.Items.Count > 0 then
  begin
    ComboBox_Curr.Visible := True;
    Label_Curr.Visible := True;
  end
  else
  begin
    ComboBox_Curr.Visible := False;
    Label_Curr.Visible := False;
  end;
end;

// ##############################################################################

procedure TListOfSpecialBooks.PrepareEditsValues;

var
  xQuery: string;
  SelectedRow: integer;
  DC: TcxDBTreeListDataController;
  xTemp: string;
  xId: Tid;
  i: integer;
begin
  SelectedRow := -1;
  DC := cxDBTreeList_ReportsTransactions.DataController;
  if Assigned(cxDBTreeList_ReportsTransactions.FocusedNode) then
    SelectedRow := cxDBTreeList_ReportsTransactions.FocusedNode.AbsoluteIndex;
  begin
    if (SelectedRow >= 0) then
    begin
      xTemp := VarToStr(DC.Values[SelectedRow, 1]); // CashDesk name
      Edit_CashDesk.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 2]); // Data
      Edit_Date.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 3]); // Status
      Edit_status.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 4]); // Trans Name
      ComboBox_Transaction.ItemIndex :=
        ComboBox_Transaction.Items.IndexOf(xTemp);
      xTemp := VarToStr(DC.Values[SelectedRow, 5]); // Category Name
      ComboBox_Category.ItemIndex := ComboBox_Category.Items.IndexOf(xTemp);
      xTemp := VarToStr(DC.Values[SelectedRow, 6]); // Ct number
      Edit_NDoc.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 7]); // Decription
      Memo_Description.Lines.Clear;
      Memo_Description.Lines.Add(xTemp);
      xTemp := VarToStr(DC.Values[SelectedRow, 8]); // Amount in
      JvValidateEdit_AmountIn.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 9]); // Amount out
      JvValidateEdit_AmountOut.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 10]); // Curr
      ComboBox_Curr.ItemIndex := ComboBox_Curr.Items.IndexOf(xTemp);
      xTemp := VarToStr(DC.Values[SelectedRow, 11]); // Selling
      JvValidateEdit_seling.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 12]); // Amount in CHF
      JvValidateEdit_AmountInChf.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 13]); // Amount out CHF
      JvValidateEdit_amountOutCHF.Text := xTemp;
      xTemp := VarToStr(DC.Values[SelectedRow, 19]); // Account from
      if trim(xTemp) <> EmptyStr then
      begin
        try
          for i := 0 to ComboBox_AccountFrom.Items.Count - 1 do
          begin
            xId := Tid(ComboBox_AccountFrom.Items.Objects[i]);
            if xId.id = StrToInt(xTemp) then
            begin
              ComboBox_AccountFrom.ItemIndex := i;
              break;
            end;
          end;
        except
          ComboBox_AccountFrom.ItemIndex := -1;
        end;
      end;
      xTemp := VarToStr(DC.Values[SelectedRow, 20]); // Account to
      if trim(xTemp) <> EmptyStr then
      begin
        try
          for i := 0 to ComboBox_AccountTo.Items.Count - 1 do
          begin
            xId := Tid(ComboBox_AccountTo.Items.Objects[i]);
            if xId.id = StrToInt(xTemp) then
            begin
              ComboBox_AccountTo.ItemIndex := i;
              break;
            end;
          end;
        except
          ComboBox_AccountTo.ItemIndex := -1;
        end;
      end;

      xTemp := VarToStr(DC.Values[SelectedRow, 21]); // Account transfer
      if trim(xTemp) <> EmptyStr then
      begin
        try
          for i := 0 to ComboBox_AccountTransfer.Items.Count - 1 do
          begin
            xId := Tid(ComboBox_AccountTransfer.Items.Objects[i]);
            if xId.id = StrToInt(xTemp) then
            begin
              ComboBox_AccountTransfer.ItemIndex := i;
              break;
            end;
          end;
        except
          ComboBox_AccountTransfer.ItemIndex := -1;
        end;
        if ComboBox_AccountTransfer.ItemIndex = -1 then
        begin
          ComboBox_AccountTransfer.Visible := False;
          Label_Transfer.Visible := False;
        end
        else
        begin
          ComboBox_AccountTransfer.Visible := True;
          Label_Transfer.Visible := True;
        end;
      end
      else
      begin
        ComboBox_AccountTransfer.Visible := False;
        Label_Transfer.Visible := False;
      end;

      if PgQuery2.Active then
        PgQuery2.Close;
      PgQuery2.SQL.Clear;
      PgQuery2.SQL.Add
        (Format(' select gaming_date , acc_from_gd ,acc_to_gd from ' +
        ' tbl_cd_cash_transactions t where t.ct_number = ''%s''',
        [Edit_NDoc.Text]));
      PgQuery2.Open;

      GD_main.Text := PgQuery2.FieldByName('gaming_date').AsString;

      GD_acc_from.Text := PgQuery2.FieldByName('acc_from_gd').AsString;

      GD_acc_to.Text := PgQuery2.FieldByName('acc_to_gd').AsString;
    end;
  end;
end;
// ##############################################################################

function TListOfSpecialBooks.DeleteHistAfterCancel: Boolean;
var
  xQuery: string;
  xOk: Boolean;
  procedure ClearQuery;
  begin
    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear;
  end;

begin
  Result := True;
  if trim(FId_cd_Trancation_Hist) <> EmptyStr then
  begin
    ClearQuery;
    xQuery := ' Delete from   tbl_cd_cash_transactions_Hist  where id=%s';
    xQuery := Format(xQuery, [FId_cd_Trancation_Hist]);
    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
    except
      Result := False;
    end;
    if Result then
    begin
      ClearQuery;
      xQuery := ' Delete from tbl_cd_cash_transactions_subt_Hist where id_cd_cash_transactions_subt_Hist=%s';
      xQuery := Format(xQuery, [FId_cd_Trancation_Hist]);
      PgQuery_Execute.SQL.Add(xQuery);
      try
        PgQuery_Execute.Execute;
      except
        Result := False;
      end;
    end;
    if Result then
    begin
      ClearQuery;
      PgQuery_Execute.SQL.Add(xQuery);
      xQuery := ' Delete from  tbl_cd_cash_transactions_subt_categories_Hist where '
        + ' id_cd_cash_transactions_subt_categories_Hist=%s';
      xQuery := Format(xQuery, [FId_cd_Trancation_Hist]);
      try
        PgQuery_Execute.Execute;
      except
        Result := False;
      end;
    end;
    if Result then
    begin
      ClearQuery;
      xQuery := ' Delete from   tbl_cd_cash_transactions_subt_categories_values_Hist '
        + ' where id_cd_cash_transactions_subt_categories_values_Hist=%s ';
      xQuery := Format(xQuery, [FId_cd_Trancation_Hist]);
      PgQuery_Execute.SQL.Add(xQuery);
      try
        PgQuery_Execute.Execute;
      except
        Result := False;
      end;
    end;
  end;
end;
// ##############################################################################

function TListOfSpecialBooks.RestoreValues: Boolean;
var
  xId_Hist: String;
  xQuery: string;
  procedure ClearQuery;
  begin
    if PgQuery_Execute.Active then
      PgQuery_Execute.Close;
    PgQuery_Execute.SQL.Clear;
  end;

begin
  Result := True;
  if trim(FId_cd_Trancation_Hist) <> EmptyStr then
  begin

    xId_Hist := frmMain.GetFieldAsString
      ('Select max(id_cd_cash_transactions_Hist) ' +
      ' as id from tbl_cd_cash_transactions_Hist', 'id');

    xQuery := ' Update tbl_cd_cash_transactions_subt_categories_values  set  ' +
      ' nr=tbl_cd_cash_transactions_subt_categories_values_hist.nr, ' +
      ' exchange_rate=  tbl_cd_cash_transactions_subt_categories_values_hist.exchange_rate '

      + ' from  tbl_cd_cash_transactions_subt_categories_values_hist ' +
      '  where tbl_cd_cash_transactions_subt_categories_values.id_cd_value=tbl_cd_cash_transactions_subt_categories_values_hist.id_cd_value '
      + ' and  tbl_cd_cash_transactions_subt_categories_values.id_cd_transaction=tbl_cd_cash_transactions_subt_categories_values_hist.id_cd_transaction '
      + ' and tbl_cd_cash_transactions_subt_categories_values_hist.id_cd_cash_transactions_subt_categories_values_hist=%s ';

    xQuery := Format(xQuery, [StringToDataBase(FId_cd_Trancation_Hist)]);
    ClearQuery;
    PgQuery_Execute.SQL.Add(xQuery);
    try
      PgQuery_Execute.Execute;
    except
      Result := False;
    end;
    if Result then
    begin
      xQuery := 'Update tbl_cd_cash_transactions set account_id_from=tbl_cd_cash_transactions_hist.account_id_from, '
        + ' account_id_to=  tbl_cd_cash_transactions_hist.account_id_to,' +
        ' account_id_transfer=tbl_cd_cash_transactions_hist.account_id_transfer  from  tbl_cd_cash_transactions_hist  where '
        + ' tbl_cd_cash_transactions.id=tbl_cd_cash_transactions_hist.id_cd_cash_transactions_hist  and  tbl_cd_cash_transactions_hist.id=%s';
      xQuery := Format(xQuery, [StringToDataBase(FId_cd_Trancation_Hist)]);
      ClearQuery;
      PgQuery_Execute.SQL.Add(xQuery);
      try
        PgQuery_Execute.Execute;
      except
        Result := False;
      end;
    end;

  end;
end;

// ##############################################################################

end.
