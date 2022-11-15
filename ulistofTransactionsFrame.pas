unit uListOfTransactionsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, MemDS, DBAccess, PgAccess, cxTL,
  cxCheckBox, cxTextEdit,uDatabase;

type
  TListOfTransactionsFrame = class(TBaseFrame)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnAddTransaction: TcxButton;
    btnModifyTransaction: TcxButton;
    btnDeleteTransaction: TcxButton;
    PgQuery1: TPgQuery;
    PgSQL1: TPgSQL;
    PgDataSource1: TPgDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1id_currency: TcxGridDBColumn;
    cxGrid1DBTableView1account_id_from: TcxGridDBColumn;
    cxGrid1DBTableView1account_id_to: TcxGridDBColumn;
    cxGrid1DBTableView1id_category: TcxGridDBColumn;
    cxGrid1DBTableView1direction: TcxGridDBColumn;
    cxGrid1DBTableView1min_value: TcxGridDBColumn;
    cxGrid1DBTableView1max_value: TcxGridDBColumn;
    cxGrid1DBTableView1is_visible: TcxGridDBColumn;
    cxGrid1DBTableView1is_for_change: TcxGridDBColumn;
    cxGrid1DBTableView1is_close_open: TcxGridDBColumn;
    cxGrid1DBTableView1is_money_laundry: TcxGridDBColumn;
    cxGrid1DBTableView1is_multiple_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1is_multiple_accounts_manual: TcxGridDBColumn;
    cxGrid1DBTableView1is_multiple_accounts_fixed: TcxGridDBColumn;
    cxGrid1DBTableView1is_live_games_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1print_direct: TcxGridDBColumn;
    cxGrid1DBTableView1how_many_copies: TcxGridDBColumn;
    cxGrid1DBTableView1id_report: TcxGridDBColumn;
    cxGrid1DBTableView1in_description: TcxGridDBColumn;
    cxGrid1DBTableView1out_description: TcxGridDBColumn;
    cxGrid1DBTableView1needs_confirmation: TcxGridDBColumn;
    cxGrid1DBTableView1cashier_can_confirm: TcxGridDBColumn;
    cxGrid1DBTableView1needs_authorisation_before_transaction: TcxGridDBColumn;
    cxGrid1DBTableView1confirmation_min_value: TcxGridDBColumn;
    cxGrid1DBTableView1confirmation_message: TcxGridDBColumn;
    cxGrid1DBTableView1surveillance_send: TcxGridDBColumn;
    cxGrid1DBTableView1surveillance_min_value: TcxGridDBColumn;
    cxGrid1DBTableView1money_laundry_export_file: TcxGridDBColumn;
    cxGrid1DBTableView1money_laundry_min_value: TcxGridDBColumn;
    cxGrid1DBTableView1live_games_account_id_fill_from: TcxGridDBColumn;
    cxGrid1DBTableView1live_games_account_id_credit_to: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
    cxGrid1DBTableView1name_1: TcxGridDBColumn;
    cxGrid1DBTableView1name_2: TcxGridDBColumn;
    cxGrid1DBTableView1use_current_cashdesk_account_instead_of_from: TcxGridDBColumn;
    cxGrid1DBTableView1use_current_cashdesk_account_instead_of_to: TcxGridDBColumn;
    cxGrid1DBTableView1sort_order: TcxGridDBColumn;
    cxGrid1DBTableView1use_in_transfer: TcxGridDBColumn;
    cxGrid1DBTableView_MainTransactionGD: TcxGridDBColumn;
    cxGrid1DBTableView_Acount_From_GD: TcxGridDBColumn;
    cxGrid1DBTableView_Acount_to_GD: TcxGridDBColumn;
    cxGrid1DBTableView1Column_allow_Change_GD: TcxGridDBColumn;
    PopupMenu: TPopupMenu;
    Ekxporttoexcel1: TMenuItem;
    procedure btnAddTransactionClick(Sender: TObject);
    procedure btnDeleteTransactionClick(Sender: TObject);
    procedure btnModifyTransactionClick(Sender: TObject);
    procedure Ekxporttoexcel1Click(Sender: TObject);
  public
    ListReports: TResultHandle;
    DefaultReport: TResultHandle;
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfTransactionsFrame: TListOfTransactionsFrame;

implementation

uses
  uAddTransactionFrame,
  uFrmMain,
  uSystem,
  uExceptions,
  uGlobals,
  uStrings,
  cxGridDBDataDefinitions, uExportsGrid;

