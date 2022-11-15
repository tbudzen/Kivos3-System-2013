unit uListOfUsersFrame;

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
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxTextEdit, cxCalc,
  Datasnap.DBClient, Datasnap.Provider, cxTL,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBDataDefinitions, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, DBAccess, PgAccess, MemDS, cxMaskEdit,
  cxDropDownEdit, cxCheckBox;

type
  TListOfUsersFrame = class(TBaseFrame)
    UsersGrid: TcxGrid;
    UsersGridDBTableView1: TcxGridDBTableView;
    UsersGridLevel1: TcxGridLevel;
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
    btnAddUser: TcxButton;
    btnModifyUser: TcxButton;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    UsersGridDBTableView1first_name: TcxGridDBColumn;
    UsersGridDBTableView1last_name: TcxGridDBColumn;
    UsersGridDBTableView1password: TcxGridDBColumn;
    UsersGridDBTableView1has_to_change_password: TcxGridDBColumn;
    UsersGridDBTableView1windows_authentication: TcxGridDBColumn;
    UsersGridDBTableView1user_name: TcxGridDBColumn;
    btnDeleteUser: TcxButton;
    PgSQL1: TPgSQL;
    PgQuery1: TPgQuery;
    UsersGridDBTableView1cd_name: TcxGridDBColumn;
    UsersGridDBTableView1is_cashier: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure btnAddUserClick(Sender: TObject);
    procedure btnModifyUserClick(Sender: TObject);
    procedure btnDeleteUserClick(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  ListOfUsersFrame: TListOfUsersFrame;

implementation

uses
  uGlobals,
  uExceptions,
  uFrmMain,
  uAddUserFrame,
  uStrings,
  uSystem, uExportsGrid;

{$R *.dfm}

procedure TListOfUsersFrame.btnAddUserClick(Sender: TObject);
var
  F : TAddUserFrame;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
begin

  DC := UsersGridDBTableView1.DataController;
  frmMain.GridDB := Self.UsersGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;

  frmMain.OpenFrame(frmMain.FrameNameByIdx(62));

  F := TAddUserFrame(frmMain.CurrentFrame());

  F.edLogin.Enabled := True;
  F.btnAddUser.Show();
  F.btnModifyUser.Hide();

  F.edLogin.Text := '';
  F.edFirstName.Text := '';
  F.edLastName.Text := '';
  F.edPassword.Text := '';
  F.edConfirmPassword.Text := '';
  F.cbUserHasToChangePassword.Checked := False;
  F.cbUseWindowsAuthentication.Checked := False;
  F.cbIsCashier.Checked := False;

  F.cxLabel6.Visible            := False;
  F.cbDefaultCashdesk.Visible   := False;

end;

procedure TListOfUsersFrame.btnDeleteUserClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr : WideString;
begin

  DC := Self.UsersGridDBTableView1.DataController;
  frmMain.GridDB := Self.UsersGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    if Question('You are about to delete user - are you sure ?') then
    begin

      QueryStr := 'DELETE FROM tbl_users WHERE user_name = ''' + VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[0]) + '''';

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

      UsersGridDBTableView1.DataController.DataSet.Refresh();

    end;
  end
  else
  begin

    Information('Warning', 'Please select the user to delete.');

  end;

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TListOfUsersFrame.btnModifyUserClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  F : TAddUserFrame;
begin

  DC := Self.UsersGridDBTableView1.DataController;
  frmMain.GridDB := Self.UsersGridDBTableView1;
  frmMain.RefreshQuery := PgQuery1;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow >= 0) then
  begin

    frmMain.OpenFrame(frmMain.FrameNameByIdx(62));

    F := TAddUserFrame(frmMain.CurrentFrame);

    F.edLogin.Enabled := False;
    F.btnAddUser.Hide();
    F.btnModifyUser.Show();

    F.edLogin.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[0]);
    F.edFirstName.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[1]);
    F.edLastName.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[2]);
    F.edPassword.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[3]);
    F.edConfirmPassword.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[3]);
    F.cbUserHasToChangePassword.Checked := MyStrToBool(VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[4]));
    F.cbUseWindowsAuthentication.Checked := MyStrToBool(VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[5]));
    F.cbIsCashier.Checked := MyStrToBool(VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[6]));
    F.cbDefaultCashDesk.Text := VarToStr(UsersGridDBTableView1.ViewData.Rows[SelectedRow].Values[7]);

    F.cxLabel6.Visible            := F.cbIsCashier.Checked;
    F.cbDefaultCashdesk.Visible   := F.cbIsCashier.Checked;

  end
  else
  begin

    Information('Warning', 'Please select the user to modify.');

  end;

end;

constructor TListOfUsersFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:=cPopMenu_eksport_toExcel;
end;

procedure TListOfUsersFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if UsersGridDBTableView1.ViewData.RecordCount>0 then  begin
    TExportsGrid.ExportsGridToExcel(UsersGrid);
  end;
end;

procedure TListOfUsersFrame.FrameEnter(Sender: TObject);
begin
  Self.Refresh();
end;

end.
