unit uAddUserGroupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, Data.DB, MemDS, DBAccess, PgAccess, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TAddUserGroupFrame = class(TBaseFrame)
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btnAddUserGroup: TcxButton;
    btnCancel: TcxButton;
    btnModifyUserGroup: TcxButton;
    edId: TcxTextEdit;
    cxLabel1: TcxLabel;
    cbUser: TcxDBLookupComboBox;
    cbGroup: TcxDBLookupComboBox;
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    PgDataSource3: TPgDataSource;
    PgTable3: TPgTable;
    PgTable4: TPgTable;
    PgDataSource4: TPgDataSource;
    PgSQL1: TPgSQL;
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyUserGroupClick(Sender: TObject);
    procedure btnAddUserGroupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddUserGroupFrame: TAddUserGroupFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddUserGroupFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (cbUser.Text = '') then
  begin
    Information('Warning', 'You must select the user.');
    Result := False;
    Exit;
  end;

  if (cbGroup.Text = '') then
  begin
    Information('Warning', 'You must select the group.');
    Result := False;
    Exit;
  end;

end;

procedure TAddUserGroupFrame.btnAddUserGroupClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_users_access_groups ' +
    '(id_user, id_group) ' +
    'VALUES (' +
    cbUser.DataBinding.Field.DisplayText + ', ' +
    cbGroup.DataBinding.Field.DisplayText + ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'User group combination is already present');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddUserGroupFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddUserGroupFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddUserGroupFrame.btnModifyUserGroupClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_users_access_groups ' +
    'SET ' +
    '  id_user = ' + cbUser.DataBinding.Field.DisplayText + ', ' +
    '  id_group = ' + cbGroup.DataBinding.Field.DisplayText + ' ' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddUserGroupFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);


end;

end.
