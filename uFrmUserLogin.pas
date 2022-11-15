unit uFrmUserLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, cxControls, cxClasses,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, cxContainer,
  cxMaskEdit, cxTextEdit, cxLabel, Vcl.ExtCtrls,
  uGlobals, cxDropDownEdit, cxGroupBox;

type
  TfrmUserLogin = class(TForm)
    lbLogin: TLabel;
    btnCancel: TcxButton;
    btnLogin: TcxButton;
    lbUser: TcxLabel;
    edUser: TcxTextEdit;
    edPassword: TcxMaskEdit;
    lbPassword: TcxLabel;
    Image1: TImage;
    Image2: TImage;
    lbDatabase: TcxLabel;
    btnWindowsAuthenticate: TcxButton;
    cbDatabase: TcxComboBox;
    lbHost: TcxLabel;
    edHost: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDatabaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDatabaseKeyPress(Sender: TObject; var Key: Char);
    procedure edUserKeyPress(Sender: TObject; var Key: Char);
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure btnWindowsAuthenticateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LoginArea               : WideString;
    UserName                : WideString;
    Password                : WideString;
    Host                    : WideString;
    Database                : WideString;
    LoginResult             : TLoginResultType;
    UnsuccessfulLoginCause  : TUnsuccessfulLoginCauseType;

    function GetNetUserName() : WideString;
  end;

var
  frmUserLogin: TfrmUserLogin;
  bClearKey : Boolean;

implementation

{$R *.dfm}

procedure TfrmUserLogin.btnCancelClick(Sender: TObject);
begin
  Host     := '';
  Database := '';
  UserName := '';
  Password := '';
  ModalResult := mrCancel;
end;

procedure TfrmUserLogin.btnLoginClick(Sender: TObject);
begin
  Host     := edHost.Text;
  Database := cbDatabase.Text;
  UserName := edUser.Text;
  Password := edPassword.Text;
  ModalResult := mrOk;
end;

procedure TfrmUserLogin.btnWindowsAuthenticateClick(Sender: TObject);
begin
  edUser.Text := GetNetUserName();
  edPassword.SetFocus();
end;

procedure TfrmUserLogin.cbDatabaseKeyPress(Sender: TObject; var Key: Char);
begin
  if bClearKey then Key := #0;
end;

procedure TfrmUserLogin.edDatabaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  bClearKey := False;
  if (Key = Ord('L')) and (ssCtrl in Shift) then // Hack for fast login
  begin
    Key := 0;
    if LoginArea = 'Program' then
    begin
      UserName := 'Administrator';
      Password := '123';
    end
    else if LoginArea = 'Database' then
    begin
      Host     := 'localhost';
      Database := 'kivos_300';
      UserName := 'admin';
      Password := '123';
    end;
    ModalResult := mrOk;
    bClearKey := True;
  end;
  if (Key = VK_RETURN) then
  begin
    Key := 0;
    btnLoginClick(Self);
    bClearKey := True;
  end;
  Key := 0;
end;

procedure TfrmUserLogin.edPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  bClearKey := False;
  if (Key = Ord('L')) and (ssCtrl in Shift) then // Hack for fast login
  begin
    Key := 0;
    if LoginArea = 'Program' then
    begin
      UserName := 'Administrator';
      Password := '123';
    end
    else
    begin
      Host     := 'localhost';
      Database := 'kivos_300';
      UserName := 'admin';
      Password := '123';
    end;
    ModalResult := mrOk;
    bClearKey := True;
  end;
  if (Key = VK_RETURN) then
  begin
    Key := 0;
    btnLoginClick(Self);
    bClearKey := True;
  end;
  Key := 0;
end;

procedure TfrmUserLogin.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if bClearKey then Key := #0;
end;

procedure TfrmUserLogin.edUserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  bClearKey := False;
  if (Key = Ord('L')) and (ssCtrl in Shift) then // Hack for fast login
  begin
    Key := 0;
    if LoginArea = 'Program' then
    begin
      UserName := 'Administrator';
      Password := '123';
    end
    else if LoginArea = 'Database' then
    begin
      Host     := 'localhost';
      Database := 'kivos_300';
      UserName := 'admin';
      Password := '123';
    end;
    ModalResult := mrOk;
    bClearKey := True;
  end;
  if (Key = VK_RETURN) then
  begin
    Key := 0;
    btnLoginClick(Self);
    bClearKey := True;
  end;
  Key := 0;
end;

procedure TfrmUserLogin.edUserKeyPress(Sender: TObject; var Key: Char);
begin
  if bClearKey then Key := #0;
end;

procedure TfrmUserLogin.FormShow(Sender: TObject);
begin
  if (LoginArea <> 'Database') and (LoginArea <> 'Program') then
  begin
    cbDatabase.Text := '';
    edUser.Text := '';
    edPassword.Text := '';
  end
  else if LoginArea = 'Database' then
  begin
    edHost.Text     := 'localhost';
    cbDatabase.Text := 'kivos_300';
    edUser.Text     := 'postgres';
    edPassword.Text := 'test';
  end
  else if LoginArea = 'Program' then
  begin
    edHost.Text     := '';
    cbDatabase.Text := '';
    edUser.Text     := '';
    edPassword.Text := '';
  end;
  //lbLogin.Caption := 'Login to: [' + LoginArea + ']';
  lbLogin.Caption := 'Login to ' + LowerCase(LoginArea);
end;

function TfrmUserLogin.GetNetUserName() : WideString;
var
  USize : DWord;
  pUName : PWideChar;
  sUserName : WideString;
begin
  sUserName := '';
  USize := 30;
  GetMem(pUName, USize);
  if GetUserName(pUName, USize) then
    sUserName := StrPas(pUName)
  else
    sUserName := 'Unknown';
  FreeMem(pUName, USize);
  Result := sUserName;
end;

end.
