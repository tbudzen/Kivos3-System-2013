unit uCountModuleFrame;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCheckBox, DBAccess, PgAccess, MemDS, cxCalc;

type
  TCountModuleFrame = class(TBaseFrame)
    cxLabel76: TcxLabel;
    cxLabel75: TcxLabel;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    cxGridLevel10: TcxGridLevel;
    btnConfirm: TcxButton;
    btnCancel: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgQuery2: TPgQuery;
    PgDataSource2: TPgDataSource;
    PgQuery3: TPgQuery;
    PgDataSource3: TPgDataSource;
    cxGridDBTableView9id: TcxGridDBColumn;
    cxGridDBTableView9id_cd_sub_transaction: TcxGridDBColumn;
    cxGridDBTableView9id_cd_transaction: TcxGridDBColumn;
    cxGridDBTableView9id_cd_value: TcxGridDBColumn;
    cxGridDBTableView9id_cashdesk: TcxGridDBColumn;
    cxGridDBTableView9count: TcxGridDBColumn;
    cxGridDBTableView9amount_in: TcxGridDBColumn;
    cxGridDBTableView9amount_out: TcxGridDBColumn;
    cxGridDBTableView9id_cd_category: TcxGridDBColumn;
    cxGridDBTableView9ct_number: TcxGridDBColumn;
    cxGridDBTableView9nr: TcxGridDBColumn;
    cxGridDBTableView9amount: TcxGridDBColumn;
    PgSQL1: TPgSQL;
    cxGridDBTableView9category: TcxGridDBColumn;
    cxGridDBTableView9value: TcxGridDBColumn;
    PgQuery4: TPgQuery;
    PgDataSource4: TPgDataSource;
    cxGridDBTableView10amount: TcxGridDBColumn;
    cxGridDBTableView10name: TcxGridDBColumn;
    cxGridDBTableView9change_chf: TcxGridDBColumn;
    cxGridDBTableView9amount_chf: TcxGridDBColumn;
    PgQuery5: TPgQuery;
    cxGridDBTableView9multiplier: TcxGridDBColumn;
    cxGridDBTableView10difference: TcxGridDBColumn;
    cxGridDBTableView10amount_1: TcxGridDBColumn;
    GenericQuery: TPgQuery;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView9nrPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView9multiplierPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    CurrentCashDesk : WideString;
    TransactionType : Integer;
    CashDeskDefaultCarryOver : Boolean;
    DoWeHaveDifferencies : Boolean;

    function  IIf(B : Boolean; S1 : WideString; S2 : WideString) : WideString;

    function  GetNextCashTransactionNumber() : Integer;
    procedure ExecSQL(Q : WideString);
    function  GetFieldAsString(Q : WideString; FieldName : WideString) : WideString;
    function  FindLastShift(TypeId : Integer; CashDesk : WideString) : WideString;
    procedure PostShift();
    function  CheckDifferenciesFrom(FromShiftType : Integer; CashDesk : WideString; CTNr : WideString; CurrentCTNr : WideString) : Boolean;
    procedure DoOpenMoving
    (
    );
    function  DoAutoShift
    (
      TypeId : Integer;
      CTShift1 : WideString;
      CTShift2 : WideString
    ) : WideString; // Returns cash transaction ct_number
  end;

var
  CountModuleFrame: TCountModuleFrame;

implementation

uses
  uSystem,
  uGlobals,
  uExceptions,
  uFrmMain,
  uPermissions,
  uListOfCashTransactionsFrame,
  StrUtils,
  uFrmCashierRelogin;

{$R *.dfm}

procedure TCountModuleFrame.btnCancelClick(Sender: TObject);
var
  QueryStr,
  CTNr,
  ErrorMessage : WideString;
begin

  ErrorMessage := 'Error while cancelling current shift';

  // Delete cash transaction

  QueryStr :=
    'delete from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  // Delete cash transaction subtransaction

  QueryStr :=
    'delete from tbl_cd_cash_transactions_subt ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  // Delete cash transaction categories

  QueryStr :=
    'delete from tbl_cd_cash_transactions_subt_categories ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  // Delete cash transaction values

  QueryStr :=
    'delete from tbl_cd_cash_transactions_subt_categories_values ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  // Close frame

  SendMainMessage('close|current');

end;

  function TCountModuleFrame.GetFieldAsString(Q : WideString; FieldName : WideString) : WideString;
  begin
    PgQuery5.Active := False;
    PgQuery5.SQL.Clear();
    PgQuery5.SQL.Add(Q);
    PgQuery5.Execute();
    if PgQuery5.RowsAffected <> 0 then
    begin
      Result := PgQuery5.FieldByName(FieldName).AsWideString;
    end
    else
    begin
      Result := '';
    end;
  end;

