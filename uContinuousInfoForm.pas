unit uContinuousInfoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  Data.DB, cxDBData, cxCalc, DBAccess, PgAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxContainer,cxGridDBDataDefinitions;

type
  TContinuousInfoForm = class(TForm)
    btnOK: TcxButton;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBTableView9value_id: TcxGridDBColumn;
    cxGridDBTableView9id_cd_sub_transaction: TcxGridDBColumn;
    cxGridDBTableView9id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView9id_cd_category: TcxGridDBColumn;
    cxGridDBTableView9category: TcxGridDBColumn;
    cxGridDBTableView9id_cd_value: TcxGridDBColumn;
    cxGridDBTableView9id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView9ct_number: TcxGridDBColumn;
    cxGridDBTableView9nr: TcxGridDBColumn;
    cxGridDBTableView9value: TcxGridDBColumn;
    cxGridDBTableView9multiplier: TcxGridDBColumn;
    cxGridDBTableView9count: TcxGridDBColumn;
    cxGridDBTableView9amount_in: TcxGridDBColumn;
    cxGridDBTableView9amount_out: TcxGridDBColumn;
    cxGridDBTableView9amount: TcxGridDBColumn;
    cxGridDBTableView9change_chf: TcxGridDBColumn;
    cxGridDBTableView9amount_chf: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridDBTableView10name: TcxGridDBColumn;
    cxGridDBTableView10currency_symbol: TcxGridDBColumn;
    cxGridDBTableView10actual_amount_fc: TcxGridDBColumn;
    cxGridDBTableView10amount: TcxGridDBColumn;
    cxGridDBTableView10amount_expected_fc: TcxGridDBColumn;
    cxGridDBTableView10amount_1: TcxGridDBColumn;
    cxGridDBTableView10difference: TcxGridDBColumn;
    cxGrid12Level1: TcxGridLevel;
    PgDataSource4: TPgDataSource;
    PgQuery4: TPgQuery;
    PgQuery3: TPgQuery;
    PgDataSource3: TPgDataSource;
    CTNr: TcxTextEdit;
    cxButton_Save: TcxButton;
    procedure btnOKClick(Sender: TObject);
    procedure cxButton_SaveClick(Sender: TObject);
    procedure cxGridDBTableView9nrPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    FidCashdesk: string;
    function RemoveFromTransactionsTables: boolean;
    function SaveToShiftsTables: boolean;
  end;

var
  ContinuousInfoForm: TContinuousInfoForm;

implementation

uses
  uFrmMain, uDataBase, uSystem, uGlobals;

{$R *.dfm}

// ##############################################################################
procedure TContinuousInfoForm.btnOKClick(Sender: TObject);
begin

  RemoveFromTransactionsTables();
  Close();

end;

// ##############################################################################

procedure TContinuousInfoForm.cxButton_SaveClick(Sender: TObject);
var
  xDataSet: TResultHandle;
  xok: boolean;
begin
  xok := true;
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Query.Connection.StartTransaction;
  xDataSet.Add('Delete from tbl_shifts_caskdesk where id_cashDesk=' +
    StringToDataBAse(FidCashdesk));
  xok := xDataSet.ExecuteSQL;
  if xok then
  begin
    xok := SaveToShiftsTables;
  end;
  if xok then
  begin
    xok := RemoveFromTransactionsTables();
  end;

  if xok then
  begin
    xDataSet.Query.Connection.Commit;
  end
  else
  begin
    xDataSet.Query.Connection.Rollback;
  end;
  close();
end;

procedure TContinuousInfoForm.cxGridDBTableView9nrPropertiesEditValueChanged(
  Sender: TObject);

var
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr, TransactionIdStr: WideString;
begin

  SelectedRow := -1;
  DC := cxGridDBTableView9.DataController;
  frmMain.GridDB := Self.cxGridDBTableView9;
  SelectedRow := DC.FocusedRecordIndex;

  cxGridDBTableView9.DataController.Post(True);

  PgQuery3.Active := False;
  PgQuery3.Active := True;

  PgQuery4.Active := False;
  PgQuery4.Active := True;

  if (SelectedRow >= 0) then
  begin
    if (Self.cxGridDBTableView9.DataController.FocusedRecordIndex <
      Self.cxGridDBTableView9.DataController.RowCount) then
    begin
      Self.cxGridDBTableView9.DataController.FocusedRowIndex := SelectedRow + 1;
      // Skip to the next line

    end;
  end;

