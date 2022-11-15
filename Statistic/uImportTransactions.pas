unit uImportTransactions;

interface

uses uDataBase, classes, sysutils;

type

  TImportTransactions = class(TObject)
  private
    function ExecuteImport_: boolean;
    function CheckTableImport_: boolean;
    function CreateRecords_: boolean;
    function MaxCT_number(): integer;
    function GenerateCT_number(AidCashDesk: integer; Number: integer;
      Aid_type: integer; AidAlternate_type: integer): string;
    function Account_from(AidCashDesk: integer; atype: integer): string;
    function Account_to(AidCashDesk: integer; atype: integer): string;
    function CreateRequest(Aid_Transaction, AidCash_transaction: integer;
      Actnr_: string; AidCashDesk: integer; cBase_nr: string): boolean;
    procedure CopyTransaction(BaseCTNr: WideString; CTNr: WideString;
      NewTypeId: integer; NewCashDesk: integer; Direction: integer;
      Confirms: WideString; Reversed: boolean = False;
      Confirmed: boolean = False);
    function IIf(B: boolean; S1: WideString; S2: WideString): WideString;
  public

    class function CheckTableImport: boolean;
    class function ExecuteImport: boolean;

  end;

implementation

uses uFrmMain, strUtils, uGlobals, uSystem, uFrmDataBase;
{ TImportTransactions }

// ##############################################################################
class function TImportTransactions.CheckTableImport: boolean;
var
  xObject: TImportTransactions;
begin
  xObject := TImportTransactions.Create;
  result := xObject.CheckTableImport_;
  xObject.Free;
end;

// ##############################################################################

class function TImportTransactions.ExecuteImport: boolean;
var
  xObject: TImportTransactions;
begin
  xObject := TImportTransactions.Create;
  result := xObject.ExecuteImport_;
  xObject.Free;
end;

// ##############################################################################
// TImportTransactions  private
// ##############################################################################
function TImportTransactions.ExecuteImport_: boolean;
var
  xDataSet: TResultHandle;
  xResult: boolean;
begin
  xResult := true;
  xDataSet := TResultHandle.CreateImport;

  // xDataSet.query.Connection.StartTransaction;

  xResult := CreateRecords_;

  { if xResult then
    begin
    xDataSet.query.Connection.Commit;
    end
    else
    begin
    xDataSet.query.Connection.Rollback;
    end; }
  result := xResult;
  xDataSet.Free;
end;

// ##############################################################################

function TImportTransactions.CheckTableImport_: boolean;
var
  xDataSet: TResultHandle;
  xOk: boolean;
  xQuery: string;
begin
  xOk := true;
  xDataSet := TResultHandle.CreateImport;
  xDataSet.ClearResult;
  xQuery := 'Select system_name from tbl_workstations where id in (select idWorkStation from tbl_parametres) ';
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  if xDataSet.Count > 0 then
  begin
    if AnsiUpperCase(xDataSet.Query.FieldByName('system_name').AsString) <>
      frmMain.ComputerInfo.Identification.LocalComputerName then
    begin
      xOk := False;
    end;
  end
  else
  begin
    xOk := False;
  end;
  if xOk then
  begin
    xDataSet.ClearResult;
    xDataSet.Add
      ('Select count(*) as count from tbl_external_cd_transactions where ((ok <> 1) or (ok is null)) ');
    xDataSet.InvokeSQL;
    result := xDataSet.Query.FieldByName('count').AsInteger > 0;
  end;
  xDataSet.ClearResult;
  FreeAndNil(xDataSet);
end;

// ##############################################################################

procedure TImportTransactions.CopyTransaction(BaseCTNr, CTNr: WideString;
  NewTypeId, NewCashDesk, Direction: integer; Confirms: WideString;
  Reversed, Confirmed: boolean);
var
  IdCdSubTransaction: WideString;
  TmpDirection: WideString;
  xDataSet: TResultHandle;
