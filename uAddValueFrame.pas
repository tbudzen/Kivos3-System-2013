unit uAddValueFrame;

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
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBAccess,
  PgAccess, Data.DB, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, cxMemo,
  MemDS, cxDBEdit;

type
  TAddValueFrame = class(TBaseFrame)
    btnAddValue: TcxButton;
    btnCancel: TcxButton;
    btnModifyValue: TcxButton;
    edValueName: TcxTextEdit;
    edValueMultiplier: TcxTextEdit;
    lbValueName: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edValueDescription: TcxMemo;
    PgTable1: TPgTable;
    PgDataSource1: TPgDataSource;
    PgTable2: TPgTable;
    PgTable3: TPgTable;
    PgDataSource2: TPgDataSource;
    PgDataSource3: TPgDataSource;
    cbCategory: TcxDBLookupComboBox;
    PgTable4: TPgTable;
    PgDataSource4: TPgDataSource;
    PgTable5: TPgTable;
    PgTable6: TPgTable;
    PgDataSource5: TPgDataSource;
    PgDataSource6: TPgDataSource;
    cbUnit: TcxDBLookupComboBox;
    cbCurrency: TcxDBLookupComboBox;
    edId: TcxTextEdit;
    cxLabel6: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddValueClick(Sender: TObject);
    procedure btnModifyValueClick(Sender: TObject);
    procedure edValueMultiplierKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields() : Boolean;
  end;

var
  AddValueFrame: TAddValueFrame;

implementation

uses
  uSystem, uFrmMain, uExceptions;

{$R *.dfm}

function TAddValueFrame.ValidateFields() : Boolean;
begin

  Result := True;

  if (edValueName.Text = '') then
  begin
    Information('Warning', 'You must fill the value name field.');
    Result := False;
    Exit;
  end;

  if (edValueMultiplier.Text = '') then
  begin
    Information('Warning', 'You must fill the value multiplier field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddValueFrame.btnAddValueClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'INSERT INTO tbl_values (name, multiplier, id_category, id_unit, id_currency, description, is_system_value) ' +
    'VALUES (' +
    '''' + edValueName.Text + ''', ' +
    '' + edValueMultiplier.Text + ', ' +
    '' + cbCategory.DataBinding.Field.DisplayText + ', ' +
    '' + cbUnit.DataBinding.Field.DisplayText + ', ' +
    '' + cbCurrency.DataBinding.Field.DisplayText + ', ' +
    '''' + edValueDescription.Text + ''', ' +
    '0 ' +
    ')';

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      if (Pos('uq_', E.Message) > 0) or (Pos('pk_', E.Message) > 0) then
      begin
        Information('Warning', 'Value with such name is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddValueFrame.btnAddValueClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddValueFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddValueFrame.btnModifyValueClick(Sender: TObject);
var
  QueryStr : WideString;
begin

  if not ValidateFields() then Exit;

  QueryStr :=
    'UPDATE ' +
    '  tbl_values ' +
    'SET ' +
    '  name = ''' + edValueName.Text + ''', ' +
    '  multiplier = ' + edValueMultiplier.Text + ', ' +
    '  id_category = ' + VarToStr(cbCategory.EditValue) + ', ' +
    '  id_unit = ' + VarToStr(cbUnit.EditValue) + ', ' +
    '  id_currency = ' + VarToStr(cbCurrency.EditValue) + ', ' +
    '  description = ''' + edValueDescription.Text + ''' ' +
    'WHERE ' +
    '  id = ' + edId.Text;

  PGSQL1.SQL.Clear();
  PGSQL1.SQL.Add(QueryStr);
  try
    PGSQL1.Execute();
  except
    on E : Exception do
    begin
      HandleException(E, 'TAddValueFrame.btnModifyValueClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);

end;

procedure TAddValueFrame.edValueMultiplierKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0' .. '9', '.', #$08, #$2E]) then
  begin
    Key := #0;
  end;
end;

end.
