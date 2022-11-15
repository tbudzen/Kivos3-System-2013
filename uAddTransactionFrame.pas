unit uAddTransactionFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, DBAccess, PgAccess, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxImage, uglobals;

type
  TAddTransactionFrame = class(TBaseFrame)
    TransactionPages: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTextEdit1: TcxTextEdit;
    edOrder: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edName: TcxTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    btnAddTransaction: TcxButton;
    btnCancel: TcxButton;
    btnModifyTransaction: TcxButton;
    cbCategory: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    edMinValue: TcxTextEdit;
    cxLabel8: TcxLabel;
    edMaxValue: TcxTextEdit;
    cxLabel9: TcxLabel;
    cbVisible: TcxCheckBox;
    cbForChange: TcxCheckBox;
    cbMoneyLaundry: TcxCheckBox;
    cbLiveGamesTransaction: TcxCheckBox;
    cbPrintDirect: TcxCheckBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    mOUTDescription: TcxMemo;
    mINDescription: TcxMemo;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel22: TcxLabel;
    cbSend: TcxCheckBox;
    edSurveillanceMinValue: TcxTextEdit;
    cxLabel24: TcxLabel;
    cbLGFillFromAccount: TcxDBLookupComboBox;
    cbLGCreditToAccount: TcxDBLookupComboBox;
    cxLabel25: TcxLabel;
    cbExportFile: TcxCheckBox;
    cxLabel23: TcxLabel;
    edMoneyLaundryMinValue: TcxTextEdit;
    cbMoneyLaundryRO: TcxCheckBox;
    cbCloseOpenRO: TcxCheckBox;
    cbForChangeRO: TcxCheckBox;
    cbVisibleRO: TcxCheckBox;
    cbNeedsConfirmationRO: TcxCheckBox;
    cbMultipleAccountsManualRO: TcxCheckBox;
    cbMultipleAccountsFixedRO: TcxCheckBox;
    cbMultipleTransactionRO: TcxCheckBox;
    cbLiveGamesTransactionRO: TcxCheckBox;
    cbPrintDirectRO: TcxCheckBox;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cbReportRO: TcxDBLookupComboBox;
    cbCategoryRO: TcxDBLookupComboBox;
    edMinValueRO: TcxTextEdit;
    edMaxValueRO: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    cbCashierCanConfirmRO: TcxCheckBox;
    cbNeedsAuthorisationRO: TcxCheckBox;
    cxLabel34: TcxLabel;
    mConfirmationMessageRO: TcxMemo;
    cxLabel35: TcxLabel;
    edConfirmationMinValueRO: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    edMoneyLaundryMinValueRO: TcxTextEdit;
    cbExportFileRO: TcxCheckBox;
    cxLabel37: TcxLabel;
    edSurveillanceMinValueRO: TcxTextEdit;
    cxLabel38: TcxLabel;
    cbSendRO: TcxCheckBox;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxGrid8: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxGrid9: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    edId: TcxTextEdit;
    cxLabel43: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    cxLabel44: TcxLabel;
    cxGrid10: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    PgTable2: TPgTable;
    PgTable3: TPgTable;
    PgTable4: TPgTable;
    PgDataSource2: TPgDataSource;
    PgDataSource3: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgTable5: TPgTable;
    PgTable6: TPgTable;
    PgTable7: TPgTable;
    PgDataSource5: TPgDataSource;
    PgDataSource6: TPgDataSource;
    PgDataSource7: TPgDataSource;
    PgTable1: TPgTable;
    PgTable8: TPgTable;
    PgDataSource1: TPgDataSource;
    PgDataSource8: TPgDataSource;
    PgDataSource11: TPgDataSource;
    PgTable11: TPgTable;
    PgTable12: TPgTable;
    PgDataSource12: TPgDataSource;
    cbHowManyCopies: TcxComboBox;
    PgDataSource10: TPgDataSource;
    PgDataSource9: TPgDataSource;
    PgDataSource15: TPgDataSource;
    PgDataSource16: TPgDataSource;
    cxGridDBTableView9name: TcxGridDBColumn;
    cxGridDBTableView9id: TcxGridDBColumn;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    PgTable17: TPgTable;
    PgDataSource17: TPgDataSource;
    PgDataSource18: TPgDataSource;
    PgSQL1: TPgSQL;
    cxTabSheet5: TcxTabSheet;
    cbNeedsConfirmation: TcxCheckBox;
    cbCashierCanConfirm: TcxCheckBox;
    cbNeedsAuthorisation: TcxCheckBox;
    cxLabel19: TcxLabel;
    mConfirmationMessage: TcxMemo;
    cxLabel20: TcxLabel;
    edConfirmationMinValue: TcxTextEdit;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxLabel21: TcxLabel;
    cxLabel51: TcxLabel;
    cxGrid12: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10id: TcxGridDBColumn;
    cxGridDBTableView10user_name: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton8: TcxButton;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    PgQuery3: TPgQuery;
    PgQuery4: TPgQuery;
    PgDataSource13: TPgDataSource;
    PgDataSource14: TPgDataSource;
    cxLabel15: TcxLabel;
    PgQuery5: TPgQuery;
    cxGridDBTableView8id: TcxGridDBColumn;
    cxGridDBTableView8name: TcxGridDBColumn;
    PgQuery6: TPgQuery;
    PgQuery7: TPgQuery;
    cbDirection: TcxComboBox;
    cxLabel52: TcxLabel;
    cxGrid3DBTableView1id: TcxGridDBColumn;
    cxGrid3DBTableView1user_name: TcxGridDBColumn;
    PgDataSource19: TPgDataSource;
    PgDataSource20: TPgDataSource;
    PgQuery8: TPgQuery;
    cbDirectionRO: TcxComboBox;
    cxLabel53: TcxLabel;
    cxGridDBTableView6account_id: TcxGridDBColumn;
    cxGridDBTableView5user_name: TcxGridDBColumn;
    cxGridDBTableView7name: TcxGridDBColumn;
    cbHowManyCopiesRO: TcxComboBox;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cbLGFillFromAccountRO: TcxDBLookupComboBox;
    cbLGCreditToAccountRO: TcxDBLookupComboBox;
    cxGrid13: TcxGrid;
    cxGridDBTableView11: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    PgQuery9: TPgQuery;
    PgDataSource21: TPgDataSource;
    PgQuery10: TPgQuery;
    cxGridDBTableView9multiplier: TcxGridDBColumn;
    cxGridDBTableView9name_1: TcxGridDBColumn;
    cxGridDBTableView9name_2: TcxGridDBColumn;
    cxGridDBTableView9symbol: TcxGridDBColumn;
    cxButton9: TcxButton;
    cbUseInTransfer: TcxCheckBox;
    tabCashdesks: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridDBTableView13: TcxGridDBTableView;
    cxGridLevel13: TcxGridLevel;
    cxLabel56: TcxLabel;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxGrid16: TcxGrid;
    cxGridDBTableView14: TcxGridDBTableView;
    cxGridLevel14: TcxGridLevel;
    cxLabel57: TcxLabel;
    PgQuery11: TPgQuery;
    PgDataSource22: TPgDataSource;
    cxGridDBTableView13cd_name: TcxGridDBColumn;
    cxGridDBTableView13id: TcxGridDBColumn;
    PgQuery12: TPgQuery;
    PgDataSource23: TPgDataSource;
    cxGridDBTableView14id: TcxGridDBColumn;
    cxGridDBTableView14id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView14id_transaction: TcxGridDBColumn;
    cxGridDBTableView14cd_name: TcxGridDBColumn;
    cxTabSheet6: TcxTabSheet;
    cbToAccount: TcxDBLookupComboBox;
    cbFromAccount: TcxDBLookupComboBox;
    cbUseCurrentCashdeskInsteadOfTo: TcxCheckBox;
    cbUseCurrentCashdeskInsteadOfFrom: TcxCheckBox;
    cbMultipleAccountsManual: TcxCheckBox;
    cbMultipleAccountsFixed: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel47: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1id_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1account_id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1is_default: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxGrid14: TcxGrid;
    cxGridDBTableView12: TcxGridDBTableView;
    cxGridDBTableView12id: TcxGridDBColumn;
    cxGridDBTableView12id_transaction: TcxGridDBColumn;
    cxGridDBTableView12account_id: TcxGridDBColumn;
    cxGridDBTableView12split: TcxGridDBColumn;
    cxGridDBTableView12fixed: TcxGridDBColumn;
    cxGridLevel12: TcxGridLevel;
    cxLabel48: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1account_id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    cbCurrency: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    Image1: TImage;
    cxGridDBTableView9Column_Order: TcxGridDBColumn;
    cxGridDBTableView8Column_Ord: TcxGridDBColumn;
    cxGridDBTableView8Column_Category: TcxGridDBColumn;
    cxCheckBox_AllowGD: TcxCheckBox;
    GroupBox4: TGroupBox;
    cxCheckBox_MainTransaction: TcxCheckBox;
    cxCheckBox_Accauntfrom: TcxCheckBox;
    cxCheckBox_Accoutto: TcxCheckBox;
    cbReport: TcxComboBox;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    PgQuery13: TPgQuery;
    cxGridDBTable_Active: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView9_Active: TcxGridDBColumn;
    cxGridDBTableView8Active: TcxGridDBColumn;
    procedure btnModifyTransactionClick(Sender: TObject);
    procedure btnAddTransactionClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cbLiveGamesTransactionPropertiesChange(Sender: TObject);
    procedure edOrderExit(Sender: TObject);
    procedure cbNeedsConfirmationPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure cbPrintDirectPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1is_defaultPropertiesEditValueChanged
      (Sender: TObject);
    procedure cbMultipleAccountsManualClick(Sender: TObject);
    procedure cbMultipleAccountsFixedClick(Sender: TObject);
    procedure cbDirectionPropertiesChange(Sender: TObject);
    procedure edOrderKeyPress(Sender: TObject; var Key: Char);
    procedure edMinValueKeyPress(Sender: TObject; var Key: Char);
    procedure edMaxValueKeyPress(Sender: TObject; var Key: Char);
    procedure edConfirmationMinValueKeyPress(Sender: TObject; var Key: Char);
    procedure edSurveillanceMinValueKeyPress(Sender: TObject; var Key: Char);
    procedure edMoneyLaundryMinValueKeyPress(Sender: TObject; var Key: Char);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure cbUseCurrentCashdeskInsteadOfFromPropertiesEditValueChanged
      (Sender: TObject);
    procedure cbUseCurrentCashdeskInsteadOfToPropertiesEditValueChanged
      (Sender: TObject);
    procedure cbCurrencyPropertiesEditValueChanged(Sender: TObject);
    procedure cbUseCurrentCashdeskInsteadOfFromClick(Sender: TObject);
    procedure cbUseCurrentCashdeskInsteadOfToClick(Sender: TObject);
    procedure cbMultipleAccountsManualPropertiesEditValueChanged
      (Sender: TObject);
    procedure tabCashdesksShow(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxCheckBox_AllowGDClick(Sender: TObject);
  private
    { Private declarations }
    bCancelling: Boolean;
    MAFixedMutex, MAManualMutex: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function ValidateFields(): Boolean;
    procedure RefreshReports;
  end;

var
  AddTransactionFrame: TAddTransactionFrame;

implementation

{$R *.dfm}

uses uSystem,
  uExceptions,
  uFrmMain,
  uStrings,
  cxGridDBDataDefinitions, uDataBase;

function TAddTransactionFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if (edOrder.Text = '') then
  begin
    Information('Warning', 'You must fill the transaction order id field.');
    Result := False;
    Exit;
  end;

  if (edName.Text = '') then
  begin
    Information('Warning', 'You must fill the transaction name field.');
    Result := False;
    Exit;
  end;

  if cxCheckBox_AllowGD.Checked then
  begin
    if ((cxCheckBox_MainTransaction.Checked = False) and
      (cxCheckBox_Accauntfrom.Checked = False) and
      (cxCheckBox_Accoutto.Checked = False)) then
    begin
      Information('Warning',
        'You must checked one checbox Allow transaction Gd.');
      Result := False;
      Exit;
    end;
  end;
end;

procedure TAddTransactionFrame.btnAddTransactionClick(Sender: TObject);
var
  QueryStr: WideString;
  xId_report: integer;
begin

  if not ValidateFields() then
    Exit;

  {
    QueryStr :=
    'INSERT INTO tbl_transactions ' +
    '(' +
    '  order_id, ' +
    '  name, ' +
    '  id_currency, ' +
    '  account_id_from, ' +
    '  account_id_to, ' +
    '  account_id_transfer, ' +
    '  id_category,  ' +
    '  direction, ' +
    '  min_value, ' +
    '  max_value, ' +
    '  is_visible, ' +
    '  is_for_change, ' +
    '  is_close_open, ' +
    '  is_money_laundry, ' +
    '  is_multiple_transaction, ' +
    '  is_multiple_accounts_manual, ' +
    '  is_multiple_accounts_fixed, ' +
    '  is_live_games_transaction, ' +
    '  print_direct, ' +
    '  how_many_copies, ' +
    '  id_report, ' +
    '  in_description, ' +
    '  out_description, ' +
    '  needs_confirmation, ' +
    '  cashier_can_confirm, ' +
    '  needs_authorisation_before_transaction, ' +
    '  confirmation_min_value, ' +
    '  confirmation_message, ' +
    '  surveillance_send, ' +
    '  surveillance_min_value, ' +
    '  money_laundry_export_file, ' +
    '  money_laundry_min_value, ' +
    '  live_games_account_id_fill_from, ' +
    '  live_games_account_id_credit_to ' +
    ') ' +
    'VALUES ' +
    '(' +
    '''' + edOrder.Text + '''' + ', ' +
    '''' + edName.Text + '''' + ', ' +
    VarToStr(cbCurrency.EditValue) + ', ' +
    '''' + VarToStr(cbFromAccount.EditValue) + '''' + ', ' +
    '''' + VarToStr(cbToAccount.EditValue) + '''' + ', ' +
    '''' + VarToStr(cbTransferAccount.EditValue) + '''' + ', ' +
    VarToStr(cbCategory.EditValue) + ', ' +
    IntToStr(cbDirection.ItemIndex + 1) + ', ' +
    edMinValue.Text + ', ' +
    edMaxValue.Text + ', ' +
    MyBoolToIntStr(cbVisible.Checked) + ', ' +
    MyBoolToIntStr(cbForChange.Checked) + ', ' +
    MyBoolToIntStr(cbCloseOpen.Checked) + ', ' +
    MyBoolToIntStr(cbMoneyLaundry.Checked) + ', ' +
    MyBoolToIntStr(cbMultipleTransaction.Checked) + ', ' +
    MyBoolToIntStr(cbMultipleAccountsManual.Checked) + ', ' +
    MyBoolToIntStr(cbMultipleAccountsFixed.Checked) + ', ' +
    MyBoolToIntStr(cbLiveGamesTransaction.Checked) + ', ' +
    MyBoolToIntStr(cbPrintDirect.Checked) + ', ' +
    IntToStr(cbHowManyCopies.ItemIndex + 1) + ', ' +
    '0, ' + //VarToStr(cbReport.EditValue) + ', ' +
    '''' + mINDescription.ToString() + '''' + ', ' +
    '''' + mOUTDescription.ToString() + '''' + ', ' +
    MyBoolToIntStr(cbNeedsConfirmation.Checked) + ', ' +
    MyBoolToIntStr(cbCashierCanConfirm.Checked) + ', ' +
    MyBoolToIntStr(cbNeedsAuthorisation.Checked) + ', ' +
    edConfirmationMinValue.Text + ', ' +
    '''' + mConfirmationMessage.ToString() + '''' + ', ' +
    MyBoolToIntStr(cbSend.Checked) + ', ' +
    edSurveillanceMinValue.Text + ', ' +
    MyBoolToIntStr(cbExportFile.Checked) + ', ' +
    edMoneyLaundryMinValue.Text + ', ' +
    '''' + cbLGFillFromAccount.EditValue + '''' + ', ' +
    '''' + cbLGCreditToAccount.EditValue + '''' +
    ')';
  }

  if cbReport.ItemIndex <> -1 then
  begin
    xId_report := Tid(cbReport.Properties.Items.Objects[cbReport.ItemIndex]).id;
  end
  else
  begin
    xId_report := ckeyNILL;
  end;

  QueryStr := 'UPDATE tbl_transactions ' + 'SET ' + '  sort_order = ' +
    edOrder.Text + ', ' + '  name = ''' + edName.Text + ''', ' +
    '  id_currency = ' + VarToStr(cbCurrency.EditValue) + ', ' +
    '  account_id_from = ''' + VarToStr(cbFromAccount.EditValue) + ''', ' +
    '  account_id_to = ''' + VarToStr(cbToAccount.EditValue) + ''', ' +
    '  id_category = ' + VarToStr(cbCategory.EditValue) + ', ' +
    '  direction = ' + IntToStr(cbDirection.ItemIndex + 1) + ', ' +
    '  min_value = ' + edMinValue.Text + ', ' + '  max_value = ' +
    edMaxValue.Text + ', ' + '  is_visible = ' +
    MyBoolToIntStr(cbVisible.Checked) + ', ' + '  is_for_change = ' +
    MyBoolToIntStr(cbForChange.Checked) + ', ' +
  // '  is_close_open = ' + MyBoolToIntStr(cbCloseOpen.Checked) + ', ' +
    '  is_money_laundry = ' + MyBoolToIntStr(cbMoneyLaundry.Checked) + ', ' +
  // '  is_multiple_transaction = ' + MyBoolToIntStr(cbMultipleTransaction.Checked) + ', ' +
    '  is_multiple_accounts_manual = ' +
    MyBoolToIntStr(cbMultipleAccountsManual.Checked) + ', ' +
    '  is_multiple_accounts_fixed = ' +
    MyBoolToIntStr(cbMultipleAccountsFixed.Checked) + ', ' +
    '  is_live_games_transaction = ' +
    MyBoolToIntStr(cbLiveGamesTransaction.Checked) + ', ' + '  print_direct = '
    + MyBoolToIntStr(cbPrintDirect.Checked) + ', ' + '  how_many_copies = ' +
    IntToStr(cbHowManyCopies.ItemIndex + 1) + ', ' + '  id_report = ' +
    IntegerToDataBase(xId_report) { VarToStr(cbReport.EditValue) } + ', ' +
    '  in_description = ''' + mINDescription.Lines.GetText() + ''', ' +
    '  out_description = ''' + mOUTDescription.Lines.GetText() + ''', ' +
    '  needs_confirmation = ' + MyBoolToIntStr(cbNeedsConfirmation.Checked) +
    ', ' + '  cashier_can_confirm = ' +
    MyBoolToIntStr(cbCashierCanConfirm.Checked) + ', ' +
    '  needs_authorisation_before_transaction = ' +
    MyBoolToIntStr(cbNeedsAuthorisation.Checked) + ', ' +
    '  confirmation_min_value = ' + edConfirmationMinValue.Text + ', ' +
    '  confirmation_message = ''' + mConfirmationMessage.Lines.GetText() +
    ''', ' + '  surveillance_send = ' + MyBoolToIntStr(cbSend.Checked) + ', ' +
    '  surveillance_min_value = ' + edSurveillanceMinValue.Text + ', ' +
    '  money_laundry_export_file = ' + MyBoolToIntStr(cbExportFile.Checked) +
    ', ' + '  money_laundry_min_value = ' + edMoneyLaundryMinValue.Text + ', ' +
  // '  live_games_account_id_fill_from = ''' + cbLGFillFromAccount.EditValue + ''', ' +
  // '  live_games_account_id_credit_to = ''' + cbLGCreditToAccount.EditValue + ''' ' +
    '  use_current_cashdesk_account_instead_of_from = ' +
    MyBoolToIntStr(cbUseCurrentCashdeskInsteadOfFrom.Checked) + ', ' +
    '  use_current_cashdesk_account_instead_of_to = ' +
    MyBoolToIntStr(cbUseCurrentCashdeskInsteadOfTo.Checked) + ' ' + 'WHERE ' +
    '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning',
          'Transaction with such order id is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddTransactionFrame.btnAddTransactionClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddTransactionFrame.btnCancelClick(Sender: TObject);
begin

  bCancelling := True;

  if btnAddTransaction.Visible then
  begin

    if edOrder.Text <> '' then
    begin

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add('DELETE FROM tbl_transactions WHERE id = ' + edId.Text);
      PgSQL1.Execute();

      if edId.Text <> '' then
      begin

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add
          ('DELETE FROM tbl_transactions_users WHERE id_transaction = ''' +
          edId.Text + '''');
        PgSQL1.Execute();

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add
          ('DELETE FROM tbl_transactions_values WHERE id_transaction = ''' +
          edId.Text + '''');
        PgSQL1.Execute();

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add
          ('DELETE FROM tbl_transactions_accounts WHERE id_transaction = ''' +
          edId.Text + '''');
        PgSQL1.Execute();

      end;

    end;

  end;

  SendMainMessage('close|current');

end;

procedure TAddTransactionFrame.btnModifyTransactionClick(Sender: TObject);
var
  QueryStr: WideString;
  xId_report: integer;
begin

  if not ValidateFields() then
    Exit;

  // UPDATE query

  if cbReport.ItemIndex <> -1 then
  begin
    xId_report := Tid(cbReport.Properties.Items.Objects[cbReport.ItemIndex]).id;
  end
  else
  begin
    xId_report := ckeyNILL;
  end;

  QueryStr := 'update tbl_transactions ' + 'set ' +
  // 1
    '  sort_order = ' + edOrder.Text + ', ' + '  name = ''' + edName.Text +
    ''', ' + '  id_currency = ' + VarToStr(cbCurrency.EditValue) + ', ' +
    '  account_id_from = ''' + VarToStr(cbFromAccount.EditValue) + ''', ' +
    '  account_id_to = ''' + VarToStr(cbToAccount.EditValue) + ''', ' +
    '  id_category = ' + VarToStr(cbCategory.EditValue) + ', ' +
    '  direction = ' + IntToStr(cbDirection.ItemIndex + 1) + ', ' +
    '  min_value = ''' + edMinValue.Text + ''', ' + '  max_value = ''' +
    edMaxValue.Text + ''', ' +
  // 11
    '  is_visible = ' + MyBoolToIntStr(cbVisible.Checked) + ', ' +
    '  is_for_change = ' + MyBoolToIntStr(cbForChange.Checked) + ', ' +
  // '  is_close_open = ' + MyBoolToIntStr(cbCloseOpen.Checked) + ', ' +
    '  is_money_laundry = ' + MyBoolToIntStr(cbMoneyLaundry.Checked) + ', ' +
  // '  is_multiple_transaction = ' + MyBoolToIntStr(cbMultipleTransaction.Checked) + ', ' +
    '  is_multiple_accounts_manual = ' +
    MyBoolToIntStr(cbMultipleAccountsManual.Checked) + ', ' +
    '  is_multiple_accounts_fixed = ' +
    MyBoolToIntStr(cbMultipleAccountsFixed.Checked) + ', ' +
    '  is_live_games_transaction = ' +
    MyBoolToIntStr(cbLiveGamesTransaction.Checked) + ', ' + '  print_direct = '
    + MyBoolToIntStr(cbPrintDirect.Checked) + ', ' + '  how_many_copies = ' +
    IntToStr(cbHowManyCopies.ItemIndex + 1) + ', ' +
  // 21
    '  id_report = ' + IntegerToDataBase(xId_report) + ', ' +
    '  in_description = ''' + mINDescription.Lines.GetText() + ''', ' +
    '  out_description = ''' + mOUTDescription.Lines.GetText() + ''', ' +
    '  needs_confirmation = ' + MyBoolToIntStr(cbNeedsConfirmation.Checked) +
    ', ' + '  cashier_can_confirm = ' +
    MyBoolToIntStr(cbCashierCanConfirm.Checked) + ', ' +
    '  needs_authorisation_before_transaction = ' +
    MyBoolToIntStr(cbNeedsAuthorisation.Checked) + ', ' +
    '  confirmation_min_value = ' + edConfirmationMinValue.Text + ', ' +
    '  confirmation_message = ''' + mConfirmationMessage.Lines.GetText() +
    ''', ' + '  surveillance_send = ' + MyBoolToIntStr(cbSend.Checked) + ', ' +
    '  surveillance_min_value = ' + edSurveillanceMinValue.Text + ', ' +
  // 31
    '  money_laundry_export_file = ' + MyBoolToIntStr(cbExportFile.Checked) +
    ', ' + '  money_laundry_min_value = ' + edMoneyLaundryMinValue.Text + ', ' +
    '  live_games_account_id_fill_from = ''' + cbLGFillFromAccount.EditValue +
    ''', ' + '  live_games_account_id_credit_to = ''' +
    cbLGCreditToAccount.EditValue + ''', ' +
    '  use_current_cashdesk_account_instead_of_from = ' +
    MyBoolToIntStr(cbUseCurrentCashdeskInsteadOfFrom.Checked) + ', ' +
    '  use_current_cashdesk_account_instead_of_to = ' +
    MyBoolToIntStr(cbUseCurrentCashdeskInsteadOfTo.Checked) + ', ' +
    '  use_in_transfer = ' + MyBoolToIntStr(cbUseInTransfer.Checked) + ', ' +
    '  main_transaction_gd=' + MyBoolToIntStr
    (cxCheckBox_MainTransaction.Checked) + ',' + '  account_from_gd=' +
    MyBoolToIntStr(cxCheckBox_Accauntfrom.Checked) + ',' + '  account_to_gd=' +
    MyBoolToIntStr(cxCheckBox_Accoutto.Checked) + ',' + '  allow_change_gd=' +
    MyBoolToIntStr(cxCheckBox_AllowGD.Checked) + ' ' + 'where ' + '  id = ' +
    edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      HandleException(E, 'TAddTransactionFrame.btnModifyTransactionClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddTransactionFrame.cbCurrencyPropertiesEditValueChanged
  (Sender: TObject);
begin

  // TODO: Dirty trick
  // We know for sure that this event is invoked while showing frame
  // See -> initializers

  bCancelling := False;

end;

procedure TAddTransactionFrame.cbDirectionPropertiesChange(Sender: TObject);
begin

  case cbDirection.ItemIndex of
    0: // In
      begin
        cxLabel12.Show();
        mINDescription.Show();
        cxLabel13.Hide();
        mOUTDescription.Hide();
      end;
    1: // Out
      begin
        cxLabel12.Hide();
        mINDescription.Hide();
        cxLabel13.Show();
        mOUTDescription.Show();
      end;
    2: // In <-> Out
      begin
        cxLabel12.Show();
        mINDescription.Show();
        cxLabel13.Show();
        mOUTDescription.Show();
      end;
  end;

end;

procedure TAddTransactionFrame.cbLiveGamesTransactionPropertiesChange
  (Sender: TObject);
begin

  cxLabel18.Visible := cbLiveGamesTransaction.Checked;
  cxLabel24.Visible := cbLiveGamesTransaction.Checked;
  cxLabel25.Visible := cbLiveGamesTransaction.Checked;
  cbLGFillFromAccount.Visible := cbLiveGamesTransaction.Checked;
  cbLGCreditToAccount.Visible := cbLiveGamesTransaction.Checked;

end;

procedure TAddTransactionFrame.cbMultipleAccountsFixedClick(Sender: TObject);
begin

  MAFixedMutex := True;

  if not MAManualMutex then
  begin

    cbMultipleAccountsManual.Checked := False;

    cxLabel14.Visible := cbMultipleAccountsFixed.Checked;
    cxLabel14.Caption := 'Multiple accounts fixed';
    cxLabel47.Visible := cbMultipleAccountsFixed.Checked;
    cxLabel48.Visible := cbMultipleAccountsFixed.Checked;
    cxGrid1.Visible := False;
    cxGrid14.Visible := cbMultipleAccountsFixed.Checked;
    cxGrid2.Visible := cbMultipleAccountsFixed.Checked;
    cxButton4.Visible := cbMultipleAccountsFixed.Checked;
    cxButton5.Visible := cbMultipleAccountsFixed.Checked;

  end;

  MAFixedMutex := False;

end;

procedure TAddTransactionFrame.cbMultipleAccountsManualClick(Sender: TObject);
begin

  MAManualMutex := True;

  if not MAFixedMutex then
  begin

    cbMultipleAccountsFixed.Checked := False;

    cxLabel14.Visible := cbMultipleAccountsManual.Checked;
    cxLabel14.Caption := 'Multiple accounts manual';
    cxLabel47.Visible := cbMultipleAccountsManual.Checked;
    cxLabel48.Visible := cbMultipleAccountsManual.Checked;
    cxGrid1.Visible := cbMultipleAccountsManual.Checked;
    cxGrid14.Visible := False;
    cxGrid2.Visible := cbMultipleAccountsManual.Checked;
    cxButton4.Visible := cbMultipleAccountsManual.Checked;
    cxButton5.Visible := cbMultipleAccountsManual.Checked;

  end;

  MAManualMutex := False;

end;

procedure TAddTransactionFrame.
  cbMultipleAccountsManualPropertiesEditValueChanged(Sender: TObject);
begin

  cbToAccount.Enabled := not cbMultipleAccountsManual.Checked;

end;

procedure TAddTransactionFrame.cbNeedsConfirmationPropertiesChange
  (Sender: TObject);
begin

  cbCashierCanConfirm.Visible := cbNeedsConfirmation.Checked;
  cbNeedsAuthorisation.Visible := cbNeedsConfirmation.Checked;
  cxLabel20.Visible := cbNeedsConfirmation.Checked;
  edConfirmationMinValue.Visible := cbNeedsConfirmation.Checked;
  cbNeedsAuthorisation.Visible := cbNeedsConfirmation.Checked;
  cxLabel19.Visible := cbNeedsConfirmation.Checked;
  mConfirmationMessage.Visible := cbNeedsConfirmation.Checked;
  cxLabel21.Visible := cbNeedsConfirmation.Checked;
  cxLabel51.Visible := cbNeedsConfirmation.Checked;
  cxGrid3.Visible := cbNeedsConfirmation.Checked;
  cxGrid12.Visible := cbNeedsConfirmation.Checked;
  cxButton3.Visible := cbNeedsConfirmation.Checked;
  cxButton8.Visible := cbNeedsConfirmation.Checked;

end;

procedure TAddTransactionFrame.cbPrintDirectPropertiesChange(Sender: TObject);
begin
  cxLabel10.Visible := cbPrintDirect.Checked;
  cxLabel11.Visible := cbPrintDirect.Checked;
  cbHowManyCopies.Visible := cbPrintDirect.Checked;
  cbReport.Visible := cbPrintDirect.Checked;
end;

procedure TAddTransactionFrame.cbUseCurrentCashdeskInsteadOfFromClick
  (Sender: TObject);
begin

  if cbUseCurrentCashdeskInsteadOfFrom.Checked then
  begin
    cbUseCurrentCashdeskInsteadOfTo.Checked := False;
  end;

end;

procedure TAddTransactionFrame.
  cbUseCurrentCashdeskInsteadOfFromPropertiesEditValueChanged(Sender: TObject);
begin

  cbFromAccount.Enabled := not cbUseCurrentCashdeskInsteadOfFrom.Checked;

end;

procedure TAddTransactionFrame.cbUseCurrentCashdeskInsteadOfToClick
  (Sender: TObject);
begin

  if cbUseCurrentCashdeskInsteadOfTo.Checked then
  begin
    cbUseCurrentCashdeskInsteadOfFrom.Checked := False;
  end;

end;

procedure TAddTransactionFrame.
  cbUseCurrentCashdeskInsteadOfToPropertiesEditValueChanged(Sender: TObject);
begin

  cbToAccount.Enabled := (not cbUseCurrentCashdeskInsteadOfTo.Checked) and
    (not cbMultipleAccountsManual.Checked);

end;

constructor TAddTransactionFrame.Create(AOwner: TComponent);
begin
  inherited;
  RefreshReports;
end;

procedure TAddTransactionFrame.cxButton10Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView13.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr :=
      'INSERT INTO tbl_cd_transactions (id_cashdesk, id_transaction) VALUES ' +
      '(' + VarToStr(cxGridDBTableView13.ViewData.Rows[SelectedRow].Values[0]) +
      ', ' + VarToStr(edId.Text) + ')';

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Transaction is already assigned to this cashdesk');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton1Click()');
        end;
      end;
    end;

    PgQuery12.Active := False;
    PgQuery12.Active := True;

    //

  end;

end;

procedure TAddTransactionFrame.cxButton11Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView14.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr := 'DELETE FROM tbl_cd_transactions ' + 'WHERE id = ' +
      VarToStr(cxGridDBTableView14.ViewData.Rows[SelectedRow].Values[0]);

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Value is already assigned to this transaction');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton1Click()');
        end;
      end;
    end;

    PgQuery12.Active := False;
    PgQuery12.Active := True;
    //

  end;

end;

procedure TAddTransactionFrame.cxButton1Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  i: integer;
begin
  PgQuery10.DisableControls;
  PgQuery10.ParamByName('idTrans').AsString := VarToStr(edId.EditingValue);
  PgQuery10.First;
  while PgQuery10.Eof = False do
  begin
    if PgQuery10.FieldByName('active').AsInteger = 1 then
    begin

      QueryStr :=
        'INSERT INTO tbl_transactions_values (id_transaction, id_value) VALUES '
        + '(' + VarToStr(edId.Text) + ', ' + PgQuery10.FieldByName('id')
        .AsString + ')';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Value is already assigned to this transaction');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton1Click()');
          end;
        end;
      end;
      QueryStr := 'update tbl_values set active=0 where id=' +
        PgQuery10.FieldByName('id').AsString;
      PgSQL1.SQL.Clear;
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Value is already assigned to this transaction');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton1Click()');
          end;
        end;
      end;
    end;
    PgQuery10.Next;
  end;

  PgQuery5.Active := False;
  PgQuery5.Active := True;
  PgQuery10.Active := False;
  PgQuery10.Active := True;
  PgQuery10.EnableControls;
end;

procedure TAddTransactionFrame.cxButton2Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  i: integer;
begin
  PgQuery5.DisableControls;
  PgQuery5.First;

  while not PgQuery5.Eof do
  begin
    if PgQuery5.FieldByName('active').AsInteger=1 then
    begin

      QueryStr := 'DELETE FROM tbl_transactions_values ' + 'WHERE id = ' +
                   PgQuery5.FieldByName('id').AsString;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton2Click()');
        end;
      end;
      QueryStr:='Update tbl_transactions_values set active=0 where id='  +
                PgQuery5.FieldByName('id').AsString;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton2Click()');
        end;
      end;
    end;
    PgQuery5.Next;
  end;

  PgQuery5.Active := False;
  PgQuery5.Active := True;
  PgQuery5.EnableControls;

  PgQuery10.Active := False;
  PgQuery10.Active := True;

end;

procedure TAddTransactionFrame.cxButton3Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView10.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr :=
      'INSERT INTO tbl_transactions_users (id_transaction, id_user) VALUES ' +
      '(' + VarToStr(edId.Text) + ', ' +
      VarToStr(cxGridDBTableView10.ViewData.Rows[SelectedRow].Values[0]) + ')';

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'User is already assigned to this transaction');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton3Click()');
        end;
      end;
    end;

    PgQuery7.Active := False;
    PgQuery7.Active := True;

  end;

end;

procedure TAddTransactionFrame.cxButton4Click(Sender: TObject);
var
  QueryStr: WideString;
begin

  PgQuery13.ParamByName('idTrans').AsString := VarToStr(edId.Text);
  PgQuery13.First;
  while not PgQuery13.Eof do
  begin
    if PgQuery13.FieldByName('active').AsInteger = 1 then
    begin

      if cbMultipleAccountsManual.Checked then
      begin
        QueryStr :=
          'INSERT INTO tbl_transactions_accounts_manual (id_transaction, account_id, is_default) VALUES '
          + '(' + VarToStr(edId.Text) + ', ' + PgQuery13.FieldByName
          ('account_id').AsString + ', ' + '0' + ')';
      end
      else if cbMultipleAccountsFixed.Checked then
      begin
        QueryStr :=
          'INSERT INTO tbl_transactions_accounts_fixed (id_transaction, account_id) VALUES '
          + '(' + VarToStr(edId.Text) + ', ' + PgQuery13.FieldByName
          ('account_id').AsString + ')';
      end
      else
      begin
        Information('Warning', 'Unknown error while editing multiple accounts');
        Exit;
      end;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Account is already assigned to this transaction');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton4Click()');
          end;
        end;
      end;

      QueryStr := 'Update tbl_accounts  set active=0 where account_id =''%s''';
      QueryStr := format(QueryStr,
        [PgQuery13.FieldByName('account_id').AsString]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Account is already assigned to this transaction');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton4Click()');
          end;
        end;
      end;
    end;
    PgQuery13.Next;
  end;

  PgQuery13.Active := False;
  PgQuery13.Active := True;

  if cbMultipleAccountsManual.Checked then
  begin
    PgQuery8.Active := False;
    PgQuery8.Active := True;
  end
  else if cbMultipleAccountsFixed.Checked then
  begin
    PgQuery9.Active := False;
    PgQuery9.Active := True;
  end;
end;

procedure TAddTransactionFrame.cxButton5Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  i: integer;
begin

  // DC := cxGrid1DBTableView1.DataController;
  // SelectedRow := DC.FocusedRowIndex;

  if cbMultipleAccountsManual.Checked then
  begin

    PgQuery8.DisableControls;
    PgQuery8.First;
    while not PgQuery8.Eof do
    begin
      if PgQuery8.FieldByName('active').AsInteger = 1 then
      begin

        QueryStr := 'DELETE FROM tbl_transactions_accounts_manual ' +
          'WHERE id = ' + PgQuery8.FieldByName('id').AsString;

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr);
        try
          PgSQL1.Execute();
        except
          on E: Exception do
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton5Click()');
          end;
        end;
        QueryStr :=
          'Update tbl_transactions_accounts_manual set active=0 where id=' +
          PgQuery8.FieldByName('id').AsString;

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr);
        try
          PgSQL1.Execute();
        except
          on E: Exception do
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton5Click()');
          end;
        end;
      end;
      PgQuery8.Next;
    end;
    PgQuery8.Active := False;
    PgQuery8.Active := True;
    PgQuery8.EnableControls;
    PgQuery13.Active := False;
    PgQuery13.Active := True;

  end
  else if cbMultipleAccountsFixed.Checked then
  begin
    PgQuery9.DisableControls;
    PgQuery9.First;
    while not PgQuery9.Eof do
    begin
      if PgQuery9.FieldByName('active').AsInteger = 1 then
      begin

        QueryStr := 'DELETE FROM tbl_transactions_accounts_fixed ' +
          'WHERE id = ' + PgQuery9.FieldByName('id').AsString;

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr);
        try
          PgSQL1.Execute();
        except
          on E: Exception do
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton5Click()');
          end;
        end;
        QueryStr :=
          'Update tbl_transactions_accounts_fixed set active=0 where id=' +
          PgQuery9.FieldByName('id').AsString;

        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr);
        try
          PgSQL1.Execute();
        except
          on E: Exception do
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton5Click()');
          end;
        end;
      end;
      PgQuery9.Next;
    end;
    PgQuery9.EnableControls;
    PgQuery9.Active := False;
    PgQuery9.Active := True;
    PgQuery13.Active := False;
    PgQuery13.Active := True;
  end
  else
  begin
    Information('Warning', 'Unknown error while editing multiple accounts');
    Exit;
  end;
