unit uAddUserFrame;

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
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxCheckBox, DBAccess, PgAccess, Data.DB,
  cxDropDownEdit, cxCalendar, MemDS, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TAddUserFrame = class(TBaseFrame)
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
    cxLabel6: TcxLabel;
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
    cbDefaultCashDesk: TcxDBLookupComboBox;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    cbIsCashier: TcxCheckBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyUserClick(Sender: TObject);
    procedure btnAddUserClick(Sender: TObject);
    procedure cbIsCashierClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddUserFrame: TAddUserFrame;

implementation

uses
  uFrmMain, uGlobals, uSystem, uExceptions, uStrings,
  uListOfUsersFrame;

{$R *.dfm}

function TAddUserFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edLogin.Text = '') then
  begin
    Information('Warning', 'You must fill the login field.');
    Result := False;
    Exit;
  end;

  if (edFirstName.Text = '') then
  begin
    Information('Warning', 'You must fill the first name field.');
    Result := False;
    Exit;
  end;

  if (edLastName.Text = '') then
  begin
    Information('Warning', 'You must fill the last name field.');
    Result := False;
    Exit;
  end;

  if (edPassword.Text = '') then
  begin
    Information('Warning', 'You must fill the password field.');
    Result := False;
    Exit;
  end;

  if (edPassword.Text <> edConfirmPassword.Text) then
  begin
    Information('Warning', 'The password fields do not match.');
    Result := False;
    Exit;
  end;

end;

procedure TAddUserFrame.btnAddUserClick(Sender: TObject);
var
  QueryStr, CashDesk : WideString;
begin

  if not ValidateFields() then Exit;

  if cbIsCashier.Checked then
  begin
    CashDesk := cbDefaultCashDesk.DataBinding.Field.DisplayText;
  end
  else
  begin
    CashDesk := 'null';
  end;

  QueryStr :=
    'INSERT INTO tbl_users ' +
    '( ' +
    '  user_name, ' +
    '  first_name, ' +
    '  last_name, ' +
    '  password, ' +
    '  has_to_change_password, ' +
    '  windows_authentication, ' +
    '  is_cashier, ' +
    '  default_cashdesk' +
    ') ' +
    'VALUES ' +
    '(' +
       '''' + edLogin.Text + ''', ' +
       '''' + edFirstName.Text + ''', ' +
       '''' + edLastName.Text + ''', ' +
       '''' + edPassword.Text + ''', ' +
       MyBoolToIntStr(cbUserHasToChangePassword.Checked) + ', ' +
       MyBoolToIntStr(cbUseWindowsAuthentication.Checked) + ', ' +
       MyBoolToIntStr(cbIsCashier.Checked) + ', ' +
       '' + CashDesk +
    ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'User with such name is already created');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddUserFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddUserFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddUserFrame.btnModifyUserClick(Sender: TObject);
var
  QueryStr, CashDesk : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  if cbIsCashier.Checked then
  begin
    CashDesk := cbDefaultCashDesk.DataBinding.Field.DisplayText;
  end
  else
  begin
    CashDesk := 'null';
  end;

  QueryStr :=
    'UPDATE ' +
    '  tbl_users ' +
    'SET ' +
    '  first_name = ''' + edFirstName.Text + ''', ' +
    '  last_name = ''' + edLastName.Text + ''', ' +
    '  password = ''' + edPassword.Text + ''', ' +
    '  has_to_change_password = ' + MyBoolToIntStr(cbUserHasToChangePassword.Checked) + ', ' +
    '  windows_authentication = ' + MyBoolToIntStr(cbUseWindowsAuthentication.Checked) + ', ' +
    '  is_cashier = ' + MyBoolToIntStr(cbIsCashier.Checked) + ', ' +
    '  default_cashdesk = ' + CashDesk + ' ' +
    'WHERE ' +
    '  user_name = ''' + edLogin.Text + '''';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddUserFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddUserFrame.cbIsCashierClick(Sender: TObject);
begin
  cxLabel6.Visible            := cbIsCashier.Checked;
  cbDefaultCashdesk.Visible   := cbIsCashier.Checked;
end;

end.
