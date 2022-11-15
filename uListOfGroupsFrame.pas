unit uListOfGroupsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxTextEdit,
  cxCalc, Datasnap.Provider, Datasnap.DBClient, cxTL, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.Menus, cxButtons, DBAccess, PgAccess, MemDS;

type
  TListOfGroupsFrame = class(TBaseFrame)
    GroupsGrid: TcxGrid;
    GroupsGridDBTableView1: TcxGridDBTableView;
    GroupsGridLevel1: TcxGridLevel;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    btnModifyGroup: TcxButton;
    btnAddGroup: TcxButton;
    btnDeleteGroup: TcxButton;
    GroupsGridDBTableView1group_name: TcxGridDBColumn;
    GroupsGridDBTableView1description: TcxGridDBColumn;
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
    PgSQL1: TPgSQL;
    GroupsGridDBTableView1id: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnAddGroupClick(Sender: TObject);
    procedure btnModifyGroupClick(Sender: TObject);
    procedure btnDeleteGroupClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfGroupsFrame: TListOfGroupsFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddGroupFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfGroupsFrame.btnAddGroupClick(Sender: TObject);
var
  F: TAddGroupFrame;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.GroupsGridDBTableView1.DataController;
  frmMain.GridDB := Self.GroupsGridDBTableView1;
  frmMain.Table := PgTable1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(57));

  F := TAddGroupFrame(frmMain.CurrentFrame());

  F.btnAddGroup.Show();
  F.btnModifyGroup.Hide();

  F.edId.Enabled := False;
  F.edGroupName.Text := '';
  F.edGroupDescription.Text := '';

end;

procedure TListOfGroupsFrame.btnDeleteGroupClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr: WideString;
begin

  DC := Self.GroupsGridDBTableView1.DataController;
  frmMain.GridDB := Self.GroupsGridDBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete group - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_access_groups WHERE id = ''' +
        VarToStr(GroupsGridDBTableView1.ViewData.Rows[SelectedRow].Values
        [0]) + '''';

      PgSQL1.SQL.Clear();
      PgSQL1.SQL.Add(QueryStr);

      try
        PgSQL1.Execute();
      except
        on E: Exception do
        begin
          HandleException(E, 'TListOfGroupsFrame.btnDeleteUserClick()');
        end;
      end;

      GroupsGridDBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the group to delete.');

  end;

  frmMain.Refresh(frmMain.Table);
end;

procedure TListOfGroupsFrame.btnModifyGroupClick(Sender: TObject);
var
  SelectedRow: Integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  F: TAddGroupFrame;
begin

  DC := Self.GroupsGridDBTableView1.DataController;
  frmMain.GridDB := Self.GroupsGridDBTableView1;
  frmMain.Table := PgTable1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(57));

    F := TAddGroupFrame(frmMain.CurrentFrame);

    F.btnAddGroup.Hide();
    F.btnModifyGroup.Show();

    F.edId.Enabled := False;

    F.edId.Text := VarToStr(GroupsGridDBTableView1.ViewData.Rows[SelectedRow]
      .Values[0]);
    F.edGroupName.Text := VarToStr(GroupsGridDBTableView1.ViewData.Rows
      [SelectedRow].Values[1]);
    F.edGroupDescription.Text :=
      VarToStr(GroupsGridDBTableView1.ViewData.Rows[SelectedRow].Values[2]);

  end
  else
  begin

    Information('Warning', 'Please select the group to modify.');

  end;
end;

constructor TListOfGroupsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TListOfGroupsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if GroupsGridDBTableView1.ViewData.RecordCount > 0 then
  begin
    TExportsGrid.ExportsGridToExcel(GroupsGrid);
  end;

end;

end.
