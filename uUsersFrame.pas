unit uUsersFrame;

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
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxTextEdit, cxCalc, Data.FMTBcd,
  Data.DBXOdbc, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, cxTL,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBDataDefinitions, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Data.Win.ADODB, DBAccess, PgAccess, MemDS;

type
  TUsersFrame = class(TBaseFrame)
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
    Sys_Users_DataSource: TDataSource;
    Sys_Users_Dataset: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    btnAddUser: TcxButton;
    btnModifyUser: TcxButton;
    PgConnection1: TPgConnection;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    UsersGridDBTableView1first_name: TcxGridDBColumn;
    UsersGridDBTableView1last_name: TcxGridDBColumn;
    UsersGridDBTableView1password: TcxGridDBColumn;
    UsersGridDBTableView1has_to_change_password: TcxGridDBColumn;
    UsersGridDBTableView1windows_authentication: TcxGridDBColumn;
    UsersGridDBTableView1user_name: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure btnAddUserClick(Sender: TObject);
    procedure btnModifyUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersFrame: TUsersFrame;

implementation

uses
  uGlobals, uFrmMain, uNewUserFrame, uUtilsStrings, uSystem;

{$R *.dfm}

procedure TUsersFrame.btnAddUserClick(Sender: TObject);
var
  NUF : TNewUserFrame;
begin

  frmMain.OpenFrame('Add user', WITHOUT_CLOSING_PREVIOUS_FRAME);

  NUF := TNewUserFrame(frmMain.CurrentFrame);

  NUF.edLogin.Enabled := True;
  NUF.btnAddUser.Show();
  NUF.btnModifyUser.Hide();

  NUF.edLogin.Text := '';
  NUF.edFirstName.Text := '';
  NUF.edLastName.Text := '';
  NUF.edPassword.Text := '';
  NUF.edConfirmPassword.Text := '';
  NUF.cbUserHasToChangePassword.Checked := False;
  NUF.cbUseWindowsAuthentication.Checked := False;

end;

procedure TUsersFrame.btnModifyUserClick(Sender: TObject);
var
  SelectedRow : Integer;
  DC : cxGridDBDataDefinitions.TcxGridDBDataController;
  NUF : TNewUserFrame;
begin

  // Fill data in case of modify

  DC := UsersGridDBTableView1.DataController;
  SelectedRow := DC.FocusedRowIndex;

  if (SelectedRow > 0) then
  begin

    frmMain.OpenFrame('Add user');

    NUF := TNewUserFrame(frmMain.CurrentFrame);

    NUF.edLogin.Enabled := False;
    NUF.btnAddUser.Hide();
    NUF.btnModifyUser.Show();

    NUF.edLogin.Text := VarToStr(DC.Values[SelectedRow, 0]);
    NUF.edFirstName.Text := VarToStr(DC.Values[SelectedRow, 1]);
    NUF.edLastName.Text := VarToStr(DC.Values[SelectedRow, 2]);
    NUF.edPassword.Text := VarToStr(DC.Values[SelectedRow, 3]);
    NUF.edConfirmPassword.Text := VarToStr(DC.Values[SelectedRow, 3]);
    NUF.cbUserHasToChangePassword.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 4]));
    NUF.cbUseWindowsAuthentication.Checked := MyStrToBool(VarToStr(DC.Values[SelectedRow, 5]));

  end
  else
  begin

    Information('Warning', 'Please select the user to modify.');

  end;

  // Modify user:

end;

procedure TUsersFrame.cxButton1Click(Sender: TObject);
begin
  Sys_Users_Dataset.ApplyUpdates(-1);
end;

end.