end;

// ##############################################################################

function TContinuousInfoForm.RemoveFromTransactionsTables: boolean;
var
  xExec: TResultHandle;
  xok: boolean;
begin
  xExec := TResultHandle.Create;
  xExec.ClearResult;
  xExec.Add('delete from tbl_cd_cash_transactions where ct_number = ''' +
    VarToStr(CTNr.Text) + '''');
  xok := xExec.ExecuteSQL;
  if xok then
  begin
    xExec.ClearResult;
    xExec.Add('delete from tbl_cd_cash_transactions_subt where ct_number = ''' +
      VarToStr(CTNr.Text) + '''');
    xok := xExec.ExecuteSQL;
  end;
  if xok then
  begin
    xExec.ClearResult;
    xExec.Add(
      'delete from tbl_cd_cash_transactions_subt_categories where ct_number = '''
      + VarToStr(CTNr.Text) + '''');
    xok := xExec.ExecuteSQL;
  end;
  if xok then
  begin
    xExec.ClearResult;
    xExec.Add(
      'delete from tbl_cd_cash_transactions_subt_categories_values where ct_number = '''
      + VarToStr(CTNr.Text) + '''');
    xok := xExec.ExecuteSQL;
  end;
  xExec.ClearResult;
  xExec.Free;
  result := xok;
end;

// ##############################################################################
{
  id_cd_value integer, ok
  id_cashdesk integer,
  count double precision,  -ok
  amount_in double precision, -ok
  amount_out double precision,  0
  id_cd_category integer, ok
  ct_number character varying, puste
  nr double precision,    ok
  exchange_rate double precision,
  direction integer,
  multiplier double precision,
  last_shift_datetime timestamp(6) with time zone,
  goes_into_amount_expected character varying,
  datetime timestamp(6) with time zone,
  category_name character varying,
  currency_symbol character varying,
  id_transaction integer, }

function TContinuousInfoForm.SaveToShiftsTables: boolean;
var
  xQuery: string;
  xDataSet: TResultHandle;
  xok: boolean;
begin
  xDataSet := TResultHandle.Create;
  PgQuery3.First;
  xok := true;
  while not PgQuery3.Eof do
  begin
    xQuery := ' Insert into tbl_shifts_caskdesk(id_cd_value, id_cashdesk, count, '
      + ' amount_in,id_cd_category,nr,exchange_rate, multiplier ,category_name, currency_symbol,  id_transaction ,datetime   )'
      + ' Values(%s,%s,%s,%s,%s,%s,%s,%s,''%s'',''%s'',%s,now())';
    try
      xQuery := format(xQuery,
        [StringToDataBAse(PgQuery3.FieldByName('id_cd_value').AsString),
        StringToDataBAse(FidCashdesk),
        FloatStrDataBase(PgQuery3.FieldByName('count').asfloat),
        FloatStrDataBase(PgQuery3.FieldByName('amount_base').asfloat),
        StringToDataBAse(PgQuery3.FieldByName('id_cd_category').AsString),
        FloatStrDataBase(PgQuery3.FieldByName('value_nr').asfloat),
        FloatStrDataBase(PgQuery3.FieldByName('change_chf').asfloat),
        FloatStrDataBase(PgQuery3.FieldByName('value_multiplier').asfloat),
        StringToDataBAse(PgQuery3.FieldByName('category_name').AsString),
        StringToDataBAse(PgQuery3.FieldByName('Currency_symbol').AsString),
        StringToDataBAse(PgQuery3.FieldByName('id_transaction').AsString)]);
      xDataSet.ClearResult;
      xDataSet.Add(xQuery);
      xok := xDataSet.ExecuteSQL;
    except

      xok := false;
    end;
    if not xok then
    begin
      break;
    end;
    PgQuery3.Next;
  end;
  xDataSet.ClearResult;
  xDataSet.Free;
  result:= xok;
end;

// ##############################################################################

end.
