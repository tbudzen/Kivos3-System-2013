unit uAddWorkstationFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxMemo, cxLabel,
  cxTextEdit, Vcl.StdCtrls, cxButtons, DBAccess, PgAccess, Vcl.ExtCtrls;

type
  TAddWorkstationFrame = class(TBaseFrame)
    edWorkstationName: TcxTextEdit;
    lbValueName: TcxLabel;
    edWorkstationDescription: TcxMemo;
    cxLabel5: TcxLabel;
    PgSQL1: TPgSQL;
    edId: TcxTextEdit;
    cxLabel1: TcxLabel;
    edSystemClientName: TcxTextEdit;
    cxLabel2: TcxLabel;
    Panel2: TPanel;
    btnAddWorkstation: TcxButton;
    btnModifyWorkstation: TcxButton;
    btnCancel: TcxButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddWorkstationClick(Sender: TObject);
    procedure btnModifyWorkstationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddWorkstationFrame: TAddWorkstationFrame;

implementation

uses
  uSystem,
  uFrmMain,
  uExceptions;

{$R *.dfm}

function TAddWorkstationFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edWorkstationName.Text = '') then
  begin
    Information('Warning', 'You must fill the workstation name field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddWorkstationFrame.btnAddWorkstationClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_workstations (name, system_name, description) ' +
    'VALUES (''' +
    edWorkstationName.Text + ''', ''' +
    edSystemClientName.Text + ''', ''' +
    edWorkstationDescription.Text + ''')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'Workstation with such name is already created');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddWorkstationFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);
end;

procedure TAddWorkstationFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddWorkstationFrame.btnModifyWorkstationClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_workstations ' +
    'SET ' +
    '  name = ''' + edWorkstationName.Text + ''', ' +
    '  system_name = ''' + edSystemclientName.Text + ''', ' +
    '  description = ''' + edWorkstationDescription.Text + ''' ' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddWorkstationFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.Table);
end;

end.
