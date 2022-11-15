unit uListOfGroupsPermissionsObjectsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, Data.DB, DBAccess, PgAccess, MemDS, Vcl.StdCtrls,
  cxButtons, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTL;

type
  TListOfGroupsPermissionsObjectsFrame = class(TBaseFrame)
    btnAddPermission: TcxButton;
    btnDeletePermission: TcxButton;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PgQuery1: TPgQuery;
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
    cxGrid1DBTableView1group_name: TcxGridDBColumn;
    cxGrid1DBTableView1permission_name: TcxGridDBColumn;
    cxGrid1DBTableView1object_name: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    btnModifyPermission: TcxButton;
    PopupMenu1: TPopupMenu;
    exportstoexcel1: TMenuItem;
    procedure btnAddPermissionClick(Sender: TObject);
    procedure btnModifyPermissionClick(Sender: TObject);
    procedure btnDeletePermissionClick(Sender: TObject);
    procedure exportstoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
     constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfGroupsPermissionsObjectsFrame: TListOfGroupsPermissionsObjectsFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddGroupPermissionObjectFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfGroupsPermissionsObjectsFrame.btnAddPermissionClick(Sender: TObject);
var
  F : TAddGroupPermissionObjectFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := Self.cxGrid1DBTableView1.DataController;
  frmMain.GridDB := Self.cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(58));

  F := TAddGroupPermissionObjectFrame(frmMain.CurrentFrame());

  F.btnAddGroupPermissionObject.Show();
  F.btnModifyGroupPermissionObject.Hide();
  F.edId.Enabled := False;

    F.cxDBLookupComboBox1.Text := '';
    F.cxDBLookupComboBox2.Text := '';
    F.cxDBLookupComboBox3.Text := '';

end;

procedure TListOfGroupsPermissionsObjectsFrame.btnDeletePermissionClick(
  Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
begin

  DC := cxGrid1DBTableView1.DataController;
  frmMain.GridDB := cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete group permission object - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_groups_permissions_objects WHERE id = ''' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '''';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfGroupsPermissionsObjectsFrame.btnDeleteUserClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the group permission object to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);
end;

procedure TListOfGroupsPermissionsObjectsFrame.btnModifyPermissionClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddGroupPermissionObjectFrame;
begin

  DC := cxGrid1DBTableView1.DataController;
  frmMain.GridDB := cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(58));

    F := TAddGroupPermissionObjectFrame(frmMain.CurrentFrame);

    F.btnAddGroupPermissionObject.Hide();
    F.btnModifyGroupPermissionObject.Show();

    F.edId.Enabled := False;

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.cxDBLookupComboBox1.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.cxDBLookupComboBox2.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);
    F.cxDBLookupComboBox3.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[3]);

  end
  else
  begin

    Information('Warning', 'Please select the group permission object to modify.');

  end;
end;

constructor TListOfGroupsPermissionsObjectsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exportstoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfGroupsPermissionsObjectsFrame.exportstoexcel1Click(
  Sender: TObject);
begin
  inherited;
 if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
  TExportsGrid.ExportsGridToExcel(cxGrid1);
 end;
end;

end.