function TCountModuleFrame.FindLastShift(TypeId : Integer; CashDesk : WideString) : WideString;
begin

    Result :=
      GetFieldAsString
      (
        'select ' +
        '  ct_number ' +
        'from ' +
        '  tbl_cd_cash_transactions ' +
        'where ' +
        '  (type = ' + IntToStr(TypeId) + ') and ' +
        '  id_cashdesk = ' + CashDesk +
        'order by ' +
        '  datetime desc',
        'ct_number'
      );
  {
  Information
  (
    'Debug',
    'Last shift of type ' + frmMain.ShiftInfo[TypeId].Mnemonic + ' is ' + Result
  );
  }
end;

  procedure TCountModuleFrame.ExecSQL(Q : WideString);
  begin
    PgSQL1.SQL.Clear();
    PgSQL1.SQL.Add(Q);
    try
      PgSQL1.Execute();
    except
      on E : Exception do
      begin
        if Pos('uq_', E.Message) > 0 then
        begin
          Information('Warning', 'Prepare shift transaction internal error');
          Exit;
        end
        else
        begin
          HandleException(E, 'TListOfShiftsFrame.PrepareShift()');
        end;
      end;
    end;
  end;

function TCountModuleFrame.GetNextCashTransactionNumber() : Integer;
var
  QueryStr, TempNo : String;
  i, j : Integer;