{$R *.dfm}

procedure TListOfTransactionsFrame.btnAddTransactionClick(Sender: TObject);
var
  F : TAddTransactionFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(69));

  F := TAddTransactionFrame(frmMain.CurrentFrame());

  F.btnAddTransaction.Show();
  F.btnModifyTransaction.Hide();

  F.edOrder.Enabled := True;
  F.TransactionPages.Hide();

  F.edMinValue.Text := '0';
  F.edMaxValue.Text := '0';
  F.edSurveillanceMinValue.Text := '0';
  F.edMoneyLaundryMinValue.Text := '0';
  F.edConfirmationMinValue.Text := '0';
  F.cbReport.ItemIndex := -1;

end;

procedure TListOfTransactionsFrame.btnDeleteTransactionClick(Sender: TObject);
var
  SelectedRow, TransactionCount : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
  IdTransaction : WideString;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete transaction [' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]) + '] - are you sure ?') then
    begin

      IdTransaction := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);

      // Check if was used in tbl_cd_cash_transactions_subt_categories_values

      TransactionCount :=
        StrToInt(frmMain.GetFieldAsString
        (
          'select count(*) as cnt ' +
          'from tbl_cd_cash_transactions ' +
          'where id_cd_transaction = ' + IdTransaction,
          'cnt'
        ));

      if TransactionCount = 0 then // we can delete
      begin

        frmMain.ExecSQL('delete from tbl_transactions where id = ' + IdTransaction);
        frmMain.ExecSQL('delete from tbl_transactions_users where id_transaction = ' + IdTransaction);
        frmMain.ExecSQL('delete from tbl_transactions_values where id_transaction = ' + IdTransaction);
        frmMain.ExecSQL('delete from tbl_transactions_accounts where id_transaction = ' + IdTransaction);
        frmMain.ExecSQL('delete from tbl_multiple_transactions_transactions where id_transaction = ' + IdTransaction);

        cxGrid1DBTableView1.DataController.DataSet.Refresh();

      end
      else
      begin

        Information('Warning', 'Selected transaction was used in cash transaction - cannot be deleted');

      end;

    end;
  end
  else
  begin

    Information('Warning', 'Please select the transaction to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TListOfTransactionsFrame.btnModifyTransactionClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddTransactionFrame;
  xQuery : String;
  xDataSet : TResultHandle;
  i : Integer;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRecordIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(69));

    F := TAddTransactionFrame(frmMain.CurrentFrame);

    F.btnAddTransaction.Hide();
    F.btnModifyTransaction.Show();

    F.edId.Text := VarToStr(DC.Values[SelectedRow, 0]);
    F.edOrder.Text := VarToStr(DC.Values[SelectedRow, 1]);
    F.edName.Text := VarToStr(DC.Values[SelectedRow, 2]);
    F.cbCurrency.EditValue := VarToStr(DC.Values[SelectedRow, 3]);
    F.cbUseCurrentCashdeskInsteadOfFrom.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 5]));
    F.cbFromAccount.EditValue := VarToStr(DC.Values[SelectedRow, 6]);
    F.cbUseCurrentCashdeskInsteadOfTo.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 7]));
    F.cbToAccount.EditValue := VarToStr(DC.Values[SelectedRow, 8]);
    F.cbCategory.EditValue := VarToStr(DC.Values[SelectedRow, 9]);
    F.cbDirection.ItemIndex := StrToInt(VarToStr(DC.Values[SelectedRow, 11])) - 1;
    F.edMinValue.Text := VarToStr(DC.Values[SelectedRow, 12]);
    F.edMaxValue.Text := VarToStr(DC.Values[SelectedRow, 13]);
    F.cbVisible.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 14]));
    F.cbForChange.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 15]));
    //F.cbCloseOpen.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 16]));
    F.cbMoneyLaundry.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 17]));
    //F.cbMultipleTransaction.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 18]));
    F.cbMultipleAccountsManual.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 19]));
    F.cbMultipleAccountsFixed.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 20]));
    F.cbLiveGamesTransaction.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 21]));
    F.cbPrintDirect.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 22]));
    F.cbHowManyCopies.ItemIndex := StrToInt(VarToStr(DC.Values[SelectedRow, 23])) - 1;
   // F.cbReport.EditValue := '0'; // VarToStr(DC.Values[SelectedRow, 24);
    F.mINDescription.Lines.SetText(PWideChar(VarToStr(DC.Values[SelectedRow, 25])));
    F.mOUTDescription.Lines.SetText(PWideChar(VarToStr(DC.Values[SelectedRow, 26])));
    F.cbNeedsConfirmation.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 27]));
    F.cbCashierCanConfirm.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 28]));
    F.cbNeedsAuthorisation.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 29]));
    F.edConfirmationMinValue.Text := VarToStr(DC.Values[SelectedRow, 30]);
    F.mConfirmationMessage.Lines.SetText(PWideChar(VarToStr(DC.Values[SelectedRow, 31])));
    F.cbSend.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 32]));
    F.edSurveillanceMinValue.Text := VarToStr(DC.Values[SelectedRow, 33]);
    F.cbExportFile.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 34]));
    F.edMoneyLaundryMinValue.Text := VarToStr(DC.Values[SelectedRow, 35]);
    F.cbLGFillFromAccount.EditValue := VarToStr(DC.Values[SelectedRow, 36]);
    F.cbLGCreditToAccount.EditValue := VarToStr(DC.Values[SelectedRow, 37]);
    F.cbUseInTransfer.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 38]));
    f.cxCheckBox_MainTransaction.Checked:= MyStrToBool(VarToStr(DC.Values[SelectedRow, 39]));
    f.cxCheckBox_Accauntfrom.Checked:=MyStrToBool(VarToStr(DC.Values[SelectedRow, 40]));
    f.cxCheckBox_Accoutto.Checked:= MyStrToBool(VarToStr(DC.Values[SelectedRow, 41]));
    f.cxCheckBox_AllowGD.Checked:=  MyStrToBool(VarToStr(DC.Values[SelectedRow, 42]));

    if F.cxCheckBox_AllowGD.Checked then
    begin
      F.cxCheckBox_AllowGD.Checked:=true;
      F.GroupBox4.Visible:=true;
    end;

    // TODO: Post for all EditValue(s)

    F.edOrder.Enabled := False;
    F.TransactionPages.Show();

    F.PgQuery7.SQL.Clear();
    F.PgQuery7.SQL.Add
    (
      'select tu.*, u.user_name ' +
      'from tbl_transactions_users as tu, tbl_users as u ' +
      'where tu.id_user = u.id and tu.id_transaction = ' + F.edId.Text
    );
    F.PgQuery7.Active := False;
    F.PgQuery7.Active := True;

    F.PgQuery8.SQL.Clear();
    F.PgQuery8.SQL.Add
    (
      'select tam.*, a.name ' +
      'from tbl_transactions_accounts_manual as tam ' +
      'left join tbl_accounts as a on a.account_id = tam.account_id ' +
      'where tam.id_transaction = ' + F.edId.Text
    );
    F.PgQuery8.Active := False;
    F.PgQuery8.Active := True;

    F.PgQuery9.SQL.Clear();
    F.PgQuery9.SQL.Add
    (
      'select taf.* ' +
      'from tbl_transactions_accounts_fixed as taf ' +
      'where taf.id_transaction = ' + F.edId.Text
    );
    F.PgQuery9.Active := False;
    F.PgQuery9.Active := True;

    F.PgQuery5.SQL.Clear();
    F.PgQuery5.SQL.Add
    (
      'select tv.*, v.name, tbl_categories.name as category ' +
      'from tbl_transactions_values as tv, tbl_values as v ' +
      'left outer join tbl_categories on tbl_categories.id=v.id_category ' +
      'where tv.id_value = v.id and tv.id_transaction = ' + F.edId.Text
    );
    F.PgQuery5.Active := False;
    F.PgQuery5.Active := True;

    xQuery :=
      'select tbl_reports.name from tbl_transactions, tbl_reports ' +
      'where ' +
      '  tbl_reports.id = tbl_transactions.id_report and ' +
      '  tbl_transactions.id = ' + F.edId.Text;
    xDataSet := TResultHandle.Create;
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    xDataSet.InvokeSQL;
    xDataSet.First;
    if xDataSet.Count > 0 then
    begin
      F.cbReport.ItemIndex := F.cbReport.Properties.Items.IndexOf(xDataSet.query.FieldByName('name').AsString);
    end;
    xDataSet.ClearResult;
    xDataSet.Free;

  end
  else
  begin

    Information('Warning', 'Please select the transaction to modify.');

  end;

end;

constructor TListOfTransactionsFrame.Create(AOwner: TComponent);
begin
  inherited;
  Ekxporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfTransactionsFrame.Ekxporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
    TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
