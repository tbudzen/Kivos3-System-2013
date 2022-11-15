unit uListOfAccountsFrame;

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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, MemDS,
  cxTL, cxInplaceContainer, cxTLData, cxDBTL, cxMemo,
  cxMaskEdit, cxCheckBox, cxContainer, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel;

type
  TListOfAccountsFrame = class(TBaseFrame)
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyAccount: TcxButton;
    btnAddAccount: TcxButton;
    btnDeleteAccount: TcxButton;
    cxDBTreeList1: TcxDBTreeList;
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
    cxDBTreeList1account_id: TcxDBTreeListColumn;
    cxDBTreeList1parent_account_id: TcxDBTreeListColumn;
    cxDBTreeList1name: TcxDBTreeListColumn;
    cxDBTreeList1description: TcxDBTreeListColumn;
    cxDBTreeList1is_lg: TcxDBTreeListColumn;
    cxDBTreeList1is_cd_configurable: TcxDBTreeListColumn;
    PgSQL1: TPgSQL;
    cxLabel3: TcxLabel;
    edAccountNr: TcxTextEdit;
    cxLabel1: TcxLabel;
    edAccountName: TcxTextEdit;
    cbLifeGame: TcxCheckBox;
    cbCDConfigurable: TcxCheckBox;
    cxLabel2: TcxLabel;
    edAccountDescription: TcxMemo;
    cxLabel4: TcxLabel;
    cbParentAccountNr: TcxDBLookupComboBox;
    PgSQL2: TPgSQL;
    PgDataSource2: TPgDataSource;
    PgTable2: TPgTable;
    PgDataSource3: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    cbEnabledForModification: TcxCheckBox;
    cxButton1: TcxButton;
    cxDBTreeList1id: TcxDBTreeListColumn;
    cxDBTreeList1account_id1: TcxDBTreeListColumn;
    cxDBTreeList1parent_account_id1: TcxDBTreeListColumn;
    cxDBTreeList1name1: TcxDBTreeListColumn;
    cxDBTreeList1description1: TcxDBTreeListColumn;
    cxDBTreeList1is_lg1: TcxDBTreeListColumn;
    cxDBTreeList1is_cd_configurable1: TcxDBTreeListColumn;
    cxDBTreeList1is_transfer_account: TcxDBTreeListColumn;
    PopupMenu: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnAddAccountClick(Sender: TObject);
    procedure btnModifyAccountClick(Sender: TObject);
    procedure btnDeleteAccountClick(Sender: TObject);
    procedure cbEnabledForModificationClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfAccountsFrame: TListOfAccountsFrame;

implementation

{$R *.dfm}

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddAccountFrame,
  uStrings, uExportsGrid;

procedure TListOfAccountsFrame.btnAddAccountClick(Sender: TObject);
var
  F: TAddAccountFrame;
  DC: TcxDBTreeListDataController;
begin

  DC := cxDBTreeList1.DataController;
  frmMain.TreeListDB := cxDBTreeList1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(50));

  F := TAddAccountFrame(frmMain.CurrentFrame());

  F.btnAddAccount.Show();
  F.btnModifyAccount.Hide();

  F.edAccountNr.Enabled := True;
  F.cbParentAccountNr.Enabled := True;

end;

procedure TListOfAccountsFrame.btnDeleteAccountClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  QueryStr: WideString;
begin

  DC := cxDBTreeList1.DataController;
  frmMain.TreeListDB := cxDBTreeList1;
  frmMain.Table := PgTable1;
  SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete account - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_accounts WHERE account_id = ''' +
        VarToStr(DC.Values[SelectedRow, 0]) + '''';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfAccountsFrame.btnDeleteUserClick()');
        end;
      end;

      cxDBTreeList1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the account to delete.');

  end;

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TListOfAccountsFrame.btnModifyAccountClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: TcxDBTreeListDataController;
  F: TAddAccountFrame;
begin

  DC := cxDBTreeList1.DataController;
  frmMain.TreeListDB := cxDBTreeList1;
  frmMain.Table := PgTable1;
  SelectedRow := cxDBTreeList1.FocusedNode.AbsoluteIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(50));

    F := TAddAccountFrame(frmMain.CurrentFrame);

    F.btnAddAccount.Hide();
    F.btnModifyAccount.Show();

    F.edAccountNr.Enabled := False;
    F.cbParentAccountNr.Enabled := False;

    // cxDBTreeList1.Items[SelectedRow].Texts[0];

    F.edAccountNr.Text := VarToStr(DC.Values[SelectedRow, 0]);
    F.cbParentAccountNr.Text := VarToStr(DC.Values[SelectedRow, 1]);
    F.edAccountName.Text := VarToStr(DC.Values[SelectedRow, 2]);
    F.edAccountDescription.Text := VarToStr(DC.Values[SelectedRow, 3]);
    F.cbLifeGame.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 4]));
    F.cbCDConfigurable.Checked :=
      MyStrToBool(VarToStr(DC.Values[SelectedRow, 5]));

  end
  else
  begin

    Information('Warning', 'Please select the account to modify.');

  end;
end;

procedure TListOfAccountsFrame.cbEnabledForModificationClick(Sender: TObject);
begin

  cxDBTreeList1.OptionsData.Editing := cbEnabledForModification.Checked;

end;

constructor TListOfAccountsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TListOfAccountsFrame.cxButton1Click(Sender: TObject);
begin

  cxDBTreeList1.FullExpand();

end;

procedure TListOfAccountsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxDBTreeList1.Count > 0 then
  begin
    TExportsGrid.ExportsTreeGridToExcel(cxDBTreeList1);
  end;
end;

end.
