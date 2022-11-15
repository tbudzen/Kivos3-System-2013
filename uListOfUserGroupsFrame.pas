unit uListOfUserGroupsFrame;

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
  TListOfUserGroupsFrame = class(TBaseFrame)
    btnAddUser: TcxButton;
    btnModifyUser: TcxButton;
    btnDeleteUser: TcxButton;
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
    cxGrid1DBTableView1user_name: TcxGridDBColumn;
    cxGrid1DBTableView1group_name: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnAddUserClick(Sender: TObject);
    procedure btnModifyUserClick(Sender: TObject);
    procedure btnDeleteUserClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
   constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfUserGroupsFrame: TListOfUserGroupsFrame;

implementation

uses
  uFrmMain, uGlobals,
  cxGridDBDataDefinitions,
  uSystem,
  uExceptions,
  uAddUserGroupFrame, uExportsGrid;

{$R *.dfm}

procedure TListOfUserGroupsFrame.btnAddUserClick(Sender: TObject);
var
  F : TAddUserGroupFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := cxGrid1DBTableView1.DataController;
  frmMain.GridDB := cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(64));

  F := TAddUserGroupFrame(frmMain.CurrentFrame());

  F.btnAddUserGroup.Show();
  F.btnModifyUserGroup.Hide();

  F.edId.Enabled := False;

    F.cbUser.Text := '';
    F.cbGroup.Text := '';
end;

procedure TListOfUserGroupsFrame.btnDeleteUserClick(Sender: TObject);
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

    if Question('You are about to delete user group - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_users_access_groups WHERE id = ''' + VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '''';

      PGSQL1.SQL.Clear();
      PGSQL1.SQL.Add(QueryStr);

      try
        PGSQL1.Execute();
      except
        on E : Exception do
        begin
          HandleException(E, 'TListOfUsersFrame.btnDeleteUserClick()');
        end;
      end;

      cxGrid1DBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the user group to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);
end;

procedure TListOfUserGroupsFrame.btnModifyUserClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddUserGroupFrame;
begin

  DC := cxGrid1DBTableView1.DataController;
  frmMain.GridDB := cxGrid1DBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(64));

    F := TAddUserGroupFrame(frmMain.CurrentFrame);

    F.btnAddUserGroup.Hide();
    F.btnModifyUserGroup.Show();

    F.edId.Enabled := False;

    F.edId.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.cbUser.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.cbGroup.Text := VarToStr(cxGrid1DBTableView1.ViewData.Rows[SelectedRow].Values[2]);

  end
  else
  begin

    Information('Warning', 'Please select the user group to modify.');

  end;
end;

constructor TListOfUserGroupsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfUserGroupsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid1DBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid1);
  end;
end;

end.
