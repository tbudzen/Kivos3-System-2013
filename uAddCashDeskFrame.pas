unit uAddCashDeskFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  cxLabel, cxTextEdit, cxMemo, Data.DB, DBAccess, PgAccess, MemDS, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGroupBox, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxCheckBox, cxTL, cxInplaceContainer, cxDBTL, cxTLData, cxCurrencyEdit;

type
  TAddCashDeskFrame = class(TBaseFrame)
    btnCancel: TcxButton;
    btnAddCashDesk: TcxButton;
    btnModifyCashDesk: TcxButton;
    edId: TcxTextEdit;
    lbValueName: TcxLabel;
    edName: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbAccount: TcxDBLookupComboBox;
    cbWorkstation: TcxDBLookupComboBox;
    PgDataSource1: TPgDataSource;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgTable5: TPgTable;
    PgDataSource5: TPgDataSource;
    cxLabel5: TcxLabel;
    edDescription: TcxMemo;
    PgSQL1: TPgSQL;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    cbIsATable: TcxCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel4: TcxLabel;
    cbAlwaysActive: TcxCheckBox;
    cbMustOpenDaily: TcxCheckBox;
    cbAllowClose: TcxCheckBox;
    cbUsedInChipBalance: TcxCheckBox;
    cbDefaultCarryover: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    cxGrid10: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBTableView8id: TcxGridDBColumn;
    cxGridDBTableView8name: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9id: TcxGridDBColumn;
    cxGridDBTableView9name: TcxGridDBColumn;
    cxGridDBTableView9multiplier: TcxGridDBColumn;
    cxGridDBTableView9name_1: TcxGridDBColumn;
    cxGridDBTableView9name_2: TcxGridDBColumn;
    cxGridDBTableView9symbol: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxLabel46: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel44: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    cxLabel7: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1order_id: TcxGridDBColumn;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1symbol: TcxGridDBColumn;
    cxGrid1DBTableView1account_id_to: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1order_id: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1symbol: TcxGridDBColumn;
    cxGridDBTableView1account_id_to: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel8: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxLabel9: TcxLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxLabel10: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cbCarryOver: TcxCheckBox;
    cbAutomatic: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    btnSaveChanges: TcxButton;
    PgQuery3: TPgQuery;
    PgQuery4: TPgQuery;
    PgQuery5: TPgQuery;
    PgDataSource3: TPgDataSource;
    PgDataSource6: TPgDataSource;
    PgDataSource7: TPgDataSource;
    PgQuery7: TPgQuery;
    PgQuery8: TPgQuery;
    PgQuery9: TPgQuery;
    PgDataSource9: TPgDataSource;
    PgDataSource10: TPgDataSource;
    PgDataSource11: TPgDataSource;
    PgQuery6: TPgQuery;
    cxGrid1DBTableView1id_transaction: TcxGridDBColumn;
    cxGridDBTableView2id: TcxGridDBColumn;
    cxGridDBTableView2name: TcxGridDBColumn;
    cxGridDBTableView2description: TcxGridDBColumn;
    cxGridDBTableView2must_be_balanced: TcxGridDBColumn;
    cxGridDBTableView3id: TcxGridDBColumn;
    cxGridDBTableView3name: TcxGridDBColumn;
    edFixedAmount: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxGridDBTableView9id_category: TcxGridDBColumn;
    PgQuery11: TPgQuery;
    PgDataSource12: TPgDataSource;
    PgQuery12: TPgQuery;
    PgDataSource13: TPgDataSource;
    cbCategory: TcxDBLookupComboBox;
    PgDataSource14: TPgDataSource;
    PgDataSource15: TPgDataSource;
    PgQuery13: TPgQuery;
    PgQuery14: TPgQuery;
    cbOpenAccount: TcxDBLookupComboBox;
    cbDiffOpenAccount: TcxDBLookupComboBox;
    cbCloseAccount: TcxDBLookupComboBox;
    cbDiffCloseAccount: TcxDBLookupComboBox;
    PgDataSource16: TPgDataSource;
    PgQuery15: TPgQuery;
    PgDataSource17: TPgDataSource;
    PgQuery16: TPgQuery;
    PgDataSource18: TPgDataSource;
    PgQuery17: TPgQuery;
    PgDataSource19: TPgDataSource;
    PgQuery18: TPgQuery;
    PgDataSource20: TPgDataSource;
    PgQuery19: TPgQuery;
    PgDataSource21: TPgDataSource;
    PgQuery20: TPgQuery;
    cxGridDBTableView8id_category: TcxGridDBColumn;
    cxGridDBTableView8name_1: TcxGridDBColumn;
    cxDBTreeList1: TcxDBTreeList;
    PgQuery22: TPgQuery;
    PgDataSource22: TPgDataSource;
    PgQuery21: TPgQuery;
    cxDBTreeList1parent_id: TcxDBTreeListColumn;
    cxDBTreeList1id: TcxDBTreeListColumn;
    cxDBTreeList1value_id: TcxDBTreeListColumn;
    cxDBTreeList1id_cashdesk: TcxDBTreeListColumn;
    cxDBTreeList1id_account_open: TcxDBTreeListColumn;
    cxDBTreeList1id_account_diff_open: TcxDBTreeListColumn;
    cxDBTreeList1id_account_close: TcxDBTreeListColumn;
    cxDBTreeList1id_account_diff_close: TcxDBTreeListColumn;
    cxDBTreeList1carryover: TcxDBTreeListColumn;
    cxDBTreeList1automatic: TcxDBTreeListColumn;
    cxDBTreeList1fixed_amount: TcxDBTreeListColumn;
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
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxGridDBTableViewColumn_Ord: TcxGridDBColumn;
    cxGrid1DBTableView1Column_Ord: TcxGridDBColumn;
    cxGridDBTableView9Column_Ord: TcxGridDBColumn;
    cxGridDBTableView8useinTblCout: TcxGridDBColumn;
    cxGridDBTableView8Column1: TcxGridDBColumn;
    PopupMenu_Val: TPopupMenu;
    PopupMenu_Posible: TPopupMenu;
    Exporttoexcel1: TMenuItem;
    exporttoexcel2: TMenuItem;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    cxGridDBTableView8Column2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyCashDeskClick(Sender: TObject);
    procedure btnAddCashDeskClick(Sender: TObject);
    procedure edNameExit(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure btnSaveChangesClick(Sender: TObject);
    procedure edFixedAmountKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTreeList1FocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure Exporttoexcel1Click(Sender: TObject);
    procedure exporttoexcel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    function ValidateFields(): Boolean;
    procedure FillMoveValues();
  end;

var
  AddCashDeskFrame: TAddCashDeskFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain,
  uStrings,
  cxGridDBDataDefinitions, uGlobals, uExportsGrid;

{$R *.dfm}

function TAddCashDeskFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if (edName.Text = '') then
  begin
    Warning('You must fill the cash desk name field.');
    Result := False;
    Exit;
  end;

  if (cbAccount.EditText = '') then
  begin
    Warning('You must fill the cash desk account field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddCashDeskFrame.btnAddCashDeskClick(Sender: TObject);
var
  QueryStr: WideString;
begin

  if not ValidateFields() then
    Exit;

  QueryStr := 'UPDATE tbl_cd ' + 'SET ' + '  cd_name = ''' + edName.Text +
    ''', ' + '  account_id = ''' + cbAccount.Text + ''', ' +
    '  id_workstation = ' + cbWorkstation.DataBinding.Field.DisplayText + ', ' +
    '  description = ''' + edDescription.Text + ''', ' + '  is_a_table = ' +
    MyBoolToIntStr(cbIsATable.Checked) + ', ' + '  always_active = ' +
    MyBoolToIntStr(cbAlwaysActive.Checked) + ', ' + '  must_open_daily = ' +
    MyBoolToIntStr(cbMustOpenDaily.Checked) + ', ' + '  allow_close = ' +
    MyBoolToIntStr(cbAllowClose.Checked) + ', ' + '  used_in_chip_balance = ' +
    MyBoolToIntStr(cbUsedInChipBalance.Checked) + ', ' +
    '  default_carryover = ' + MyBoolToIntStr(cbDefaultCarryover.Checked) + ' '
    + 'WHERE ' + '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'Cash desk with such name is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddCashDeskFrame.btnAddCashDeskClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddCashDeskFrame.btnCancelClick(Sender: TObject);
begin

  if btnAddCashDesk.Visible and (edName.Text <> '') then
  begin

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add('DELETE FROM tbl_cd WHERE cd_name = ''' +
      edName.Text + '''');
    PgSQL1.Execute();

    if edId.Text <> '' then
    begin

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add('DELETE FROM tbl_cd_values WHERE id_cashdesk = ' +
        edId.Text);
      PgSQL1.Execute();

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add('DELETE FROM tbl_cd_transactions WHERE id_cashdesk = ' +
        edId.Text);
      PgSQL1.Execute();

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add
        ('DELETE FROM tbl_cd_multiple_transactions WHERE id_cashdesk = ' +
        edId.Text);
      PgSQL1.Execute();

    end;

    Information('Information', 'Cash desk with name = [' + edName.Text +
      '] cancelled (deleted)');

  end;

  SendMainMessage('close|current');

end;

procedure TAddCashDeskFrame.btnModifyCashDeskClick(Sender: TObject);
var
  QueryStr: WideString;
begin

  if not ValidateFields() then
    Exit;

  QueryStr := 'UPDATE ' + '  tbl_cd ' + 'SET ' + '  cd_name = ''' + edName.Text
    + ''', ' + '  account_id = ''' + cbAccount.Text + ''', ' +
    '  id_workstation = ' + cbWorkstation.DataBinding.Field.DisplayText + ', ' +
    '  description = ''' + edDescription.Text + ''', ' + '  is_a_table = ' +
    MyBoolToIntStr(cbIsATable.Checked) + ', ' + '  always_active = ' +
    MyBoolToIntStr(cbAlwaysActive.Checked) + ', ' + '  must_open_daily = ' +
    MyBoolToIntStr(cbMustOpenDaily.Checked) + ', ' + '  allow_close = ' +
    MyBoolToIntStr(cbAllowClose.Checked) + ', ' + '  used_in_chip_balance = ' +
    MyBoolToIntStr(cbUsedInChipBalance.Checked) + ', ' +
    '  default_carryover = ' + MyBoolToIntStr(cbDefaultCarryover.Checked) +
    'WHERE ' + '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      HandleException(E, 'TAddCashDeskFrame.btnModifyCashDeskClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddCashDeskFrame.btnSaveChangesClick(Sender: TObject);
var
  DC: TcxDBTreeListDataController;
  RowNr: Integer;
  QueryStr: WideString;
begin

  DC := cxDBTreeList1.DataController;
  RowNr := cxDBTreeList1.DataController.FocusedRowIndex;

  // If value_id = -1 then we update categories else values

  if VarToStr(cxDBTreeList1.FocusedNode.Values[2]) = '-1' then
  begin

    QueryStr := 'UPDATE ' + '  tbl_cd_move_categories ' + 'SET ' +
      '  id_account_open = ''' + cbOpenAccount.EditValue + ''', ' +
      '  id_account_diff_open = ''' + cbDiffOpenAccount.EditValue + ''', ' +
      '  id_account_close = ''' + cbCloseAccount.EditValue + ''', ' +
      '  id_account_diff_close = ''' + cbDiffCloseAccount.EditValue + ''', ' +
      '  carryover = ' + MyBoolToIntStr(cbCarryOver.Checked) + ', ' +
      '  automatic = ' + MyBoolToIntStr(cbAutomatic.Checked) + ', ' +
      '  fixed_amount = ' + edFixedAmount.Text + ' ' + 'WHERE ' + '  id = ' +
      VarToStr(cxDBTreeList1.FocusedNode.Values[11]);

  end
  else
  begin

    QueryStr := 'UPDATE ' + '  tbl_cd_move_categories_values ' + 'SET ' +
      '  id_account_open = ''' + cbOpenAccount.EditValue + ''', ' +
      '  id_account_diff_open = ''' + cbDiffOpenAccount.EditValue + ''', ' +
      '  id_account_close = ''' + cbCloseAccount.EditValue + ''', ' +
      '  id_account_diff_close = ''' + cbDiffCloseAccount.EditValue + ''', ' +
      '  carryover = ' + MyBoolToIntStr(cbCarryOver.Checked) + ', ' +
      '  automatic = ' + MyBoolToIntStr(cbAutomatic.Checked) + ', ' +
      '  fixed_amount = ' + edFixedAmount.Text + ' ' + 'WHERE ' + '  id = ' +
      VarToStr(cxDBTreeList1.FocusedNode.Values[2]);

  end;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      HandleException(E, 'TAddCashDeskFrame.btnSaveChangesClick()');
    end;
  end;

  PgQuery22.Active := False;
  PgQuery22.Active := True;

end;

constructor TAddCashDeskFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel2.Caption := cPopMenu_eksport_toExcel;
  Exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TAddCashDeskFrame.cxButton3Click(Sender: TObject);
var
  QueryStr, QueryStr2: WideString;
  RecCount: Integer;
begin
  PgQuery7.DisableControls;
  PgQuery7.First;
  while not PgQuery7.Eof do
  begin
    if PgQuery7.FieldByName('active').AsInteger = 1 then
    begin

      QueryStr := 'DELETE FROM tbl_cd_values ' + ' WHERE id = ' +
        PgQuery7.FieldByName('id').AsString;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TAddCashDeskFrame.cxButton3Click()');
        end;
      end;

      // If there's no value in given category to delete
      // (if we delete last value with given category)
      // we can delete category from tbl_cd_move_categories
      // and of course values from tbl_cd_move_categories_values

      QueryStr2 := 'SELECT ' + '  count(*) as cnt ' + 'FROM ' +
        '  tbl_cd_values ' + 'WHERE ' + '  id_cashdesk = ' + edId.Text + ' and '
        + '  id_category = ' + PgQuery7.FieldByName('id_category').AsString;
      PgQuery21.Active := False;
      PgQuery21.SQL.Clear();
      PgQuery21.SQL.Add(QueryStr2);
      PgQuery21.Active := True;

      if PgQuery21.RecordCount > 0 then
      begin
        RecCount := PgQuery21.FieldByName('cnt').AsInteger;
        if RecCount = 0 then
        begin

          QueryStr := 'DELETE FROM tbl_cd_move_categories ' + 'WHERE ' +
            '  id_cashdesk = ' + edId.Text + ' and ' + '  id_category = ' +
            PgQuery7.FieldByName('id_category').AsString;
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

          QueryStr := 'DELETE FROM tbl_cd_move_categories_values ' + 'WHERE ' +
            '  id_cashdesk = ' + edId.Text + ' and ' +
            '  id_cd_move_category = ' + PgQuery7.FieldByName
            ('id_category').AsString;
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

        end;
      end;
      QueryStr := 'Update tbl_values set active=0 where id=%s';
      QueryStr := format(QueryStr, [PgQuery3.FieldByName('id').AsString]);

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
              'Value is already assigned to this cashdesk');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddTransactionFrame.cxButton8Click()');
          end;
        end;
      end;

    end;
    PgQuery7.Next;
  end;
  PgQuery3.Active := False;
  PgQuery3.Active := True;

  PgQuery7.Active := False;
  PgQuery7.Active := True;
  PgQuery7.EnableControls;

  PgQuery22.Active := False;
  PgQuery22.Active := True;

end;

procedure TAddCashDeskFrame.FillMoveValues();
var
  DC: TcxDBTreeListDataController;
  RowNr: Integer;
  QueryStr: WideString;
begin

  DC := cxDBTreeList1.DataController;

  if cxDBTreeList1.FocusedNode <> nil then
  begin

    cbCategory.Text := VarToStr(cxDBTreeList1.FocusedNode.Values[0]);

    cbCarryOver.Checked :=
      MyStrToBool(VarToStr(cxDBTreeList1.FocusedNode.Values[8]));
    cbAutomatic.Checked :=
      MyStrToBool(VarToStr(cxDBTreeList1.FocusedNode.Values[9]));
    edFixedAmount.Text := VarToStr(cxDBTreeList1.FocusedNode.Values[10]);

    cbOpenAccount.EditValue := VarToStr(cxDBTreeList1.FocusedNode.Values[4]);
    cbDiffOpenAccount.EditValue :=
      VarToStr(cxDBTreeList1.FocusedNode.Values[5]);
    cbCloseAccount.EditValue := VarToStr(cxDBTreeList1.FocusedNode.Values[6]);
    cbDiffCloseAccount.EditValue :=
      VarToStr(cxDBTreeList1.FocusedNode.Values[7]);

    cbOpenAccount.PostEditValue();
    cbDiffOpenAccount.PostEditValue();
    cbCloseAccount.PostEditValue();
    cbDiffCloseAccount.PostEditValue();

  end;

end;

procedure TAddCashDeskFrame.cxButton4Click(Sender: TObject);
var
  QueryStr, TestQueryStr2, QueryStr2, QueryStr3: WideString;
  bFirstValueInCategory: Boolean;
  // SelectedRow: Integer;
  // DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  i: Integer;
  xTemp: string;
begin

  // Add value

  // DC := cxGridDBTableView9.DataController;
  // SelectedRow := DC.FocusedRowIndex;

  // for i := 0 to cxGridDBTableView9.ViewData.RecordCount-1 do  begin
  PgQuery3.ParamByName('id_cashDesk_param').AsString := VarToStr(edId.Text);
  PgQuery3.DisableControls;
  PgQuery3.First;
  while not PgQuery3.Eof do
  begin
    if PgQuery3.FieldByName('active').AsInteger = 1 then
    begin

      QueryStr :=
        'INSERT INTO tbl_cd_values (id_cashdesk, id_value, id_category,ord) ' +
        'VALUES ' + '(' + VarToStr(edId.Text) + ', ' +
      { VarToStr(cxGridDBTableView9.ViewData.Rows[SelectedRow].Values[0]) }
        PgQuery3.FieldByName('id').AsString + ', ' +
      { VarToStr(cxGridDBTableView9.ViewData.Rows[SelectedRow].Values[1]) }
        PgQuery3.FieldByName('id_category').AsString + ',' +
      { VarToStr(cxGridDBTableView9.ViewData.Rows[SelectedRow].Values[7]) }
        PgQuery3.FieldByName('sort_order').AsString + ')';

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
              'Value is already assigned to this cashdesk');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddCashDeskFrame.cxButton4Click()');
          end;
        end;
      end;


      // If we have first value in given category (cnt = 0),
      // then we add this category

      TestQueryStr2 := 'SELECT ' + '  count(*) as cnt ' + 'FROM ' +
        '  tbl_cd_move_categories_values ' + 'WHERE ' + '  id_cashdesk = ' +
        VarToStr(edId.Text) + ' and ' + '  id_cd_move_category = ' +
        PgQuery3.FieldByName('id_category').AsString;
      // VarToStr(cxGridDBTableView9.ViewData.Rows[SelectedRow].Values[1]);

      PgQuery21.Active := False;
      PgQuery21.SQL.Clear();
      PgQuery21.SQL.Add(TestQueryStr2);
      PgQuery21.Active := True;

      bFirstValueInCategory := (PgQuery21.FieldByName('cnt').AsInteger = 0);

      if bFirstValueInCategory then
      begin
        QueryStr2 := 'INSERT INTO tbl_cd_move_categories ' + '( ' +
          '  id_cashdesk, ' + '  id_category ' + ') ' + 'VALUES ' + '( ' +
          VarToStr(edId.Text) + ', ' + PgQuery3.FieldByName('id_category')
          .AsString + ')';
        PgSQL1.SQL.Clear();
        PgSQL1.SQL.Add(QueryStr2);
        try
          PgSQL1.Execute();
        except
          on E: Exception do
          begin
            if Pos('uq_', E.Message) > 0 then
            begin
              Information('Warning',
                'Category with given value is already assigned to this cashdesk');
              Exit;
            end
            else
            begin
              HandleException(E, 'TAddCashDeskFrame.cxButton4Click()');
            end;
          end;
        end;
      end;

      QueryStr3 := 'INSERT INTO tbl_cd_move_categories_values ' + '( ' +
        '  id_cashdesk, ' + '  id_cd_move_category, ' + '  id_cd_value, ' +
        '  id_account_open, ' + '  id_account_diff_open, ' +
        '  id_account_close, ' + '  id_account_diff_close, ' + '  carryover, ' +
        '  automatic, ' + '  fixed_amount ' + ') ' + 'VALUES ' + '(' +
        VarToStr(edId.Text) + ', ' + PgQuery3.FieldByName('id_category')
        .AsString + ', ' + PgQuery3.FieldByName('id').AsString + ', ' + '''''' +
        ', ' + '''''' + ', ' + '''''' + ', ' + '''''' + ', ' + '0, ' + '0, ' +
        '0.0 ' + ')';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr3);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Value is already assigned to this cashdesk');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddCashDeskFrame.cxButton4Click()');
          end;
        end;
      end;

      QueryStr3 := 'Update tbl_values set active=0 where id=%s';
      QueryStr3 := format(QueryStr3, [PgQuery3.FieldByName('id').AsString]);

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr3);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          if Pos('uq_', E.Message) > 0 then
          begin
            Information('Warning',
              'Value is already assigned to this cashdesk');
            Exit;
          end
          else
          begin
            HandleException(E, 'TAddCashDeskFrame.cxButton4Click()');
          end;
        end;
      end;

    end;

    PgQuery3.Next();

  end;
  PgQuery3.Active := False;
  PgQuery3.Active := True;
  PgQuery3.EnableControls;

  PgQuery7.Active := False;
  PgQuery7.Active := True;

  PgQuery22.Active := False;
  PgQuery22.Active := True;
end;

procedure TAddCashDeskFrame.cxButton5Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin
  PgQuery4.DisableControls;
  PgQuery4.ParamByName('idcashdesk').AsString := VarToStr(edId.Text);
  PgQuery4.First;
  while not PgQuery4.Eof do
  begin
    if PgQuery4.FieldByName('active').AsInteger = 1 then
    begin

      QueryStr :=
        'INSERT INTO tbl_cd_transactions (id_cashdesk, id_transaction) ' +

        'VALUES ' + '(' + VarToStr(edId.Text) + ', ' +
        PgQuery4.FieldByName('id').AsString + ')';

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
            HandleException(E, 'TAddCashDeskFrame.cxButton5Click()');
          end;
        end;
      end;

      QueryStr := 'Update tbl_transactions set active=0 where id=%s';
      QueryStr := format(QueryStr, [PgQuery4.FieldByName('id').AsString]);
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
            HandleException(E, 'TAddCashDeskFrame.cxButton5Click()');
          end;
        end;
      end;

    end;
    PgQuery4.Next;
  end;
  PgQuery4.Active := False;
  PgQuery4.Active := True;
  PgQuery4.EnableControls;

  PgQuery8.Active := False;
  PgQuery8.Active := True;

end;

procedure TAddCashDeskFrame.cxButton6Click(Sender: TObject);
var
  QueryStr: WideString;
begin
  PgQuery8.DisableControls;
  PgQuery8.First;
  while not PgQuery8.Eof do
  begin
    if PgQuery8.FieldByName('active').AsInteger = 1 then
    begin

      QueryStr := 'DELETE FROM tbl_cd_transactions ' + 'WHERE id = ' +
        PgQuery8.FieldByName('id').AsString;

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton6Click()');
        end;
      end;

      QueryStr := 'Update tbl_cd_transactions set active=0 where id=%s';
      QueryStr := format(QueryStr, [PgQuery8.FieldByName('id').AsString]);
      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);
      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TAddTransactionFrame.cxButton6Click()');
        end;
      end;

    end;
    PgQuery8.Next;
  end;

  PgQuery8.Active := False;
  PgQuery8.Active := True;
  PgQuery8.EnableControls;

  PgQuery4.Active := False;
  PgQuery4.Active := True;

end;

procedure TAddCashDeskFrame.cxButton7Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  // Add value

  DC := cxGridDBTableView2.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr :=
      'INSERT INTO tbl_cd_multiple_transactions (id_cashdesk, id_multiple_transaction) VALUES '
      + '(' + VarToStr(edId.Text) + ', ' +
      VarToStr(cxGridDBTableView2.ViewData.Rows[SelectedRow].Values[0]) + ')';

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
            'Multiple transaction is already assigned to this cashdesk');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddCashDeskFrame.cxButton7Click()');
        end;
      end;
    end;

    PgQuery9.Active := False;
    PgQuery9.Active := True;

  end;
end;

procedure TAddCashDeskFrame.cxButton8Click(Sender: TObject);
var
  QueryStr: WideString;
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGridDBTableView3.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if SelectedRow >= 0 then
  begin

    QueryStr := 'DELETE FROM tbl_cd_multiple_transactions ' + 'WHERE id = ' +
      VarToStr(cxGridDBTableView3.ViewData.Rows[SelectedRow].Values[0]);

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
    PgQuery9.Active := False;
    PgQuery9.Active := True;
  end;
end;

procedure TAddCashDeskFrame.cxDBTreeList1FocusedNodeChanged
  (Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
var
  DC: TcxDBTreeListDataController;
  RowNr: Integer;
  bDetailsVisible: Boolean;
begin

  bDetailsVisible := True;
  // if AFocusedNode <> nil then
  // begin
  // bDetailsVisible := (StrToInt(VarToStr(AFocusedNode.Values[2])) = -1);
  // end;

  cbCategory.Visible := bDetailsVisible;
  cbCarryOver.Visible := bDetailsVisible;
  cbAutomatic.Visible := bDetailsVisible;
  btnSaveChanges.Visible := bDetailsVisible;
  cxLabel11.Visible := bDetailsVisible;
  cxLabel12.Visible := bDetailsVisible;
  cxLabel13.Visible := bDetailsVisible;
  cxLabel14.Visible := bDetailsVisible;
  cxLabel15.Visible := bDetailsVisible;
  cxLabel16.Visible := bDetailsVisible;
  cxLabel17.Visible := bDetailsVisible;
  cxLabel18.Visible := bDetailsVisible;
  cbOpenAccount.Visible := bDetailsVisible;
  cbDiffOpenAccount.Visible := bDetailsVisible;
  cbCloseAccount.Visible := bDetailsVisible;
  cbDiffCloseAccount.Visible := bDetailsVisible;
  edFixedAmount.Visible := bDetailsVisible;

  if bDetailsVisible then
    FillMoveValues();

end;

procedure TAddCashDeskFrame.cxTabSheet2Show(Sender: TObject);
begin
  PgQuery7.Active := False;
  PgQuery7.Active := True;
  PgQuery3.Active := False;
  PgQuery3.Active := True;
end;

procedure TAddCashDeskFrame.cxTabSheet5Show(Sender: TObject);
var
  bSubareaVisible: Boolean;
begin

  PgQuery22.Active := False;
  PgQuery22.Active := True;

  // If there's no rows then we hide editable subarea

  bSubareaVisible := (PgQuery22.RecordCount > 0);

  cxLabel11.Visible := bSubareaVisible;
  cxLabel12.Visible := bSubareaVisible;
  cxLabel13.Visible := bSubareaVisible;
  cxLabel14.Visible := bSubareaVisible;
  cxLabel15.Visible := bSubareaVisible;
  cxLabel16.Visible := bSubareaVisible;
  cxLabel17.Visible := bSubareaVisible;
  cxLabel18.Visible := bSubareaVisible;
  cbCategory.Visible := bSubareaVisible;
  cbOpenAccount.Visible := bSubareaVisible;
  cbDiffOpenAccount.Visible := bSubareaVisible;
  cbCloseAccount.Visible := bSubareaVisible;
  cbDiffCloseAccount.Visible := bSubareaVisible;
  cbCarryOver.Visible := bSubareaVisible;
  cbAutomatic.Visible := bSubareaVisible;
  btnSaveChanges.Visible := bSubareaVisible;
  edFixedAmount.Visible := bSubareaVisible;
  // btnDeleteMoveValue.Visible  := bSubareaVisible;
  cxGroupBox1.Visible := bSubareaVisible;

  if bSubareaVisible then
  begin
    FillMoveValues();
  end;

end;

procedure TAddCashDeskFrame.edFixedAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddCashDeskFrame.edNameExit(Sender: TObject);
begin

  if btnModifyCashDesk.Visible then
    Exit;

  if edName.Text = '' then
  begin
    Information('Warning',
      'Please properly fill the name field to initialise cash desk');
    edName.SetFocus();
    Exit;
  end;

  // Add empty transaction if not exists

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add('SELECT * FROM tbl_cd WHERE cd_name = ''' +
    edName.Text + '''');
  PgSQL1.Execute();
  if (PgSQL1.RowsAffected > 0) then
  begin
    Information('Warning',
      'Cash desk with this name id has been already created');
    edName.Text := '';
    edName.SetFocus();
    Exit;
  end
  else
  begin
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add
      ('INSERT INTO tbl_cd (cd_name, is_a_table, always_active, must_open_daily, allow_close, used_in_chip_balance, default_carryover) '
      + 'VALUES (''' + edName.Text + ''', 0, 0, 0, 0, 0, 0)');
    try
      PgSQL1.Execute();
    except
      on E: Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning',
            'Cash desk with this name has been already created');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddCashDeskFrame.edNameExit()');
        end;
      end;
    end;
    Information('Information', 'Cash desk with name = [' + edName.Text +
      '] created for edition');

    PgQuery6.SQL.Clear();
    PgQuery6.SQL.Add('SELECT id FROM tbl_cd WHERE cd_name = ''' +
      edName.Text + '''');
    PgQuery6.Active := True;
    PgQuery6.Open();
    if (PgQuery6.RecordCount > 0) then
    begin
      PgQuery6.First();
      edId.Text := PgQuery6.FieldByName('id').AsWideString;
    end
    else
    begin
      Information('Error', 'Internal error while creating empty cash desk');
      edId.Text := '0';
    end;

    // ----------------------------------------------------------------------

    PgQuery7.SQL.Clear();
    PgQuery7.SQL.Add('select ' + '  cdv.*, v.name, cat.name  ' + 'from ' +
      '  tbl_cd_values as cdv, ' + '  tbl_values as v, ' +
      '  tbl_categories as cat ' + 'where ' + '  cdv.id_value = v.id and ' +
      '  cdv.id_cashdesk = ' + edId.Text + ' and ' +
      '  cdv.id_category = cat.id');
    PgQuery7.Active := False;
    PgQuery7.Active := True;

    PgQuery8.SQL.Clear();
    PgQuery8.SQL.Add('select ' +
      '  cdt.*, t.sort_order, t.name, t.account_id_to, curr.symbol ' + 'from ' +
      '  tbl_cd_transactions as cdt, ' + '  tbl_transactions as t, ' +
      '  tbl_currencies as curr ' + 'where ' +
      '  cdt.id_transaction = t.id and ' + '  cdt.id_cashdesk = ' + edId.Text +
      ' and ' + '  t.id_currency = curr.id');
    PgQuery8.Active := False;
    PgQuery8.Active := True;

    PgQuery9.SQL.Clear();
    PgQuery9.SQL.Add('select ' + '  cdmt.*, mt.name ' + 'from ' +
      '  tbl_cd_multiple_transactions as cdmt, ' +
      '  tbl_multiple_transactions as mt ' + 'where ' +
      '  cdmt.id_multiple_transaction = mt.id and ' + '  cdmt.id_cashdesk = ' +
      edId.Text);
    PgQuery9.Active := False;
    PgQuery9.Active := True;

    PgQuery22.SQL.Clear();
    PgQuery22.SQL.Add('  select ' + '    '''' as parent_id, ' +
      '    c.name as id, ' + '    c.id as id_category, ' +
      '    -1 as value_id, ' + '    cdmc.id_cashdesk, ' +
      '    '''' as id_account_open, ' + '    '''' as id_account_diff_open, ' +
      '    '''' as id_account_close, ' + '    '''' as id_account_diff_close, ' +
      '    0 as carryover, ' + '    0 as automatic, ' +
      '    0 as fixed_amount, ' + '    cdmc.id as id_move_category ' + '  from '
      + '    tbl_cd_move_categories as cdmc ' +
      '    left join tbl_categories as c on cdmc.id_category = c.id ' +
      '  where  ' + '    cdmc.id_cashdesk = ' + edId.Text + ' and ' + 'exists '
      + '( ' + '  select cdmcv.id_cd_move_category from tbl_cd_move_categories_values as cdmcv'
      + '  where ' + '    cdmcv.id_cashdesk = ' + edId.Text + ' and ' +
      '    cdmcv.id_cd_move_category = id_category ' + ') ' +
      '  group by c.name, c.id, cdmc.id_cashdesk, cdmc.id ' + '' + 'union ' + ''
      + 'select ' + '  c.name as parent_id, ' + '  v.name as id, ' +
      '  c.id as id_category, ' + '  cdmcv.id as value_id, ' +
      '  cdmcv.id_cashdesk, ' + '  cdmcv.id_account_open, ' +
      '  cdmcv.id_account_diff_open, ' + '  cdmcv.id_account_close, ' +
      '  cdmcv.id_account_diff_close, ' + '  cdmcv.carryover, ' +
      '  cdmcv.automatic, ' + '  cdmcv.fixed_amount, ' +
      '  cdmcv.id_cd_move_category as id_move_category ' + 'from ' +
      '  tbl_cd_move_categories_values as cdmcv, ' +
      '  tbl_categories as c left join tbl_values as v on v.id_category = c.id '
      + 'where ' + '  cdmcv.id_cashdesk = ' + edId.Text + ' and ' +
      '  cdmcv.id_cd_move_category = c.id and ' + '  cdmcv.id_cd_value = v.id'

      );
    PgQuery22.Active := False;
    PgQuery22.Active := True;
    cxPageControl1.Visible := True;
  end;
end;

procedure TAddCashDeskFrame.Exporttoexcel1Click(Sender: TObject);

begin
  inherited;
  if cxPageControl1.ActivePage = cxTabSheet2 then
  begin
    if cxGridDBTableView8.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid10);
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet5 then
  begin
    if cxDBTreeList1.DataController.RecordCount > 0 then
    begin
      TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList1);
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet3 then
  begin
    if cxGrid1DBTableView1.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid1);
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet4 then
  begin
    if cxGridDBTableView3.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid4);
    end;
  end;
end;

procedure TAddCashDeskFrame.exporttoexcel2Click(Sender: TObject);
begin
  inherited;
  if cxPageControl1.ActivePage = cxTabSheet2 then
  begin
    if cxGridDBTableView9.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid11);
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet5 then
  begin
    // Brak
  end
  else if cxPageControl1.ActivePage = cxTabSheet3 then
  begin
    if cxGridDBTableView1.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid2);
    end;
  end
  else if cxPageControl1.ActivePage = cxTabSheet4 then
  begin
    if cxGridDBTableView2.ViewData.RecordCount > 0 then
    begin
      TExportsGrid.ExportsGridToExcel(cxGrid3);
    end;
  end;
end;

end.
