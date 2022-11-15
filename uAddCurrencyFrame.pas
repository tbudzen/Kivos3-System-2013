unit uAddCurrencyFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  TAddCurrencyFrame = class(TBaseFrame)
    btnModifyCurrency: TcxButton;
    btnAddCurrency: TcxButton;
    btnCancel: TcxButton;
    edCurrencyName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    edCurrencyDescription: TcxMemo;
    edCurrencySymbol: TcxTextEdit;
    cxLabel1: TcxLabel;
    edId: TcxTextEdit;
    cxLabel4: TcxLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddCurrencyClick(Sender: TObject);
    procedure btnModifyCurrencyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidateFields(): Boolean;
  end;

var
  AddCurrencyFrame: TAddCurrencyFrame;

implementation

uses uSystem,
  uExceptions,
  uFrmMain;

{$R *.dfm}

function TAddCurrencyFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if (edCurrencyName.Text = '') then
  begin
    Information('Warning', 'You must fill the currency name field.');
    Result := False;
    Exit;
  end;

  if (edCurrencySymbol.Text = '') then
  begin
    Information('Warning', 'You must fill the currency symbol field.');
    Result := False;
    Exit;
  end;

end;

procedure TAddCurrencyFrame.btnAddCurrencyClick(Sender: TObject);
var
  QueryStr: WideString;
  xIdCurrncy: string;
  xresult: Boolean;
begin

  if not ValidateFields() then
    Exit;
  xresult := True;
  QueryStr := 'INSERT INTO tbl_currencies (name, symbol, description) ' +
    'VALUES (''' + edCurrencyName.Text + ''', ''' + edCurrencySymbol.Text +
    ''', ''' + edCurrencyDescription.Text + ''')';

  PgSQL1.Connection.StartTransaction;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      xresult := False;
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning', 'Currency with such name is already created');
        Exit;
      end
      else
      begin
        HandleException(E, 'TAddCurrencyFrame.btnModifyCurrencyClick()');
      end;
    end;
  end;

  if xresult then
  begin

    xIdCurrncy := frmMain.GetFieldAsString
      ('Select max(id) as id from tbl_currencies', 'id');



    QueryStr :=
      'INSERT INTO tbl_currencies_exchange_rates (id_currency, buying, selling,valid_from,valid_to) '
      + 'VALUES (%s,0,0,now(),''%s'')';
    QueryStr := Format(QueryStr, [xIdCurrncy,'2050-01-01']);

    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(QueryStr);
    try
      PgSQL1.Execute();
    except

      on E: Exception do
      begin
        xresult := False;
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning', 'Currency with such name is already created');
          Exit;
        end
        else
        begin
          HandleException(E, 'TAddCurrencyFrame.btnModifyCurrencyClick()');
        end;
      end;
    end;
  end;

  if xresult then
  begin

    PgSQL1.Connection.Commit;
  end
  else
  begin
    PgSQL1.Connection.rollback;
  end;

  SendMainMessage('close|current');

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

procedure TAddCurrencyFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

procedure TAddCurrencyFrame.btnModifyCurrencyClick(Sender: TObject);
var
  QueryStr: WideString;
begin

  if not ValidateFields() then
    Exit;

  QueryStr := 'UPDATE tbl_currencies ' + 'SET symbol = ''' +
    edCurrencySymbol.Text + ''', name = ''' + edCurrencyName.Text +
    ''', description = ''' + edCurrencyDescription.Text + ''' WHERE id = ' +
    edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      HandleException(E, 'TAddCurrencyFrame.btnModifyCurrencyClick()');
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Table.Active := False;
  frmMain.Table.Active := True;
end;

end.
