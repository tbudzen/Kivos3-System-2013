unit uAddAmountChangeFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  DBAccess, PgAccess;

type
  TAddAmountChangeFrame = class(TBaseFrame)
    btnCancel: TcxButton;
    btnAddAmount: TcxButton;
    btnModifyAmount: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    edPresentAmount: TcxTextEdit;
    cbCategory: TcxDBComboBox;
    cbValue: TcxDBComboBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    PgSQL1: TPgSQL;
    procedure btnAddAmountClick(Sender: TObject);
    procedure btnModifyAmountClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddAmountChangeFrame: TAddAmountChangeFrame;

implementation

uses
  uFrmMain,
  uSystem,
  uExceptions;

{$R *.dfm}

function TAddAmountChangeFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edPresentAmount.Text = '') then
  begin
    Information('Warning', 'You must fill the present amount field.');
    Result := False;
    Exit;
  end;


end;

procedure TAddAmountChangeFrame.btnAddAmountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_users ' +
    '(user_name, first_name, last_name, password, has_to_change_password, windows_authentication) ' +
    'VALUES (';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TAddAmountChangeFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddAmountChangeFrame.btnModifyAmountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_users ' +
    'SET ' +
    'WHERE user_name = "' + '"';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

end.