end;

procedure TAddTransactionFrame.cxButton8Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGrid3DBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr := 'DELETE FROM tbl_transactions_users ' + 'WHERE id = ' +
      VarToStr(cxGrid3DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        HandleException(E, 'TAddTransactionFrame.cxButton8Click()');
      end;
    end;

    PgQuery7.Active := False;
    PgQuery7.Active := True;

  end;
end;

procedure TAddTransactionFrame.cxCheckBox_AllowGDClick(Sender: TObject);
begin
  inherited;
  if cxCheckBox_AllowGD.Checked then
  begin
    GroupBox4.Visible := True;
  end
  else
  begin
    GroupBox4.Visible := False;
    cxCheckBox_MainTransaction.Checked := False;
    cxCheckBox_Accauntfrom.Checked := False;
    cxCheckBox_Accoutto.Checked := False;
  end;
end;

procedure TAddTransactionFrame.
  cxGrid1DBTableView1is_defaultPropertiesEditValueChanged(Sender: TObject);
var
  QueryStr, NewValue, AccountId: WideString;
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  // If is_default changed then we clear all other rows at is_default

  DC := cxGrid1DBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  AccountId := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
    .Values[2]);
  NewValue := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow]
    .Values[4]);
  if NewValue = '1' then
  begin

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('UPDATE tbl_transactions_accounts_manual SET is_default = 0'
      + 'WHERE ' + 'id_transaction = ' + edId.Text);
    PgSQL1.Execute();

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('UPDATE tbl_transactions_accounts_manual SET is_default = 1 '
      + 'WHERE ' + 'id_transaction = ' + edId.Text + ' and ' + 'account_id = '''
      + AccountId + '''');
    PgSQL1.Execute();

    PgQuery8.Active := False;
    PgQuery8.Active := True;

  end;

end;

procedure TAddTransactionFrame.cxTabSheet1Show(Sender: TObject);
begin

  cbDirectionPropertiesChange(Sender);

end;

procedure TAddTransactionFrame.cxTabSheet3Show(Sender: TObject);
begin

  // Read-only values

  cbCategoryRO.EditValue := cbCategory.EditValue;
  edMinValueRO.Text := edMinValue.Text;
  edMaxValueRO.Text := edMaxValue.Text;
  cbDirectionRO.EditValue := cbDirection.EditValue;
  cbVisibleRO.Checked := cbVisible.Checked;
  // cbCloseOpenRO.Checked := cbCloseOpen.Checked;
  cbForChangeRO.Checked := cbForChange.Checked;
  // cbMultipleTransactionRO.Checked := cbMultipleTransaction.Checked;
  cbMultipleAccountsFixedRO.Checked := cbMultipleAccountsFixed.Checked;
  cxGrid13.Visible := cbMultipleAccountsFixedRO.Checked;
  cbMultipleAccountsManualRO.Checked := cbMultipleAccountsManual.Checked;
  cxGrid8.Visible := cbMultipleAccountsManualRO.Checked;
  cbNeedsConfirmationRO.Checked := cbNeedsConfirmation.Checked;
  cbMoneyLaundryRO.Checked := cbMoneyLaundry.Checked;
  cbLiveGamesTransactionRO.Checked := cbLiveGamesTransaction.Checked;
  if cbLiveGamesTransactionRO.Checked then
  begin
    cxLabel54.Show();
    cxLabel55.Show();
    cbLGFillFromAccountRO.Show();
    cbLGFillFromAccountRO.EditValue := cbLGFillFromAccount.EditValue;
    cbLGCreditToAccountRO.Show();
    cbLGCreditToAccountRO.EditValue := cbLGCreditToAccount.EditValue;
  end
  else
  begin
    cxLabel54.Hide();
    cxLabel55.Hide();
    cbLGFillFromAccountRO.Hide();
    cbLGCreditToAccountRO.Hide();
  end;
  cbPrintDirectRO.Checked := cbPrintDirect.Checked;
  if cbPrintDirectRO.Checked then
  begin
    cxLabel27.Show();
    cxLabel28.Show();
    cbHowManyCopiesRO.Show();
    cbHowManyCopiesRO.EditValue := cbHowManyCopies.EditValue;
    cbReportRO.Show();
    if cbReport.ItemIndex <> -1 then
    begin
      cbReportRO.EditValue :=
        Tid(cbReport.Properties.Items.Objects[cbReport.ItemIndex]).id;
    end;
  end
  else
  begin
    cxLabel27.Hide();
    cxLabel28.Hide();
    cbHowManyCopiesRO.Hide();
    cbReportRO.Hide();
  end;
  if cbNeedsConfirmation.Checked then
  begin
    cxLabel33.Show();
    cxLabel34.Show();
    cxLabel35.Show();
    cbCashierCanConfirmRO.Show();
    cbCashierCanConfirmRO.Checked := cbCashierCanConfirm.Checked;
    cbNeedsAuthorisationRO.Show();
    cbNeedsAuthorisationRO.Checked := cbNeedsAuthorisation.Checked;
    edConfirmationMinValueRO.Show();
    edConfirmationMinValueRO.Text := edConfirmationMinValue.Text;
    mConfirmationMessageRO.Show();
    mConfirmationMessageRO.Lines.Clear();
    mConfirmationMessageRO.Lines.Add(mConfirmationMessage.Lines.GetText);
  end
  else
  begin
    cxLabel33.Hide();
    cxLabel34.Hide();
    cxLabel35.Hide();
    cbCashierCanConfirmRO.Hide();
    cbNeedsAuthorisationRO.Hide();
    edConfirmationMinValueRO.Hide();
    mConfirmationMessageRO.Hide();
  end;
  cbSendRO.Checked := cbSend.Checked;
  edSurveillanceMinValueRO.Text := edSurveillanceMinValue.Text;
  cbExportFileRO.Checked := cbExportFile.Checked;
  edMoneyLaundryMinValueRO.Text := edMoneyLaundryMinValue.Text;

end;

destructor TAddTransactionFrame.Destroy;
var
  i: integer;
begin
  for i := 0 to cbReport.Properties.Items.Count - 1 do
  begin
    cbReport.Properties.Items.Objects[i].Free;
  end;
  inherited;
end;

procedure TAddTransactionFrame.edConfirmationMinValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.edMaxValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.edMinValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.edMoneyLaundryMinValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.edOrderExit(Sender: TObject);
var
  xQuery: string;
begin

  if bCancelling then
    Exit;

  if btnModifyTransaction.Visible then
    Exit;

  if edOrder.Text = '' then
  begin
    Information('Warning',
      'Please properly fill the order id field to initialise transaction');
    edOrder.SetFocus();
    Exit;
  end;

  // Add empty transaction if not exists

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add('SELECT * FROM tbl_transactions WHERE sort_order = ' +
    edOrder.Text);
  PgSQL1.Execute();
  if (PgSQL1.RowsAffected > 0) then
  begin
    Information('Warning',
      'Transaction with this order id has been already created');
    edOrder.Text := '';
    edOrder.SetFocus();
    Exit;
  end
  else
  begin
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('INSERT INTO tbl_transactions (sort_order) VALUES (' +
      edOrder.Text + ')');
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Transaction with this id has been already created');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddTransactionFrame.edOrderExit()');
        end;
      end;
    end;
    TransactionPages.Visible := True;
    PgQuery6.SQL.Clear();
    PgQuery6.SQL.Add('SELECT id FROM tbl_transactions WHERE sort_order = ''' +
      edOrder.Text + '''');
    PgQuery6.Active := True;
    PgQuery6.Open();
    if (PgQuery6.RecordCount > 0) then
    begin
      PgQuery6.First();
      edId.Text := PgQuery6.FieldByName('id').AsWideString;
    end
    else
    begin
      Information('Error', 'Internal error while creating empty transaction');
      edId.Text := '0';
    end;

    PgQuery7.SQL.Clear();
    PgQuery7.SQL.Add('select tu.*, u.user_name ' +
      'from tbl_transactions_users as tu, tbl_users as u ' +
      'where tu.id_user = u.id and tu.id_transaction = ' + edId.Text);
    PgQuery7.Active := False;
    PgQuery7.Active := True;

    PgQuery8.SQL.Clear();
    PgQuery8.SQL.Add('select tam.*, a.name ' +
      'from tbl_transactions_accounts_manual as tam ' +
      'left join tbl_accounts as a on a.account_id = tam.account_id ' +
      'where tam.id_transaction = ' + edId.Text);
    PgQuery8.Active := False;
    PgQuery8.Active := True;

    PgQuery9.SQL.Clear();
    PgQuery9.SQL.Add('select taf.* ' +
      'from tbl_transactions_accounts_fixed as taf ' +
      'where taf.id_transaction = ' + edId.Text);
    PgQuery9.Active := False;
    PgQuery9.Active := True;

    PgQuery5.SQL.Clear();

    xQuery := 'select tv.*, v.name,tbl_categories.name as category ' +
      'from tbl_transactions_values as tv, tbl_values as v ' +
      'left outer join tbl_categories on tbl_categories.id=v.id_category ' +
      'where tv.id_value = v.id and tv.id_transaction = ' + edId.Text;

    PgQuery5.SQL.Add(xQuery);
    PgQuery5.Active := False;
    PgQuery5.Active := True;

    cbCurrency.EditValue := DefaultCurrency;

  end;

end;

procedure TAddTransactionFrame.edOrderKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.edSurveillanceMinValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddTransactionFrame.RefreshReports;
var
  xQuery: string;
  xDatasSet: TResultHandle;
  i: integer;
  xid: Tid;
begin
  xQuery := ' Select id, name  from tbl_reports  order by name';
  cbReport.Properties.Items.Clear;
  for i := 0 to cbReport.Properties.Items.Count - 1 do
  begin
    cbReport.Properties.Items.Objects[i].Free;
  end;
  xDatasSet := TResultHandle.Create;
  xDatasSet.ClearResult;
  xDatasSet.Add(xQuery);
  xDatasSet.InvokeSQL;
  xDatasSet.First;
  for i := 0 to xDatasSet.Count - 1 do
  begin
    xid := Tid.Create;
    xid.index := i;
    xid.id := xDatasSet.query.FieldByName('id').AsInteger;
    cbReport.Properties.Items.AddObject(xDatasSet.query.FieldByName('name')
      .AsString, xid);
    xDatasSet.Next;
  end;
  xDatasSet.ClearResult;
  xDatasSet.Free;
end;

procedure TAddTransactionFrame.tabCashdesksShow(Sender: TObject);
begin

  PgQuery12.SQL.Clear();
  PgQuery12.SQL.Add('select t.*, c.cd_name from tbl_cd_transactions as t ' +
    'left join tbl_cd as c on t.id_cashdesk = c.id ' + 'where id_transaction = '
    + edId.Text);
  PgQuery12.Active := False;
  PgQuery12.Active := True;

end;

end.
