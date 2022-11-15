unit uAddWorkstationToCashDeskFrame;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxButtons, cxLabel, DBAccess, PgAccess, cxMemo, Data.DB, MemDS, Vcl.ExtCtrls;

type
  TAddWorkstationToCashDeskFrame = class(TBaseFrame)
    lbValueName: TcxLabel;
    cxLabel1: TcxLabel;
    PgSQL1: TPgSQL;
    edId: TcxTextEdit;
    cxLabel2: TcxLabel;
    edWorkstationDescription: TcxMemo;
    cxLabel5: TcxLabel;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    PgTable4: TPgTable;
    PgDataSource4: TPgDataSource;
    cbWorkstation: TcxDBLookupComboBox;
    PgTable2: TPgTable;
    PgDataSource2: TPgDataSource;
    PgTable3: TPgTable;
    PgDataSource3: TPgDataSource;
    cbCashDesk: TcxDBLookupComboBox;
    Panel1: TPanel;
    btnCancel: TcxButton;
    btnModifyWorkstationToCashDesk: TcxButton;
    btnAddWorkstationToCashdesk: TcxButton;
    procedure btnAddWorkstationToCashdeskClick(Sender: TObject);
    procedure btnModifyWorkstationToCashDeskClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddWorkstationToCashDeskFrame: TAddWorkstationToCashDeskFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain,
  uListOfCashTransactionsFrame;

{$R *.dfm}

function TAddWorkstationToCashDeskFrame.ValidateFields() : Boolean;
begin

  Result := True;

end;

procedure TAddWorkstationToCashDeskFrame.btnAddWorkstationToCashdeskClick(Sender: TObject);
var
  QueryStr : WideString;
  Idx : Integer;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_cd_workstations (id_cashdesk, id_workstation, description) ' +
    'VALUES (' +
    cbCashDesk.DataBinding.Field.DisplayText + ', ' +
    cbWorkstation.DataBinding.Field.DisplayText + ', ''' +
    edWorkstationDescription.Text + '''' +
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
        Information('Warning', 'Workstation is already assigned to cash desk');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddWorkstationToCashDeskFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

  // If we have opened Cash transactions then we refresh cashdesk combo-box

  if frmMain.FrameStackExists(frmMain.FrameNameByIdx(26), Idx) then
  begin
    with TListOfCashTransactionsFrame(frmMain.FrameStack[Idx - 1].Frame) do
    begin
      PgQuery6.Active := False;
      PgQuery6.Active := True;
      PgQuery7.Active := False;
      PgQuery7.Active := True;
    end;
  end;

end;

procedure TAddWorkstationToCashDeskFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');


end;

procedure TAddWorkstationToCashDeskFrame.btnModifyWorkstationToCashDeskClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  // UPDATE query

  QueryStr :=
    'UPDATE tbl_cd_workstations ' +
    'SET ' +
    'id_cashdesk = ' + cbCashDesk.DataBinding.Field.DisplayText + ', ' +
    'id_workstation = ' + cbWorkstation.DataBinding.Field.DisplayText + ', ' +
    'description = ''' + edWorkstationDescription.Text + '''' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddWorkstationToCashDeskFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);
end;

end.
