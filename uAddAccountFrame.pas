unit uAddAccountFrame;

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
  dxSkinXmas2008Blue, DBAccess, PgAccess, Data.DB, Vcl.StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxTextEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxMemo, MemDS, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TAddAccountFrame = class(TBaseFrame)
    btnAddAccount: TcxButton;
    btnCancel: TcxButton;
    btnModifyAccount: TcxButton;
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
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
    cbParentAccountNr: TcxDBLookupComboBox;
    PgDataSource2: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddAccountClick(Sender: TObject);
    procedure btnModifyAccountClick(Sender: TObject);
    procedure edAccountNrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddAccountFrame: TAddAccountFrame;

implementation

uses
  uSystem,
  uStrings,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddAccountFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edAccountNr.Text = '') then
  begin
    Information('Warning', 'You must fill the account nr field.');
    Result := False;
    Exit;
  end;

  if (edAccountName.Text = '') then
  begin
    Information('Warning', 'You must fill the account name field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddAccountFrame.btnAddAccountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_accounts (account_id, parent_account_id, name, description, is_lg, is_cd_configurable) ' +
    'VALUES (' +
    '''' + edAccountNr.Text + ''', ' +
    '''' + cbParentAccountNr.Text + ''', ' +
    '''' + edAccountName.Text + ''', ' +
    '''' + edAccountDescription.Text + ''', ' +
    MyBoolToIntStr(cbLifeGame.Checked) + ', ' +
    MyBoolToIntStr(cbCDConfigurable.Checked) + ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'Account with such name is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TNewUserFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);
end;

procedure TAddAccountFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddAccountFrame.btnModifyAccountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'UPDATE tbl_accounts ' +
    'SET ' +
    '  parent_account_id = ''' + cbParentAccountNr.Text + ''', ' +
    '  name = ''' + edAccountName.Text + ''', ' +
    '  description = ''' + edAccountDescription.Text + ''', ' +
    '  is_lg = ' + MyBoolToIntStr(cbLifeGame.Checked) + ', ' +
    '  is_cd_configurable = ' + MyBoolToIntStr(cbCdConfigurable.Checked) + ' ' +
    'WHERE account_id = ''' + edAccountNr.Text + '''';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddAccountFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);
end;

procedure TAddAccountFrame.edAccountNrKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;

end;

end.
