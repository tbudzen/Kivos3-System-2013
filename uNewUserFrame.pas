unit uNewUserFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxCheckBox, DBAccess, PgAccess, Data.DB;

type
  TNewUserFrame = class(TBaseFrame)
    btnCancel: TcxButton;
    btnAddUser: TcxButton;
    edLogin: TcxTextEdit;
    cxLabel1: TcxLabel;
    edFirstName: TcxTextEdit;
    edLastName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edPassword: TcxMaskEdit;
    edConfirmPassword: TcxMaskEdit;
    cbUserHasToChangePassword: TcxCheckBox;
    cbUseWindowsAuthentication: TcxCheckBox;
    btnModifyUser: TcxButton;
    PgSQL1: TPgSQL;
    PgConnection1: TPgConnection;
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewUserFrame: TNewUserFrame;

implementation

uses
  uFrmMain, uGlobals, uSystem, uExceptions, uUtilsStrings;

{$R *.dfm}

procedure TNewUserFrame.btnCancelClick(Sender: TObject);
begin

  // Tak byæ nie mo¿e - zwalnianie ramki A w trakcie zdarzenia A.btnCancelClick()
  //frmMain.CloseFrame(CURRENT_FRAME);

  SendMainMessage('close|current');

end;

procedure TNewUserFrame.btnModifyUserClick(Sender: TObject);
var
  QueryStr : WideString;
begin
  inherited;

  if (edPassword.Text = '') then
  begin
    Information('Warning', 'You must fill the password field.');
    Exit;
  end;

  if (edPassword.Text <> edConfirmPassword.Text) then
  begin
    Information('Warning', 'The password fields do not match.');
    Exit;
  end;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_users ' +
    'SET ' +
    '  first_name = "' + edFirstName.Text + '" AND ' +
    '  last_name = "' + edLastName.Text + '" AND ' +
    '  password = "' + edPassword.Text + '" AND ' +
    '  has_to_change_password = ' + MyBoolToStr(cbUserHasToChangePassword.Checked) + '" AND ' +
    '  windows_authentication = ' + MyBoolToStr(cbUseWindowsAuthentication.Checked) + ' ' +
    'WHERE user_name = "' + edLogin.Text + '"';

  PGSQL1.SQL.Add(QueryStr); // OMFG: String %@#$%@#$% ... !
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
    end;
  end;

end;

end.