begin

  Result := 0;

  try    {
    TempNo :=
      GetFieldAsString
      (
        'select ct_number ' +
        'from tbl_cd_cash_transactions ' +
        'where datetime in (select max(datetime) from tbl_cd_cash_transactions)',
        'ct_number'
      ); }
          TempNo := frmMain.GetFieldAsString(' select ct_number  ' +
    '  from tbl_cd_cash_transactions  ' +
    '  where id in ( select id  from tbl_cd_cash_transactions   ' +
    '        where dateTime in (select max(dateTime) from tbl_cd_cash_transactions)   '
    + '        order by  id desc limit 1) ', 'ct_number');
  except
    on E : Exception do
    begin
      Information('Warning', 'Internal error in GetNextCashTransactionNumber()');
      Exit;
    end;
  end;

  if TempNo = '' then
  begin
    Result := 1;
  end
  else
  begin
    i := Pos('/', TempNo);
    j := PosEx('/', TempNo, i + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    Result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;

end;

function TCountModuleFrame.IIf(B : Boolean; S1 : WideString; S2 : WideString) : WideString;
begin
  if B then
  begin
    Result := S1;
  end
  else
  begin
    Result := S2;
  end;
end;

procedure TCountModuleFrame.DoOpenMoving
(
);
var
  TypeId, i : Integer;
  dYear, dMonth, dDay : Word;
  CategoriesQuery, QueryStr : WideString;
  CTNumber, IdUser, IdCdTransaction, IdCdSubTransaction : WideString;
begin

  TypeId := CT_OPEN_MOVING;

  DecodeDate(Now(), dYear, dMonth, dDay);
  CTNumber :=
    frmMain.ShiftInfo[TypeId].Mnemonic + '/' +
    CurrentCashDesk + '/' +
    IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' +
    IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

  // For each move category in table_cd_move_categories
  // we add single OpenMoving transaction

  CategoriesQuery :=
    'select * from tbl_cd_move_categories ' +
    'where id_cashdesk = ' + CurrentCashDesk;

  GenericQuery.Active := False;
  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(CategoriesQuery);
  GenericQuery.Active := True;

  for i := 1 to GenericQuery.RecordCount do
  begin

    IdUser :=
      GetFieldAsString('select id from tbl_users where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

    QueryStr :=
      '  insert into tbl_cd_cash_transactions ' +
      '  ( ' +
      '    id_cashdesk, ' +
      '    type, ' +
      '    ct_number, ' +
      '    datetime, ' +
      '    id_user, ' +
      '    is_multiple_cd_transaction, ' +
      '    confirmed ' +
      '  ) ' +
      '  values ' +
      '    (' +
             CurrentCashDesk + ', ' +
             IntToStr(TypeId) + ', ' +
             '''' + CTNumber + ''', ' +
             '''' + DateTimeToStr(Now(), frmMain.FormatSettings) + ''', ' +
             IdUser + ', ' +
             '0, ' +
             '0' +
      '    ); ';

    ExecSQL(QueryStr);

    IdCdTransaction :=
      GetFieldAsString('select id from tbl_cd_cash_transactions where ct_number = ''' + CTNumber + '''', 'id');

    //----------------------------------------------------------------------------

    // Cash subtransaction

    QueryStr :=
      '  insert into tbl_cd_cash_transactions_subt ' +
      '    (id_cashdesk, id_cd_transaction, ct_number) ' +
      '  values ' +
      '    (' +
             CurrentCashDesk + ', ' +
             IdCdTransaction + ', ' +
             '''' + CTNumber + ''' ' +
      '    );';

    ExecSQL(QueryStr);

    IdCdSubTransaction :=
      GetFieldAsString('select id from tbl_cd_cash_transactions_subt where ct_number = ''' + CTNumber + '''', 'id');

    //----------------------------------------------------------------------------

    // Cash transaction categories

    QueryStr :=
      '  insert into tbl_cd_cash_transactions_subt_categories ' +
      '  ( ' +
      '    id_cashdesk, ' +
      '    id_cd_transaction, ' +
      '    ct_number, ' +
      '    id_cd_sub_transaction, ' +
      '    id_cd_category ' +
      '  ) ' +
      '  select ' +
           CurrentCashDesk + ', ' +
           IdCdTransaction + ', ' +
           '''' + CTNumber + ''', ' +
           IdCdSubTransaction + ', ' +
      '    id_category ' +
      '  from ' +
      '    tbl_cd_values ' +
      '  where ' +
      '    id_cashdesk = ' + CurrentCashDesk + ' ' +
      '  group by ' +
      '    id_category; ';

    ExecSQL(QueryStr);

    //----------------------------------------------------------------------------

    // Cash transaction values

    QueryStr :=
      '  insert into tbl_cd_cash_transactions_subt_categories_values ' +
      '  (' +
      '    id_cashdesk, ' +
      '    id_cd_transaction, ' +
      '    ct_number, ' +
      '    id_cd_sub_transaction, ' +
      '    id_cd_category, ' +
      '    id_cd_value, ' +
      '    count, ' +
      '    amount_in, ' +
      '    amount_out, ' +
      '    nr, ' +
      '    exchange_rate ' +
      '  ) ' +
      '  select ' +
           CurrentCashDesk + ', ' +
           IdCdTransaction + ', ' +
           '''' + CTNumber + ''', ' +
           IdCdSubTransaction + ', ' +
      '    id_category, ' +
      '    id_value, ' + // Moving CHF value
      '    0, ' +
      '    0, ' +
      '    0, ' +
      '    0, ' +
      '    current_exchange_rate_by_value_id(id_value, now()) ' +
      '  from ' +
      '    tbl_cd_values ' +
      '  where ' +
      '    id_cashdesk = ' + CurrentCashDesk + ' ' +
      '  ;';

    ExecSQL(QueryStr);

  end;

end;

function TCountModuleFrame.DoAutoShift
(
  TypeId : Integer;
  CTShift1 : WideString;
  CTShift2 : WideString
) : WideString; // Returns cash transaction ct_number
var
  dYear, dMonth, dDay : Word;
  CTNumber : WideString;
  TypeName : WideString;
  QueryStr : WideString;
  FromShiftType : Integer;
  COStr : WideString;
  IdUser, IdCdTransaction, IdCdSubTransaction : WideString;
begin

  // Auto-shift (automatic cash transaction)
  // can be based on 1 or 2 cash transactions with their values
  // Currently OPEN_MOVING, CLOSE_MOVING or DIFFERENCIES

  // Debug

  case TypeId of
    CT_OPEN_MOVING    : TypeName := 'Open moving';
    CT_CLOSE_MOVING   : TypeName := 'Close moving';
    CT_DIFFERENCIES   : TypeName := 'Differencies';
  end;

  if CashDeskDefaultCarryOver then
  begin
    COStr := ' with carry-over';
  end
  else
  begin
    COStr := '';
  end;
  {
  if CTShift2 = '' then
  begin
    Information
    (
      'Debug',
      'Doing ' + TypeName + ' auto-shift based on [' + CTShift1 + ']' + COStr
    );
  end
  else
  begin
    Information
    (
      'Debug',
      'Doing ' + TypeName + 'auto-shift based on [' + CTShift1 + '] and [' + CTShift2 + ']' + COStr
    );
  end;
   }
  // End of debug

//----------------------------------------------------------------------------

  DecodeDate(Now(), dYear, dMonth, dDay);
  CTNumber :=
    frmMain.ShiftInfo[TypeId].Mnemonic + '/' +
    CurrentCashDesk + '/' +
    IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' +
    IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

  // Cash transaction

  IdUser :=
    GetFieldAsString('select id from tbl_users where user_name = ''' + frmMain.CurrentUserName + '''', 'id');

  // TODO: Accounts

  QueryStr :=
    '  insert into tbl_cd_cash_transactions ' +
    '  ( ' +
    '    id_cashdesk, ' +
    '    type, ' +
    '    ct_number, ' +
    '    datetime, ' +
    '    id_user, ' +
    '    is_multiple_cd_transaction, ' +
    '    confirmed ' +
    '  ) ' +
    '  values ' +
    '    (' +
           CurrentCashDesk + ', ' +
           IntToStr(TypeId) + ', ' +
           '''' + CTNumber + ''', ' +
           '''' + DateTimeToStr(Now(), frmMain.FormatSettings) + ''', ' +
           IdUser + ', ' +
           '0, ' +
           '0' +
    '    ); ';

  ExecSQL(QueryStr);

  IdCdTransaction :=
    GetFieldAsString('select id from tbl_cd_cash_transactions where ct_number = ''' + CTNumber + '''', 'id');

//----------------------------------------------------------------------------

  // Cash subtransaction

  QueryStr :=
    '  insert into tbl_cd_cash_transactions_subt ' +
    '    (id_cashdesk, id_cd_transaction, ct_number) ' +
    '  values ' +
    '    (' +
           CurrentCashDesk + ', ' +
           IdCdTransaction + ', ' +
           '''' + CTNumber + ''' ' +
    '    );';

  ExecSQL(QueryStr);

  IdCdSubTransaction :=
    GetFieldAsString('select id from tbl_cd_cash_transactions_subt where ct_number = ''' + CTNumber + '''', 'id');

//----------------------------------------------------------------------------

  // Cash transaction categories

  QueryStr :=
    '  insert into tbl_cd_cash_transactions_subt_categories ' +
    '  ( ' +
    '    id_cashdesk, ' +
    '    id_cd_transaction, ' +
    '    ct_number, ' +
    '    id_cd_sub_transaction, ' +
    '    id_cd_category ' +
    '  ) ' +
    '  select ' +
         CurrentCashDesk + ', ' +
         IdCdTransaction + ', ' +
         '''' + CTNumber + ''', ' +
         IdCdSubTransaction + ', ' +
    '    id_category ' +
    '  from ' +
    '    tbl_cd_values ' +
    '  where ' +
    '    id_cashdesk = ' + CurrentCashDesk + ' ' +
    '  group by ' +
    '    id_category; ';

  ExecSQL(QueryStr);

//----------------------------------------------------------------------------

  // Cash transaction values

  case TypeId of

    CT_OPEN_MOVING :
      begin
        QueryStr :=
    '  insert into tbl_cd_cash_transactions_subt_categories_values ' +
    '  (' +
    '    id_cashdesk, ' +
    '    id_cd_transaction, ' +
    '    ct_number, ' +
    '    id_cd_sub_transaction, ' +
    '    id_cd_category, ' +
    '    id_cd_value, ' +
    '    count, ' +
    '    amount_in, ' +
    '    amount_out, ' +
    '    nr, ' +
    '    exchange_rate ' +
    '  ) ' +
    '  select ' +
         CurrentCashDesk + ', ' +
         IdCdTransaction + ', ' +
         '''' + CTNumber + ''', ' +
         IdCdSubTransaction + ', ' +
    '    id_category, ' +
    '    id_value, ' +
    '    0, ' +
    '    0, ' +
    '    0, ' +
    '    0, ' + // nr
    '    current_exchange_rate_by_value_id(id_value, now()) ' +
    '  from ' +
    '    tbl_cd_values ' +
    '  where ' +
    '    id_cashdesk = ' + CurrentCashDesk + ' ' +
    '  ;';

 // ExecSQL(QueryStr);
      end;

    CT_CLOSE_MOVING :
      begin
        QueryStr :=
    '  insert into tbl_cd_cash_transactions_subt_categories_values ' +
    '  (' +
    '    id_cashdesk, ' +
    '    id_cd_transaction, ' +
    '    ct_number, ' +
    '    id_cd_sub_transaction, ' +
    '    id_cd_category, ' +
    '    id_cd_value, ' +
    '    count, ' +
    '    amount_in, ' +
    '    amount_out, ' +
    '    nr, ' +
    '    exchange_rate ' +
    '  ) ' +
    '  select ' +
         CurrentCashDesk + ', ' +
         IdCdTransaction + ', ' +
         '''' + CTNumber + ''', ' +
         IdCdSubTransaction + ', ' +
    '    id_category, ' +
    '    id_value, ' +
    '    0, ' +
    '    0, ' +
    '    0, ' +
    '    0, ' +
    '    current_exchange_rate_by_value_id(id_value, now()) ' +
    '  from ' +
    '    tbl_cd_values ' +
    '  where ' +
    '    id_cashdesk = ' + CurrentCashDesk + ' ' +
    '  ;';

 // ExecSQL(QueryStr);
      end;

    CT_DIFFERENCIES :
      begin

  FromShiftType := CT_UNKNOWN;
  // TypeId of CTShift1
  if Copy(CTShift1, 1, 4) = 'OPSH' then
  begin
    FromShiftType := CT_CLOSE_SHIFT;
  end
  else if Copy(CTShift1, 1, 4) = 'CLSH' then
  begin
    FromShiftType := CT_OPEN_SHIFT;
  end
  else
  begin
    FromShiftType := CT_OPEN_SHIFT;
  end;

        // Differencies which goes into difference field

        QueryStr :=
          'insert into tbl_cd_cash_transactions_subt_categories_values ' +
          '(' +
          '  id_cashdesk, ' +
          '  id_cd_transaction, ' +
          '  ct_number, ' +
          '  id_cd_sub_transaction, ' +
          '  id_cd_category, ' +
          '  id_cd_value, ' +
          '  count, ' +
          '  amount_in, ' +
          '  amount_out, ' +
          '  nr, ' + // <-- Here goes the difference
          '  exchange_rate ' +
          ') ' +
          'select ' +
             CurrentCashDesk + ', ' +
             IdCdTransaction + ', ' +
             '''' + CTNumber + ''', ' +
             IdCdSubTransaction + ', ' +
          '  t1.id_cd_category, ' +  // id_category
          '  t1.id_cd_value, ' + // id_value
          '  t2.sum_count - t1.sum_count, ' + // count
          '  t2.sum_amount_in - t2.sum_amount_in, ' + // amount_in
          '  t2.sum_amount_out - t2.sum_amount_out, ' + // amount_out             '
          '  t2.amount - t1.amount as nr, ' +
          '  current_exchange_rate_by_value_id(t1.id_cd_value, now()) ' +
          'from ' +
          '( ' +

          // Amounts expected

    'select ' +
	  '  cat.name, ' +
	  '  sum(v.nr * v1.multiplier * ' +
    '    (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) ' +
    '  as amount ' +
    'from ' +
	  '  tbl_cd_cash_transactions as t ' +
	  '  left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number ' +
	  '  left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number ' +
	  '  left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number ' +
    '  left join ' +
	  '  ( ' +
		'    select id, multiplier from tbl_values ' +
	  '  ) as v1 on v1.id = v.id_cd_value, ' +
    // Selection of last CT_OPEN_SHIFT or CT_CLOSE_SHIFT or CT_CHANGE
    // according to caller, but without differencies:
    // see cd_cash_transactions_types -> goes_into_amount_expected
	  '  ( ' +
		'    select ' +
    '      max(datetime) as m_datetime ' +
		'    from ' +
    '      tbl_cd_cash_transactions ' +
		'    where ' +
		'	     type = ' + IntToStr(FromShiftType) + ' and ' +
		'	     id_cashdesk = ' + CurrentCashDesk + ' ' +
	  '  ) as m, ' +
	  '  tbl_categories as cat, ' +
    '  tbl_cd_cash_transactions_types as vtypes ' +
    'where ' +
    '  subt.ct_number <> ''' + CTNumber + ''' and ' +
	  '  (t.datetime <= now() and t.datetime >= m.m_datetime) and ' + // > or >=
	  '  t.id_cashdesk = ' + CurrentCashDesk + ' and ' +
	  '  c.id_cd_category = cat.id and ' + // Was BUG: Lack of join with c
	  '  v.id_cd_category = cat.id and ' +
    '  t.type = types.type and ' +
    '  types.goes_into_amount_expected = 1 ' +
    'group by ' +
	  '  cat.name ' +
    ') as t1 ' +

          // Amounts entered by cashier

          'left join ' +
          '( ' +
          'select ' +
          '  v.id_cd_category, ' +
          '  v.id_cd_value, ' +
          '  sum(v.count) as sum_count, ' +
          '  sum(v.amount_in) as sum_amount_in, ' +
          '  sum(v.amount_out) as sum_amount_out, ' +
          '  sum(v.nr * v2.multiplier * v.exchange_rate) as amount ' +
          'from ' +
          '  tbl_cd_cash_transactions as t ' +
          '  left join tbl_cd_cash_transactions_subt_categories_values as v on v.ct_number = t.ct_number ' +
          '  left join tbl_values as v2 on v.id_cd_value = v2.id, ' +
          '  tbl_categories as cat, ' +
          '  tbl_values as v0 ' +
          'where ' +
          '  t.ct_number = ''' +  ''' and ' +
          '  v.id_cd_category = cat.id and ' +
          '  v.id_cashdesk = ' + CurrentCashDesk + ' ' +
          'group by ' +
          '  v.id_cd_category, ' +
          '  v.id_cd_value ' +
          ') as t2 ';

        // TODO: We check carryover here for fixed_amount

      ExecSQL(QueryStr);

      end;

  end;


end;

// WARNING: Should be invoked only after post of currently opened shift

function TCountModuleFrame.CheckDifferenciesFrom
(
  FromShiftType : Integer;
  CashDesk : WideString;
  CTNr : WideString;
  CurrentCTNr : WideString
) : Boolean;

var
  CTFirstDifferenceShift, CTLastDifferenceShift : WideString;
  Difference, Total_2 : Double;
begin

  CTFirstDifferenceShift :=
    GetFieldAsString
    (
      '  select ' +
      '    max(t1.datetime) as __dummy__, ' +
      '    t1.ct_number ' +
	    '  from ' +
      '    tbl_cd_cash_transactions as t1, ' +
      '    tbl_cd_cash_transactions as t2 ' +
	    '  where ' +
      '    t1.type = ' + IntToStr(CT_DIFFERENCIES) + ' and ' +
		  '    t1.id_cashdesk = ' + CashDesk  + ' and ' +
		  '    t1.datetime >= t2.datetime and ' + // join on datetime order
		  '    t2.ct_number = ''' + CTNr + '''' +
      '  group by ' +
      '    t1.ct_number ',
      'ct_number'
    );

  CTLastDifferenceShift :=
    GetFieldAsString
    (
      '  select ' +
      '    t1.ct_number ' +
	    '  from ' +
      '    tbl_cd_cash_transactions as t1, ' +
      '    tbl_cd_cash_transactions as t2 ' +
	    '  where ' +
      '    t1.type = ' + IntToStr(CT_DIFFERENCIES) + ' and ' +
		  '    t1.id_cashdesk = ' + CashDesk  + ' and ' +
		  '    t1.datetime >= t2.datetime and ' + // join on datetime order
		  '    t2.ct_number = ''' + CTNr + '''',
      'ct_number'
    );

  // Total amount from last shift to CTNr

  Difference :=
    StrFloat(
    GetFieldAsString
    (
    'select t2.amount - t1.amount as difference from ' +
    '( ' +
    // Actual amounts entered by cashier in current cashdesk
    'select ' +
    '  sum(c.nr * v.multiplier * c.exchange_rate) as amount ' +
    'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' +
    '  tbl_categories as cat ' +
    'where ' +
    '  ct_number = ''' + CurrentCTNr + ''' and ' +
    '  c.id_cd_category = cat.id and ' +
    '  c.id_cd_value = v.id and ' +
    '  c.id_cashdesk = ' + CashDesk + ' ' +
    ') as t1, ' +
    '( '  +
    // Amounts expected
    // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
    // (we have no direction)
    'select ' +
	  '  sum(v.nr * v1.multiplier * ' +
    '    (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) ' +
    '  as amount ' +
    'from ' +
	  '  tbl_cd_cash_transactions as t ' +
	  '  left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number ' +
	  '  left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number ' +
	  '  left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number ' +
    '  left join ' +
	  '  ( ' +
		'    select id, multiplier from tbl_values ' +
	  '  ) as v1 on v1.id = v.id_cd_value, ' +
    // Selection of last CT_OPEN_SHIFT or CT_CLOSE_SHIFT or CT_CHANGE
    // according to caller, but without differencies:
    // see cd_cash_transactions_types -> goes_into_amount_expected
	  '  ( ' +
		'    select ' +
    '      max(datetime) as m_datetime ' +
		'    from ' +
    '      tbl_cd_cash_transactions ' +
		'    where ' +
		'	     type = ' + IntToStr(FromShiftType) + ' and ' +
		'	     id_cashdesk = ' + CashDesk + ' ' +
	  '  ) as m, ' +
	  '  tbl_categories as cat, ' +
    '  tbl_cd_cash_transactions_types as types ' +
    'where ' +
    '  subt.ct_number <> ''' + CurrentCTNr + ''' and ' +
	  '  (t.datetime <= now() and t.datetime >= m.m_datetime) and ' + // > or >=
	  '  t.id_cashdesk = ' + CashDesk + ' and ' +
	  '  c.id_cd_category = cat.id and ' + // Was BUG: Lack of join with c
	  '  v.id_cd_category = cat.id and ' +
    '  t.type = types.type and ' +
    '  types.goes_into_amount_expected = 1 ' +
    ') as t2 ',
      'difference'
    ));

  // Total of current shift

  // Bug: Brakowa³o joinu tak¿e po kategoriach i cashdesku

  Total_2 :=
    StrFloat(
    GetFieldAsString
    (
      'select ' +
      '  sum(ctscv.nr * v.multiplier * (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) as total ' +
      'from ' +
      '  tbl_cd_cash_transactions as t ' +
      '  left join tbl_cd_cash_transactions_subt_categories_values as ctscv on ' +
      '    t.ct_number = ctscv.ct_number ' +
      '  left join tbl_cd_values as cv on ' +
      '    ctscv.id_cd_value = cv.id_value and ' +
      '    ctscv.id_cd_category = cv.id_category ' +
      '  left join tbl_values as v on ' +
      '    cv.id_value = v.id and ' +
      '    cv.id_category = v.id_category ' +
      'where ' +
      '  ctscv.ct_number = ''' + CurrentCTNr + ''' and ' +
      '  ctscv.id_cashdesk = ' + CashDesk + ' and ' +
      '  cv.id_cashdesk = ' + CashDesk,
      'total'
    ));

    {
  Information
  (
    'Debug',
    'Differencies check based on [' + CTNr + '] ' +
    'from first difference shift [' + CTFirstDifferenceShift + '] ' +
    'to last difference shift [' + CTLastDifferenceShift + '] - ' +
    'and between [' + CurrentCTNr + '] ' +
    '= ' + FormatFloat('0.00', Difference)
  );
     }

  ExecSQL
  (
    'update ' +
    '  tbl_cd_cash_transactions ' +
    'set ' +
    '  difference = ' + StringReplace(Format('%f', [Difference]), ',', '.', [rfReplaceAll]) + ' ' +
    'where ' +
    '  ct_number = ''' + CurrentCTNr + ''''
  );

  Result := (Difference <> Total_2);

end;

procedure TCountModuleFrame.PostShift();
begin

  cxGridDBTableView9.DataController.Post(True);

end;

procedure TCountModuleFrame.btnConfirmClick(Sender: TObject);
label
  IntermediateConfirmation,
  IntermediateConfirmation2;
var
  IntermediateConfirmationCount : Integer;
  FrameName : WideString;
  Frame : TBaseFrame;
  Query : WideString;
  CTBaseShift, CTNr2, CTLastCloseShift, CTLastOpenShift : WideString;
begin

  // TODO: Show difference explanation in case of differencies

  if TransactionType = CT_OPEN_SHIFT then
  begin

    // We search for last close shift

    PostShift();
    CTLastCloseShift := FindLastShift(CT_CLOSE_SHIFT, CurrentCashDesk);
    DoWeHaveDifferencies := CheckDifferenciesFrom(CT_CLOSE_SHIFT, CurrentCashDesk, CTLastCloseShift, CTBaseShift);

    if CashDeskDefaultCarryOver then
    begin

      // then we sum all difference transactions since this last close shift
      // adding at last fixed amount for each value (<-- here's difference to below check)
      // then we insert summary values

      // Type Id 9 - inicjalne zasilenie kasy

      // Tylko total_amount_expected - total_amount_shift

      // WA¯NE:
      // np. w przypadku niweluj¹cych sie róznic w gotówce i ¿etonach
      // nie mammy difference miêdzy total_expected, a total_shift
      // chodzi o rozliczenie sumaryczne

      if DoWeHaveDifferencies then
      begin
        // Set difference field for OPEN_SHIFT
        //DoAutoShift(CT_DIFFERENCIES, CTLastCloseShift, '');
      end;

    end
    else
    begin

      if DoWeHaveDifferencies then
      begin
        //DoAutoShift(CT_DIFFERENCIES, CTLastCloseShift, '');
      end;

    end;
  end
  else
  if TransactionType = CT_CLOSE_SHIFT then
  begin

    // (this is transfer account transaction to have cashdesk zeroed)
    // We search for last open shift

    PostShift();

    CTLastOpenShift := FindLastShift(CT_OPEN_SHIFT, CurrentCashDesk);

    // Amount expected <> amount from values
    DoWeHaveDifferencies := CheckDifferenciesFrom(CT_OPEN_SHIFT, CurrentCashDesk, CTLastOpenShift, CTBaseShift);

    if CashDeskDefaultCarryOver then
    begin
      // then we take all normal transactions since the last open shift
      // then we check expected values with real (written) values

      if not DoWeHaveDifferencies then
      begin
        // After clicking Confirm button according to current close shift transaction,
        // we do 2nd automatic cash transaction (typeid 8)
        // moving the __same__ values to the other account

        DoAutoShift(CT_CLOSE_MOVING, CTBaseShift, '');

      end
      else
      begin
        // After clicking Confirm button according to current close shift transaction,

        // we do 2nd automatic cash transaction (typeid 7)
        // moving the __differencies__ values to the other account

        CTNr2 := DoAutoShift(CT_DIFFERENCIES, CTLastOpenShift, '');

        // then we do 3rd automatic cash transaction (typeid 8)
        // moving the (__written__ - __differencies__) values to the other account

        DoAutoShift(CT_CLOSE_MOVING, CTBaseShift, CTNr2);

      end;

    end
    else
    begin

      // then we take all normal transactions since the last open shift
      // then we check expected values with real (written) values

      if DoWeHaveDifferencies then
      begin
        //DoAutoShift(CT_DIFFERENCIES, CTLastOpenShift, '');
      end;

    end;
  end
  else
  if TransactionType = CT_INFO then
  begin
    // 1) Show window that first cashier has confirmed Intermediate
    // -- confirmation_id_user

    IntermediateConfirmationCount := 0;

    IntermediateConfirmation:

      if IntermediateConfirmationCount = 3 then
      begin
        Exit;
      end;

    // Logi operacji to jest osobna sprawa, warstwa fizyczna

  end
  else
  if TransactionType = CT_CHANGE_CASHIER then
  begin

    if Question('Confirm transaction ?') then
    begin

      // 2) Show relogin window for second cashier without save as dialog window
      // -- confirmation_id_user_second (for Intermediate only)

      frmCashierRelogin.lbLogin.Caption := 'Confirmation by supervisor';
      frmCashierRelogin.PgQuery1.Active := False;
      frmCashierRelogin.PgQuery1.SQL.Clear();
      frmCashierRelogin.PgQuery1.SQL.Add
      (
        'select cdu.id_user, u.user_name ' +
        'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user = u.id ' +
        'where cdu.id_cashdesk = ' + CurrentCashDesk
      );
      frmCashierRelogin.PgQuery1.Active := True;
      frmCashierRelogin.PgQuery6.Active := False;
      frmCashierRelogin.PgQuery6.SQL.Clear();
      frmCashierRelogin.PgQuery6.SQL.Add
      (
        'select cdu.id_user, u.user_name ' +
        'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user = u.id ' +
        'where cdu.id_cashdesk = ' + CurrentCashDesk
      );
      frmCashierRelogin.PgQuery6.Active := True;

      IntermediateConfirmation2:

      if IntermediateConfirmationCount = 3 then
      begin
        Exit;
      end;

      frmCashierRelogin.ShowModal;

      if frmCashierRelogin.ModalResult = mrOk then
      begin
        if CheckUserPassword('Program', VarToStr(frmCashierRelogin.cbCashier.Text), frmCashierRelogin.edPassword.Text) = 1 then
        begin
        //
        end
        else
        begin
          Information('Warning', 'Invalid password - please try again');
          goto IntermediateConfirmation2;
        end;
      end
      else if frmCashierRelogin.ModalResult = mrCancel then
      begin
        Inc(IntermediateConfirmationCount);
        goto IntermediateConfirmation;
      end;

    end
    else
    begin
      Exit;
    end;

    // TODO: Relogin cashier

  end;

//----------------------------------------------------------------------------

  SendMainMessage('close|current');

  if frmMain.FrameStackPreviousTop(FrameName, Frame) then
  begin
    if FrameName = 'Transactions' then
    begin
      TListOfCashTransactionsFrame(Frame).cbCashdesk.Properties.OnEditValueChanged(Sender);
    end;
  end;

end;

procedure TCountModuleFrame.cxButton1Click(Sender: TObject);
begin
  PgQuery3.Active := False;
  PgQuery3.Active := True;
end;

procedure TCountModuleFrame.cxGridDBTableView9multiplierPropertiesEditValueChanged(
  Sender: TObject);
begin

  cxGridDBTableView9.DataController.Post(True);
  PgQuery3.Active := False;
  PgQuery3.Active := True;

end;

procedure TCountModuleFrame.cxGridDBTableView9nrPropertiesEditValueChanged(
  Sender: TObject);
begin

  cxGridDBTableView9.DataController.Post(True);

  PgQuery3.Active := False;
  PgQuery3.Active := True;

  PgQuery4.Active := False;
  PgQuery4.Active := True;

end;

end.