begin

  xDataSet := TResultHandle.CreateImport;
  xDataSet.ClearResult;
  // copied_from_ct_number
  case NewTypeId of
    CT_TRANSFER_REQUEST_START:
      TmpDirection := '0';
    CT_TRANSFER_REQUEST_ACCEPTANCE:
      TmpDirection := '2';
    CT_ACTUAL_TRANSFER_START:
      TmpDirection := '2';
    CT_ACTUAL_TRANSFER_ACCEPTANCE:
      TmpDirection := '1';
  else
    TmpDirection := IntToStr(Direction);
  end;

  xDataSet.Add('insert into tbl_cd_cash_transactions ' + '( ' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  account_id_from, ' +
    '  account_id_to, ' + '  account_id_transfer, ' + '  confirmed, ' +
    // confirmed
    '  confirmation_id_user, ' + // confirmation_id_user
    '  id_user, ' + '  type, ' + '  datetime, ' + '  ct_number, ' +
    '  base_ct_number, ' + '  is_multiple_cd_transaction, ' + '  direction, ' +
    '  confirms, ' + '  amount_in, ' + '  amount_out ' + ') ' + 'select ' +
    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' +
    '  account_id_from, ' + '  account_id_to, ' + '  account_id_transfer, ' +
    IIf(Confirmed, '  1, ', '  0, ') + '  0, ' + '  id_user, ' +
    IntToStr(NewTypeId) + ', ' + '  now()  , ' + '  ''' + CTNr + ''', ' + '  '''
    + BaseCTNr + ''', ' + '  is_multiple_cd_transaction, ' + TmpDirection + ', '
    + '  ''' + Confirms + ''', amount_out, ' + 'amount_in ' +
    'from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
    BaseCTNr + ''';');
  xDataSet.ExecuteSQL;

  xDataSet.ClearResult;
  xDataSet.Add('insert into tbl_cd_cash_transactions_subt ' + '( ' +
    '  id_cd_transaction, ' + '  id_cashdesk, ' + '  ct_number, ' +
    '  multiple_subtransaction_id, ' + '  amount_in, ' + '  amount_out, ' +
    '  direction ' + ') ' + 'select ' + '  id_cd_transaction, ' +
    IntToStr(NewCashDesk) + ', ' + '  ''' + CTNr + ''', ' +
    '  multiple_subtransaction_id, ' + '  amount_out, ' + '  amount_in, ' +
    IIf(Reversed, '  3 - direction ', '  direction ') +
    'from tbl_cd_cash_transactions_subt ' + 'where ct_number = ''' +
    BaseCTNr + ''';');
  xDataSet.ExecuteSQL;

  xDataSet.ClearResult;
  xDataSet.Add('select id from tbl_cd_cash_transactions_subt ' +
    'where ct_number = ''' + CTNr + '''');
  xDataSet.InvokeSQL;
  if xDataSet.Count > 0 then
    IdCdSubTransaction := xDataSet.Query.FieldByName('id').AsString;

  xDataSet.ClearResult;

  xDataSet.Add('insert into tbl_cd_cash_transactions_subt_categories ' + '( ' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  id_cd_category, ' +
    '  ct_number, ' + '  id_cd_sub_transaction ' + ') ' + 'select ' +
    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' +
    '  id_cd_category, ' + '  ''' + CTNr + ''', ' + // '  ct_number, ' +
    IdCdSubTransaction + 'from tbl_cd_cash_transactions_subt_categories ' +
    'where ct_number = ''' + BaseCTNr + ''';');
  xDataSet.ExecuteSQL;

  xDataSet.ClearResult;

  xDataSet.Add('insert into tbl_cd_cash_transactions_subt_categories_values ' +
    '( ' + '  id_cashdesk, ' + '  id_cd_transaction, ' +
    '  id_cd_sub_transaction, ' + '  id_cd_value, ' + '  id_cd_category, ' +
    '  ct_number, ' + '  count, ' + '  amount_in, ' + '  amount_out, ' +

    '  nr, ' + '  exchange_rate, ' + '  category_name, ' + '  currency_symbol, '
    + '  direction, ' + '  multiplier,' + '  last_shift_datetime, ' +
    '  goes_into_amount_expected,' + ' datetime  ' + ') ' + 'select ' +
    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' + IdCdSubTransaction
    + ', ' + '  id_cd_value, ' + '  id_cd_category, ' + '  ''' + CTNr + ''', ' +
    // '  ct_number, ' +
    '  count, amount_out, ' + '  amount_in,  nr, ' + ' exchange_rate, ' +
    ' category_name,' + ' currency_symbol,' +
    ' case when direction=1 then 2 else  1 end , ' + ' multiplier,' +
    '  last_shift_datetime, ' + '  goes_into_amount_expected, datetime ' +
    ' from ' + '  tbl_cd_cash_transactions_subt_categories_values ' + 'where ' +
    '  ct_number = ''' + BaseCTNr + ''';');
  xDataSet.ExecuteSQL;
  xDataSet.ClearResult;
  xDataSet.Free;

end;

// ##############################################################################

function TImportTransactions.CreateRecords_: boolean;
var
  xDataSet: TResultHandle;
  xQuery: string;
  xId_cd_transactions: string;
  xResult: boolean;
  xct_number: string;
  xPom: TResultHandle;
  i: integer;
  IdCategory: string;
  xMax_CT_Number: integer;
  xIdCashdesk: integer;
  xType: integer;
  LastShiftDateTime: WideString;

  procedure Last_shift(AidCaskDesk: integer; ActNumber: string);
  begin

    if xResult then
    begin
      xQuery := ' delete from tbl_last_shift ' + 'where   id_cashdesk =%s ';

      xQuery := format(xQuery, [IntToStr(AidCaskDesk)]);
      xDataSet.ClearResult;
      xDataSet.Add(xQuery);
      try
        xDataSet.ExecuteSQL;
      except
        xResult := False;
      end;
    end;

    if xResult then
    begin
      xQuery := 'insert into tbl_last_shift (client_ip, id_cashdesk, ct_number) values(%s,%s,''%s'' ) ';
      xQuery := format(xQuery, [QuotedStr(frmMain.IdIPWatch1.CurrentIP),
        IntToStr(AidCaskDesk), ActNumber]);
      xDataSet.ClearResult;
      xDataSet.Add(xQuery);
      try
        xDataSet.ExecuteSQL;
      except
        xResult := False;
      end;
    end;
  end;

begin
  xResult := true;
  xDataSet := TResultHandle.CreateImport;
  xMax_CT_Number := MaxCT_number;

  // tbl_cd_cash_transactions
  xQuery := ' Insert into tbl_cd_cash_transactions(confirms)' +
    ' Select Distinct(Guid) from tbl_external_cd_transactions where ' +
    ' ((tbl_external_cd_transactions.ok is null) or ' +
    '(tbl_external_cd_transactions.ok <> 1)) order by Guid ';
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  try
    xDataSet.ExecuteSQL;
  except
    xResult := False;
  end;

  if xResult then
  begin

    xQuery := ' Update tbl_external_cd_transactions set id_cd_transaction=tbl_cd_cash_transactions.id '
      + ' from tbl_cd_cash_transactions where tbl_cd_cash_transactions.confirms= tbl_external_cd_transactions.guid and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '  (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := ' Update tbl_external_cd_transactions set id_cd_val=123 ' +
      ' from tbl_cd_cash_transactions where tbl_cd_cash_transactions.confirms= tbl_external_cd_transactions.guid and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '  (tbl_external_cd_transactions.ok <> 1)) and id_cd_val=0 and ct_identifier=''DROP'' ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;


  // Uaktualnienie  w pêtli, tak aby poparwnie wyliczyæ ct_number

  if xResult then
  begin

    xPom := TResultHandle.CreateImport;
    xPom.ClearResult;
    xPom.Add('Select Guid,id_cd, type_transaction, ct_identifier  from tbl_external_cd_transactions where ((ok <> 1) or (ok is null)) group by Guid,id_cd, type_transaction, ct_identifier ');
    xPom.InvokeSQL;
    xPom.first;
    for i := 0 to xPom.Count - 1 do
    begin
      try

        if xPom.Query.FieldByName('ct_identifier').AsString = 'FILL' then
        begin
          xType := 10;
        end
        else
        begin
          xType := ckeyNILL;
        end;

        xct_number := GenerateCT_number(xPom.Query.FieldByName('id_cd')
          .AsInteger, xMax_CT_Number + i,
          xPom.Query.FieldByName('type_transaction').AsInteger, xType);
        if xType = ckeyNILL then
        begin
          xType := xPom.Query.FieldByName('type_transaction').AsInteger;
        end;

        xQuery := ' update  tbl_external_cd_transactions set ct_number=''%s'', '
          + ' id_account_from=%s, id_account_to=%s, type_transaction=%s ' +
          ' where ' + ' tbl_external_cd_transactions.Guid=''%s''' +
          ' and  ((tbl_external_cd_transactions.ok is null) or ' +
          ' (tbl_external_cd_transactions.ok <> 1)) ';

        xQuery := format(xQuery,
          [xct_number, Account_from(xPom.Query.FieldByName('id_cd').AsInteger,
          xPom.Query.FieldByName('type_transaction').AsInteger),
          Account_to(xPom.Query.FieldByName('id_cd').AsInteger, xType),
          IntToStr(xType), xPom.Query.FieldByName('GUID').AsString]);
        xDataSet.ClearResult;
        xDataSet.Add(xQuery);

        xDataSet.ExecuteSQL;
        if ((xPom.Query.FieldByName('type_transaction').AsInteger = 1) or
          (xPom.Query.FieldByName('type_transaction').AsInteger = 3)) then
        begin
          Last_shift(xPom.Query.FieldByName('id_cd').AsInteger, xct_number);
        end;

        xPom.next;
        xct_number := EmptyStr;
      except
        xResult := False;
        break;
      end;
    end;
    xMax_CT_Number := xMax_CT_Number + i;
    xPom.ClearResult;
    xPom.Free;
  end;

  if xResult then
  begin
    xQuery := '  Update tbl_external_cd_transactions set name_account_from=tbl_accounts.name from tbl_accounts '
      + ' where tbl_accounts.id= tbl_external_cd_transactions.id_account_from ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := '  Update tbl_external_cd_transactions set name_account_to=tbl_accounts.name from tbl_accounts '
      + ' where tbl_accounts.id= tbl_external_cd_transactions.id_account_to ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := ' update  tbl_cd_cash_transactions set id_cashDesk= tbl_external_cd_transactions.id_cd, '
      + ' type=tbl_external_cd_transactions.type_transaction, ' +
      ' is_multiple_cd_transaction=0 ,' +
      ' id_cd_transaction= tbl_external_cd_transactions.id_transaction, ' +
      ' datetime= tbl_external_cd_transactions.datetime ,' +
      ' Remarks=''CREATE ''|| tbl_external_cd_transactions.DateTime, ' +
      ' confirmed = case when ((ct_identifier=''FILL'') or  (ct_identifier=''CREDIT'')) then 0 else 1 end ,'
      + ' confirmed_from_other_transaction= case when ct_identifier=''CREDIT'' then  1 else 0 end, '
      + ' direction= case when ct_identifier=''CREDIT'' then 2 else  1 end, ' +
      ' account_id_from=tbl_external_cd_transactions.id_account_from,' +
      ' account_id_to= tbl_external_cd_transactions.id_account_to, ' +
      ' amount_in= case when ct_identifier=''FILL'' then (Select Sum(tbl_external_cd_transactions.nr *  tbl_external_cd_transactions.multiplier) '
      + ' from tbl_external_cd_transactions where tbl_external_cd_transactions.guid =tbl_cd_cash_transactions.confirms group by  guid  )    '
      + ' when ct_identifier=''CREDIT'' then 0  ' +
      ' when ct_identifier=''DROP'' then  (Select Sum(tbl_external_cd_transactions.nr *  tbl_external_cd_transactions.multiplier) '
      + ' from tbl_external_cd_transactions where tbl_external_cd_transactions.guid =tbl_cd_cash_transactions.confirms group by  guid  )  '
      + ' else 0 end , ' +
      ' amount_out= case when ct_identifier=''CREDIT'' then (Select Sum(tbl_external_cd_transactions.nr *  tbl_external_cd_transactions.multiplier) '
      + ' from tbl_external_cd_transactions where tbl_external_cd_transactions.guid =tbl_cd_cash_transactions.confirms  group by  guid  '
      + ' )' + ' else 0 end ' + ' from  tbl_external_cd_transactions where ' +
      ' tbl_external_cd_transactions.guid= tbl_cd_cash_transactions.confirms  '
      + ' and ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;

  end;

  // tbl_cd_cash_transactions_subt
  if xResult then
  begin
    xQuery := 'Insert into tbl_cd_cash_transactions_subt(ct_number) ' +
      ' Select Distinct(Guid) from tbl_external_cd_transactions where ' +
      ' ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := ' Update tbl_external_cd_transactions set id_cd_sub_transaction=tbl_cd_cash_transactions_subt.id '
      + ' from tbl_cd_cash_transactions_subt where ' +
      ' tbl_cd_cash_transactions_subt.ct_number= tbl_external_cd_transactions.guid and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;
  // Uaktualnienie
  if xResult then
  begin
    xQuery := ' Update tbl_cd_cash_transactions_subt set ' +
      ' id_cd_transaction= tbl_external_cd_transactions.id_cd_transaction, ' +
      ' id_cashdesk=tbl_external_cd_transactions.id_cd, direction=1, ' +
      ' account_from= tbl_external_cd_transactions.name_account_from, ' +
      ' account_to=  tbl_external_cd_transactions.name_account_to ,' +
      ' id_account_from= tbl_external_cd_transactions.id_account_from,' +
      ' id_account_to= tbl_external_cd_transactions.id_account_to ' +
      ' from tbl_external_cd_transactions where ' +
      ' tbl_cd_cash_transactions_subt.ct_number= tbl_external_cd_transactions.guid and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;

  end;
  // tbl_cd_cash_transactions_subt_categories
  if xResult then
  begin
    xQuery := ' Insert into tbl_cd_cash_transactions_subt_categories(ct_number)'
      + ' Select Distinct(Guid) from tbl_external_cd_transactions where ' +
      ' ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := ' Update tbl_external_cd_transactions set id_category= TBL_VALUES.id_category,  '
      + ' id_currency= TBL_VALUES.id_currency  ' +
      ' from TBL_VALUES where TBL_VALUES.id= tbl_external_cd_transactions.id_cd_val and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;
  // cUrrency_symbol
  if xResult then
  begin

    xQuery := ' Update tbl_external_cd_transactions set cUrrency_symbol= tbl_currencies.symbol  '
      + ' from tbl_currencies where tbl_currencies.id= tbl_external_cd_transactions.id_currency and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      ' (tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := 'Update  tbl_cd_cash_transactions_subt_categories set id_cashDesk= tbl_external_cd_transactions.id_cd,'
      + ' id_cd_transaction=  tbl_external_cd_transactions.id_cd_transaction,' +
      ' id_cd_sub_transaction= tbl_external_cd_transactions.id_cd_sub_transaction, '
      + ' nr= tbl_external_cd_transactions.nr, id_cd_category= tbl_external_cd_transactions.id_category'
      + ' from  tbl_external_cd_transactions ' +
      ' where tbl_cd_cash_transactions_subt_categories.ct_number= tbl_external_cd_transactions.guid and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := ' Insert into tbl_cd_cash_transactions_subt_categories_values(id_cd_value, id_cashdesk,'
      + ' id_cd_transaction, id_cd_sub_transaction,nr,ct_number,id_cd_category,currency_symbol,dateTime ,multiplier)'

      + ' Select id_cd_val, id_cd, id_cd_transaction, id_cd_sub_transaction, nr, ct_number,id_category,currency_symbol, dateTime ,multiplier'
      + ' from tbl_external_cd_transactions where ' +
      ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := ' Update tbl_cd_cash_transactions_subt_categories_values set exchange_rate =  tbl_currencies_exchange_rates.buying  '
      + ' from tbl_currencies_exchange_rates, tbl_external_cd_transactions,tbl_currencies  where  '
      + ' tbl_external_cd_transactions.id_cd_transaction=tbl_cd_cash_transactions_subt_categories_values.id_cd_transaction and '
      + ' tbl_external_cd_transactions.id_cd_val=tbl_cd_cash_transactions_subt_categories_values.id_cd_value and '
      + ' ((tbl_external_cd_transactions.ok is null) or   (tbl_external_cd_transactions.ok <> 1)) '
      + ' and tbl_currencies_exchange_rates.id_currency=tbl_currencies.id   ' +
      ' and tbl_currencies.symbol=tbl_external_cd_transactions.currency_symbol  ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;

  end;
  // Uaktualnienie Ct_Number
  if xResult then
  begin
    xQuery := ' Update  tbl_cd_cash_transactions set ct_number= tbl_external_cd_transactions.ct_number,confirms='''' from'
      + ' tbl_external_cd_transactions where tbl_external_cd_transactions.Guid= tbl_cd_cash_transactions.confirms and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := ' Update tbl_cd_cash_transactions_subt set ct_Number =tbl_external_cd_transactions.ct_number '
      + ' from  tbl_external_cd_transactions ' +
      ' where tbl_external_cd_transactions.Guid= tbl_cd_cash_transactions_subt.ct_Number and '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin
    xQuery := 'Update tbl_cd_cash_transactions_subt_categories set ct_Number=tbl_external_cd_transactions.ct_number'
      + ' from  tbl_external_cd_transactions where tbl_external_cd_transactions.Guid=tbl_cd_cash_transactions_subt_categories.ct_Number '
      + ' and  ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set category_name = tbl_categories.name '

      + ' from tbl_categories, tbl_external_cd_transactions where tbl_categories.id = '
      + ' tbl_cd_cash_transactions_subt_categories_values.id_cd_category and ' +
      ' tbl_cd_cash_transactions_subt_categories_values.id_cd_transaction =  ' +
      ' tbl_external_cd_transactions.id_cd_transaction and ' +
      ' tbl_cd_cash_transactions_subt_categories_values.id_cd_sub_transaction ='
      + ' tbl_external_cd_transactions.id_cd_sub_transaction and ' +
      ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';

    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  if xResult then
  begin

    xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set last_shift_datetime =  '
      + ' (Select  last_shift_date(a.id_cashdesk) from  tbl_cd_cash_transactions_subt_categories_values  as a  '
      + '  where tbl_cd_cash_transactions_subt_categories_values.id=a.id) from tbl_external_cd_transactions '
      + '  where tbl_cd_cash_transactions_subt_categories_values.id_cd_sub_transaction= tbl_external_cd_transactions.id_cd_sub_transaction and '
      + '        tbl_cd_cash_transactions_subt_categories_values.id_cd_transaction= tbl_external_cd_transactions.id_cd_transaction and  '
      + ' ((tbl_external_cd_transactions.ok is null) or ' +
      '(tbl_external_cd_transactions.ok <> 1)) ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;
  // Je¿eli jest fill transaction to requesty
  // function CreateRequest(Aid_Transaction,AidCash_transaction:integer;
  // Actnr_:string;AidCashDesk:integer;cBase_nr:string):boolean;

  if xResult then
  begin

    xPom := TResultHandle.CreateImport;
    xQuery := ' Select tbl_cd.id from  ' + ' tbl_cd  ' +
      ' where account_id in (select ACCOUNT_id_to from tbl_transactions where id in '
      + ' ( Select idfilltransaction  from tbl_parametres )) ';
    xPom.ClearResult;
    xPom.Add(xQuery);
    xPom.InvokeSQL;
    if xPom.Count > 0 then
    begin
      xIdCashdesk := xPom.Query.FieldByName('id').AsInteger;
    end
    else
    begin
      xIdCashdesk := 42;
    end;

    xQuery := ' Select id_transaction, id_cd_transaction, id_cd, ct_number  from tbl_external_cd_transactions where '
      + '  ct_identifier =''FILL'' and ((ok<>1) or (ok is null)) group by id_transaction, id_cd_transaction, id_cd, ct_number ';
    xPom.ClearResult;
    xPom.Add(xQuery);
    xPom.InvokeSQL;
    xPom.first;
    for i := 0 to xPom.Count - 1 do
    begin

      // Domyslna
      xMax_CT_Number := xMax_CT_Number + i;
      xct_number := GenerateCT_number(xIdCashdesk, xMax_CT_Number,
        CT_TRANSFER_REQUEST_ACCEPTANCE, ckeyNILL);

      CreateRequest(xPom.Query.FieldByName('id_transaction').AsInteger,
        xPom.Query.FieldByName('id_cd_transaction').AsInteger, xct_number,
        xIdCashdesk, xPom.Query.FieldByName('ct_number').AsString);

      xPom.next;
      if xResult = False then
        break;

    end;
    xPom.ClearResult;
    xPom.Free;
  end;
  // CREDIT TRANSACTIONS
  if xResult then
  begin
    xPom := TResultHandle.Create;

    xQuery := ' Select id_transaction, id_cd_transaction, id_cd, ct_number  from tbl_external_cd_transactions where '
      + '  ct_identifier =''CREDIT'' and ((ok<>1) or (ok is null)) group by id_transaction, id_cd_transaction, id_cd, ct_number ';
    xPom.ClearResult;
    xPom.Add(xQuery);
    xPom.InvokeSQL;
    xPom.first;
    for i := 0 to xPom.Count - 1 do
    begin
      xQuery := ' Select tbl_cd.id from  ' + ' tbl_cd  ' +
        ' where account_id in (select ACCOUNT_id_to from tbl_transactions where id = '
        + xPom.Query.FieldByName('id_transaction').AsString + ')';
      xDataSet.ClearResult;
      xDataSet.Add(xQuery);
      xDataSet.InvokeSQL;
      if xDataSet.Count > 0 then
      begin
        xMax_CT_Number := xMax_CT_Number + i;
        xct_number := GenerateCT_number(xDataSet.Query.FieldByName('id')
          .AsInteger, xMax_CT_Number, 0, ckeyNILL);
        try
          self.CopyTransaction(xPom.Query.FieldByName('ct_number').AsString,
            xct_number, 0, xDataSet.Query.FieldByName('id').AsInteger, 1,
            xPom.Query.FieldByName('ct_number').AsString, true, False);
        except
          result := False;
        end;
      end;
      xPom.next;

    end;
  end;

  if xResult then
  begin
    xQuery := ' Update  tbl_external_cd_transactions set ok=1 where id_cd_transaction is not null   ';
    xDataSet.ClearResult;
    xDataSet.Add(xQuery);
    try
      xDataSet.ExecuteSQL;
    except
      xResult := False;
    end;
  end;

  xDataSet.ClearResult;
  xDataSet.Free;
  result := xResult;
end;

// ##############################################################################

function TImportTransactions.CreateRequest(Aid_Transaction, AidCash_transaction
  : integer; Actnr_: string; AidCashDesk: integer; cBase_nr: string): boolean;
var
  xIdCdTransaction: string;
  xQuery: string;
  xExec: TResultHandle;
begin
  result := true;
  try
    self.CopyTransaction(cBase_nr, Actnr_, CT_TRANSFER_REQUEST_ACCEPTANCE,
      AidCashDesk, 1, '', true, true);
  except
    result := False;
  end;

  xExec := TResultHandle.CreateImport;
  xExec.ClearResult;

  xExec.Add('select id from tbl_cd_cash_transactions ' + ' where ct_number = '''
    + Actnr_ + '''');
  xExec.InvokeSQL;
  if xExec.Count > 0 then

    xIdCdTransaction := xExec.Query.FieldByName('id').AsString;

  xQuery := 'update tbl_cd_cash_transactions_subt set id_cd_transaction=%s where ct_number=''%s''';
  xQuery := format(xQuery, [xIdCdTransaction, Actnr_]);
  xExec.ClearResult;
  if result then
  begin

    xExec.Add(xQuery);
    try
      xExec.ExecuteSQL
    except
      result := False;
    end;
  end;

  if result then
  begin
    xQuery := 'update tbl_cd_cash_transactions_subt_categories_values set id_cd_transaction=%s where ct_number=''%s''';
    xQuery := format(xQuery, [xIdCdTransaction, Actnr_]);
    xExec.ClearResult;
    xExec.Add(xQuery);
    try
      xExec.ExecuteSQL;
    except
      result := False;
    end;
  end;

  if result then
  begin
    xQuery := 'update tbl_cd_cash_transactions set confirmed =0, is_multiple_cd_transaction= 0  where ct_number=''%s''';
    xQuery := format(xQuery, [Actnr_]);
    xExec.ClearResult;
    xExec.Add(xQuery);
    try
      xExec.ExecuteSQL;
    except
      result := False;
    end;
  end;

end;

// ##############################################################################

function TImportTransactions.GenerateCT_number(AidCashDesk, Number: integer;
  Aid_type: integer; AidAlternate_type: integer): string;
var
  CurrentCashDesk: string;
  Mnemonic: string;
  dYear, dMonth, dDay: word;
  xDataSet: TResultHandle;
  xQuery: string;
begin
  DecodeDate(Now(), dYear, dMonth, dDay);
  xDataSet := TResultHandle.CreateImport;
  xQuery := 'select cd_name from tbl_cd where id=' + IntToStr(AidCashDesk);
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  CurrentCashDesk := xDataSet.Query.FieldByName('cd_name').AsString;
  if AidAlternate_type = ckeyNILL then
  begin
    xQuery := 'Select mnemonic from tbl_cd_cash_transactions_types where type='
      + IntToStr(Aid_type);
  end
  else
  begin
    xQuery := 'Select mnemonic from tbl_cd_cash_transactions_types where type='
      + IntToStr(AidAlternate_type);
  end;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;

  Mnemonic := xDataSet.Query.FieldByName('mnemonic').AsString;

  result := Mnemonic + '/' + CurrentCashDesk + '/' + IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' + IntToStr(Number);
  xDataSet.ClearResult;
  xDataSet.Free;

end;

// ##############################################################################

function TImportTransactions.MaxCT_number(): integer;
var
  TempNo: string;
  i, j: integer;
  xQuery: string;
  xDataSet: TResultHandle;
begin

  xQuery := ' select ct_number from tbl_cd_cash_transactions  ' +
    ' order by id desc  limit 1 ';
  xDataSet := TResultHandle.CreateImport;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.InvokeSQL;
  TempNo := xDataSet.Query.FieldByName('ct_number').AsString;

  if TempNo = '' then
  begin
    result := 1;
  end
  else
  begin
    i := Pos('/', TempNo);
    j := PosEx('/', TempNo, i + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
    xDataSet.ClearResult;
    xDataSet.Free;
  end;
end;

// ##############################################################################

function TImportTransactions.Account_from(AidCashDesk, atype: integer): string;
var
  xArray: TArrayOfString;
begin
  result := EmptyStr;
  if ((atype <> 1) and (atype <> 3) and (atype <> 6)) then
  begin
    xArray := frmMain.GetAccount(AidCashDesk, cAccountFrom);
    if Length(xArray) > 0 then
    begin
      result := xArray[1];
    end;
  end;
  result := StringToDataBAse(result);
end;

// ##############################################################################
function TImportTransactions.Account_to(AidCashDesk, atype: integer): string;
var
  xArray: TArrayOfString;
begin
  result := EmptyStr;
  if ((atype <> 1) and (atype <> 3) and (atype <> 6)) then
  begin
    xArray := frmMain.GetAccount(AidCashDesk, cAccountTo);
    if Length(xArray) > 0 then
    begin
      result := xArray[1];
    end;
  end;
  result := StringToDataBAse(result);

end;

// ##############################################################################
function TImportTransactions.IIf(B: boolean; S1: WideString; S2: WideString)
  : WideString;
begin
  if B then
  begin
    result := S1;
  end
  else
  begin
    result := S2;
  end;
end;

end.
