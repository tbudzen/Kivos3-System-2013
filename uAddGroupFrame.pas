unit uAddGroupFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, DBAccess, PgAccess,
  Data.DB, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, cxMemo;

type
  TAddGroupFrame = class(TBaseFrame)
    btnAddGroup: TcxButton;
    btnCancel: TcxButton;
    btnModifyGroup: TcxButton;
    edGroupName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    edGroupDescription: TcxMemo;
    edId: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddGroupClick(Sender: TObject);
    procedure btnModifyGroupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddGroupFrame: TAddGroupFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddGroupFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edGroupName.Text = '') then
  begin
    Information('Warning', 'You must fill the group name field.');
    Result := False;
    Exit;
  end;


end;

procedure TAddGroupFrame.btnAddGroupClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_access_groups (group_name, description) ' +
    'VALUES (''' +
    edGroupName.Text + ''', ''' +
    edGroupDescription.Text + '''' +
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
        Information('Warning', 'Group with such name is already created');
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

procedure TAddGroupFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddGroupFrame.btnModifyGroupClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_access_groups ' +
    'SET group_name = ''' + edGroupName.Text + ''', ' +
    'description = ''' + edGroupDescription.Text + ''' ' +
    'WHERE id = ' + edId.Text;

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

  frmMain.Refresh(frmMain.Table);
end;

end.
