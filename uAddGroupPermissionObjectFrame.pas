unit uAddGroupPermissionObjectFrame;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, cxControls,
  cxContainer, cxEdit, Data.DB, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel;

type
  TAddGroupPermissionObjectFrame = class(TBaseFrame)
    PgSQL1: TPgSQL;
    btnCancel: TcxButton;
    btnAddGroupPermissionObject: TcxButton;
    cxLabel6: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    PgDataSource1: TPgDataSource;
    PgTable1: TPgTable;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    PgTable3: TPgTable;
    PgDataSource3: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgTable4: TPgTable;
    PgTable5: TPgTable;
    PgDataSource5: TPgDataSource;
    PgTable6: TPgTable;
    PgDataSource6: TPgDataSource;
    btnModifyGroupPermissionObject: TcxButton;
    edId: TcxTextEdit;
    cxLabel3: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyGroupPermissionObjectClick(Sender: TObject);
    procedure btnAddGroupPermissionObjectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddGroupPermissionObjectFrame: TAddGroupPermissionObjectFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddGroupPermissionObjectFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (cxDBLookupComboBox1.Text = '') then
  begin
    Information('Warning', 'You must fill the group name field.');
    Result := False;
    Exit;
  end;

  if (cxDBLookupComboBox2.Text = '') then
  begin
    Information('Warning', 'You must fill the permission name field.');
    Result := False;
    Exit;
  end;

  if (cxDBLookupComboBox3.Text = '') then
  begin
    Information('Warning', 'You must fill the object name field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddGroupPermissionObjectFrame.btnAddGroupPermissionObjectClick(
  Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_groups_permissions_objects (id_group, id_permission, id_object) ' +
    'VALUES (' +
    cxDBLookupComboBox1.DataBinding.Field.DisplayText + ', ' +
    cxDBLookupComboBox2.DataBinding.Field.DisplayText + ', ' +
    cxDBLookupComboBox3.DataBinding.Field.DisplayText +
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
        Information('Warning', 'Group permission object combination is already present');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddGroupPermissionObjectFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);
end;

procedure TAddGroupPermissionObjectFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddGroupPermissionObjectFrame.btnModifyGroupPermissionObjectClick(
  Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'UPDATE tbl_groups_permissions_objects ' +
    'SET ' +
    'id_group = ' + cxDBLookupComboBox1.DataBinding.Field.DisplayText + ', ' +
    'id_permission = ' + cxDBLookupComboBox2.DataBinding.Field.DisplayText + ', ' +
    'id_object = ' + cxDBLookupComboBox3.DataBinding.Field.DisplayText + ' ' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddGroupPermissionObjectFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);
end;

end.
