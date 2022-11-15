unit uAddChipBalanceFrame;

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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, Vcl.StdCtrls, cxButtons, cxDBEdit, DBAccess, PgAccess,
  Data.DB, MemDS, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TAddChipBalanceFrame = class(TBaseFrame)
    btnCancel: TcxButton;
    btnAddAmount: TcxButton;
    btnModifyAmount: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    edInitialAmount: TcxTextEdit;
    PgSQL1: TPgSQL;
    cxLabel4: TcxLabel;
    edPresentAmount: TcxTextEdit;
    cbCategory: TcxDBLookupComboBox;
    PgDataSource1: TPgDataSource;
    PgDataSource4: TPgDataSource;
    PgDataSource2: TPgDataSource;
    PgTable2: TPgTable;
    PgDataSource3: TPgDataSource;
    PgTable3: TPgTable;
    cbValue: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    edId: TcxTextEdit;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddAmountClick(Sender: TObject);
    procedure btnModifyAmountClick(Sender: TObject);
    procedure edInitialAmountKeyPress(Sender: TObject; var Key: Char);
    procedure edPresentAmountKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddChipBalanceFrame: TAddChipBalanceFrame;

implementation

uses
  uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddChipBalanceFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edInitialAmount.Text = '') then
  begin
    Information('Warning', 'You must fill the initial amount field.');
    Result := False;
    Exit;
  end;


end;

procedure TAddChipBalanceFrame.btnAddAmountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_chip_balances (id_category, id_value, initial_amount, present_amount) ' +
    'VALUES (' +
    VarToStr(cbCategory.EditValue) + ', ' +
    VarToStr(cbValue.EditValue) + ', ' +
    edInitialAmount.Text + ', ' +
    edPresentAmount.Text +
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
        Information('Warning', 'Chip balance with such category and value is already created');
        Exit;
      end
      else
      begin
      HandleException(E, 'TAddChipBalanceFrame.btnModifyUserClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddChipBalanceFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddChipBalanceFrame.btnModifyAmountClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'UPDATE tbl_chip_balances ' +
    'SET ' +
    'id_category = ' + VarToStr(cbCategory.EditValue) + ', ' +
    'id_value = ' + VarToStr(cbValue.EditValue) + ', ' +
    'initial_amount = ' + edInitialAmount.Text + ', ' +
    'present_amount = ' + edPresentAmount.Text + ' ' +
    'WHERE id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddChipBalanceFrame.btnModifyUserClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddChipBalanceFrame.edPresentAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddChipBalanceFrame.edInitialAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

end.
