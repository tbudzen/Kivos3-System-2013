unit uAddCurrencyExchangeRateFrame;

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
  Data.DB, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, MemDS, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ComCtrls, dxCore, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCalc, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, udataBase, uFrameHelper;

type
  TAddCurrencyExchangeRateFrame = class(TBaseFrame)
    btnModifyCurrencyExchangeRate: TcxButton;
    btnAddCurrencyExchangeRate: TcxButton;
    btnCancel: TcxButton;
    edExchangeRateForSelling: TcxTextEdit;
    edExchangeRateForBuying: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    PgSQL1: TPgSQL;
    edValidFrom: TcxDateEdit;
    cxLabel1: TcxLabel;
    edValidTo: TcxDateEdit;
    cxLabel4: TcxLabel;
    edCurrency: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    PgDataSource1: TPgDataSource;
    edId: TcxTextEdit;
    cxLabel6: TcxLabel;
    PgQuery1: TPgQuery;
    cxGrid_PandingTransaction: TcxGrid;
    cxGrid_PandingTransactionDBTableView1: TcxGridDBTableView;
    cxGrid_PandingTransactionLevel1: TcxGridLevel;
    PgQuery2: TPgQuery;
    cxGrid1DBTableView_Name: TcxGridDBColumn;
    cxGrid1DBTableView_Number: TcxGridDBColumn;
    cxGrid1DBTableView_Date: TcxGridDBColumn;
    cxLabel_PandingTransaction: TcxLabel;
    q_tmp: TPgQuery;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddCurrencyExchangeRateClick(Sender: TObject);
    procedure btnModifyCurrencyExchangeRateClick(Sender: TObject);
    procedure edExchangeRateForBuyingKeyPress(Sender: TObject; var Key: Char);
    procedure edExchangeRateForSellingKeyPress(Sender: TObject; var Key: Char);
    procedure edExchangeRateForBuyingEnter(Sender: TObject);
    procedure edExchangeRateForBuyingExit(Sender: TObject);
    procedure edExchangeRateForSellingEnter(Sender: TObject);
    procedure edExchangeRateForSellingExit(Sender: TObject);
    procedure edExchangeRateForBuyingPropertiesChange(Sender: TObject);
  private
    FmaxNumber: integer;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy;
    { Public declarations }
    function ValidateFields(): Boolean;
    procedure visibleFildsPandingTransactions(Avisible: Boolean);
    function BilancingTransactions(): Boolean;
    function BilancingTransaction(AidcashDesk: integer;
      AInterMediale: Boolean): Boolean;

  end;

var
  AddCurrencyExchangeRateFrame: TAddCurrencyExchangeRateFrame;

implementation

uses uSystem,
  uExceptions,
  uFrmMain, dateutils,
  uGlobals;

{$R *.dfm}

function TAddCurrencyExchangeRateFrame.ValidateFields(): Boolean;
begin

  Result := True;

  if (edValidFrom.Date = 0) then
  begin
    Information('Warning', 'You must fill the valid from date field.');
    Result := False;
    Exit;
  end;

  if (edValidTo.Date = 0) then
  begin
    Information('Warning', 'You must fill the valid to date field.');
    Result := False;
    Exit;
  end;

  if (edValidFrom.Date > edValidTo.Date) then
  begin
    Information('Warning', 'Date from cannot be greater than date from.');
    Result := False;
    Exit;
  end;

  if (edExchangeRateForBuying.Text = '') then
  begin
    Information('Warning', 'You must fill the valid to date field.');
    Result := False;
    Exit;
  end;

  if (edExchangeRateForSelling.Text = '') then
  begin
    Information('Warning', 'You must fill the valid to date field.');
    Result := False;
    Exit;
  end;

  if Result then
  begin
    if frmMain.GetFieldAsInteger
      ('select count(*) as count from tbl_cd_cash_transactions where confirmed=0 ',
      'count') > 0 then
    begin
      Information('Warning',
        'There are pending transaction in one of cash desk.');
      Result := False;
      visibleFildsPandingTransactions(True);
      Exit;
    end;
  end;
end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.visibleFildsPandingTransactions
  (Avisible: Boolean);
begin
  cxLabel_PandingTransaction.Visible := Avisible;
  cxGrid_PandingTransaction.Visible := Avisible;
end;

// ##############################################################################

function TAddCurrencyExchangeRateFrame.BilancingTransaction
  (AidcashDesk: integer; AInterMediale: Boolean): Boolean;
var
  xQuery: string;
  i: integer;
  xResult: TResultHandle;
  xCTNumber: string;
  xIdCdTransaction: string;
  xIdCdSubTransaction: string;
  xIdUser: string;
  xExec: TResultHandle;
  xTemp: string;
  // ----------
  xCtNumber_2: string;
  xNr: double;
  xSum: double;
  xAccount_From: TArrayOfString;
  xAccount_to: TArrayOfString;
  xTrans, xAccount_f, xAccount_t, xName_from, xName_to: string;
  xMaxNumber: integer;
begin
  Result := True;
  xSum := 0;
  xIdUser := frmMain.CurrentUserId;
  xAccount_From := frmMain.GetAccount(AidcashDesk, cAccountFrom);
  xAccount_to := frmMain.GetAccount(AidcashDesk, cAccountTo);
  xResult := TResultHandle.Create;
  xResult.ClearResult;
  xExec := TResultHandle.Create;

  xQuery := ' Select sum(case when val.direction = 2 then nr* -1 else nr end ) as money ,id_cd_value,id_cd_category,category_name,exchange_rate,cat.id as category_id '
    + ' from tbl_cd_cash_transactions_subt_categories_values  val ' +
    ' join tbl_cd_cash_transactions on tbl_cd_cash_transactions.id=val.id_cd_transaction '
    + ' left join tbl_categories cat on cat.name=val.category_name ' + ' where '
    + ' val.currency_symbol=''%s'' and val.id_cashdesk in (%s) ' +
    ' and tbl_cd_cash_transactions.dateTime >=last_shift_inter_date(val.id_cashdesk)  '
  // and val.Direction=1
    + '  and (substring (val.ct_number ,1,3)<>''INF'')' +
    ' group by    id_cd_value ,id_cd_category,category_name, exchange_rate, cat.id ';

  xQuery := format(xQuery, [edCurrency.EditText, inttostr(AidcashDesk)]);
  xResult.Add(xQuery);
  xResult.InvokeSQL;
  xResult.First;
  xSum := 0;
  for i := 0 to xResult.count - 1 do
  begin
    xSum := xSum + xResult.query.FieldByName('money').AsFloat;
    xResult.next;
  end;
  xResult.First;
  if xSum <> 0 then
  begin
    xTrans := 'NULL';
    xAccount_f := 'NULL';
    xName_from := 'NULL';
    xAccount_t := 'NULL';
    xName_to := 'NULL';
    if length(xAccount_From) > 0 then
    begin
      xTrans := xAccount_From[0];
      xAccount_f := xAccount_From[1];
      xName_from := xAccount_From[2];
    end;
    if length(xAccount_to) > 0 then
    begin
      xTrans := xAccount_to[0];
      xAccount_t := xAccount_to[1];
      xName_to := xAccount_to[2];
    end;
    inc(FmaxNumber);
    xCTNumber := frameHelper.GenerateCT_number(AidcashDesk, FmaxNumber, 14);

    // Transakcja na minus
    // tbl_cd_cash_transactions

    xQuery := ' insert into tbl_cd_cash_transactions( id_cashdesk, type, ct_number, datetime, id_user,'
      + ' is_multiple_cd_transaction, confirmed, direction, confirmation_id_user,amount_in, account_id_from,account_id_to,id_cd_transaction)  values '
      + ' (%s,%s,''%s'',now(),%s,0,1,1,%s,%s,''%s'',''%s'',%s)';
    // Wychodzi z kasy
    xQuery := format(xQuery, [inttostr(AidcashDesk), '14', xCTNumber, xIdUser,
      xIdUser, FloatStrDataBase(xSum * -1), xAccount_f, xAccount_t, xTrans]);
    xExec.Add(xQuery);
    try
      xExec.ExecuteSQL;
    except
      Result := False;
    end;

    // tbl_cd_cash_transactions_subt
    if Result then
    begin

      xIdCdTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
        xCTNumber + '''', 'id');

      xQuery := 'insert into  tbl_cd_cash_transactions_subt(id_cashdesk,id_cd_transaction,ct_number,account_from,account_to,id_account_from,id_account_to) '
        + ' values(%s, %s,''%s'',''%s'',''%s'',%s,%s)';
      xQuery := format(xQuery, [inttostr(AidcashDesk), xIdCdTransaction,
        xCTNumber, xName_from, xName_to, xAccount_f, xAccount_t]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;
    end;

    if Result then
    begin

      xIdCdSubTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions_subt ' +
        'where ct_number = ''' + xCTNumber + '''', 'id');

      // tbl_cd_cash_transactions_subt_categories
      xQuery := ' insert into tbl_cd_cash_transactions_subt_categories(id_cashdesk, id_cd_transaction ,ct_number,'
        + ' id_cd_sub_transaction, id_cd_category) values(%s, %s, ''%s'', %s, %s)';

      xQuery := format(xQuery, [inttostr(AidcashDesk), xIdCdTransaction,
        xCTNumber, xIdCdSubTransaction, xResult.query.FieldByName('category_id')
        .AsString]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;

    end;

    if Result then
    begin

      // tbl_cd_cash_transactions_subt_categories_values
      xTemp := frmMain.GetFieldAsString
        ('Select last_shift_inter_date as date from  last_shift_inter_date(' +
        inttostr(AidcashDesk) + ')', 'date');
      xResult.First;
      // for i := 0 to xResult.count - 1 do
      // begin
      xQuery := ' insert into tbl_cd_cash_transactions_subt_categories_values(id_cashdesk, id_cd_transaction, ct_number,'
        + ' id_cd_sub_transaction, id_cd_category, id_cd_value, count,amount_in, amount_out,nr, exchange_rate,'
        + ' direction, multiplier, goes_into_amount_expected, datetime, last_shift_datetime, currency_symbol,'
        + ' category_name) values(%s,%s,''%s'',%s ,%s ,%s ,0,%s,%s,%s,%s,1,1,1,now(),''%s'',''%s'',''%s'')';
      xQuery := format(xQuery, [inttostr(AidcashDesk), xIdCdTransaction,
        xCTNumber, xIdCdSubTransaction, xResult.query.FieldByName('category_id')
        .AsString, xResult.query.FieldByName('id_cd_value').AsString,
        FloatStrDataBase(xSum), FloatStrDataBase(xSum),
        FloatStrDataBase(xSum * -1), cxTextEdit1.Text,
        // xResult.query.FieldByName('exchange_rate').AsFloat
        xTemp, edCurrency.EditText, xResult.query.FieldByName('Category_name')
        .AsString]);
      // 'last_shift_inter_date(' + inttostr(AidcashDesk) + ')
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;
      xResult.next;
    end;
    // end;
    xResult.First;
    // COPY  TRANSACTION
    { xAccount_f := 'NULL';
      xName_from := 'NULL';
      xAccount_t:='NULL';
      xName_to:='NULL'; }
    if Result then
    begin
      inc(FmaxNumber);
      xCtNumber_2 := frameHelper.GenerateCT_number(AidcashDesk, FmaxNumber, 14);
      frmMain.CopyTransaction(xCTNumber, xCtNumber_2, 14, AidcashDesk, 1, '');

      xIdCdTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
        xCtNumber_2 + '''', 'id');
      xQuery := '   update tbl_cd_cash_transactions_subt set id_cd_transaction=%s,account_from=''%s'', '
        + '   account_to=''%s'', id_account_from=%s, id_account_to=%s where ct_number=''%s''';
      xQuery := format(xQuery, [xIdCdTransaction, xName_from, xName_to,
        xAccount_f, xAccount_t, xCtNumber_2]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;
    end;

    if Result then
    begin
      xQuery := 'update tbl_cd_cash_transactions_subt_categories_values set id_cd_transaction=%s where ct_number=''%s''';
      xQuery := format(xQuery, [xIdCdTransaction, xCtNumber_2]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;

    end;
    if Result then
    begin

      xIdCdSubTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions_subt ' +
        'where ct_number = ''' + xCtNumber_2 + '''', 'id');

      xQuery := ' Update tbl_cd_cash_transactions  set confirmed=1, amount_in=%s, amount_out=NULL, dateTime=now()  where id=%s ';
      xQuery := format(xQuery, [FloatStrDataBase(xSum), xIdCdTransaction]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;

      if Result then
      begin

        xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set exchange_rate=%s, '
          + ' nr=%s, amount_in=%s, amount_out=%s,direction=1 where id_cd_transaction=%s and id_cd_sub_transaction=%s ';
        xQuery := format(xQuery, [edExchangeRateForBuying.Text,
          FloatStrDataBase(xSum), FloatStrDataBase(xSum),
          FloatStrDataBase(xSum), xIdCdTransaction, xIdCdSubTransaction]);
        xExec.ClearResult;
        xExec.Add(xQuery);
        try
          xExec.ExecuteSQL;
        except
          Result := False;
        end;

        xQuery := ' Select val.id from tbl_cd_cash_transactions_subt_categories_values   val '
          + ' join tbl_cd_cash_transactions on tbl_cd_cash_transactions.id=val.id_cd_transaction '
          + ' left join tbl_categories cat on cat.name=val.category_name ' +
          ' where ' + ' val.currency_symbol=''%s'' and val.id_cashdesk in (%s) '
          + ' and tbl_cd_cash_transactions.dateTime >last_shift_inter_date(val.id_cashdesk) and val.Direction=1 '
          + ' and id_cd_transactionCCR is null ';

        xQuery := format(xQuery, [edCurrency.EditText, inttostr(AidcashDesk)]);
        xResult.ClearResult;
        xResult.Add(xQuery);
        try
          xResult.InvokeSQL;
        except
          Result := False;
        end;
        if Result then
        begin
          xResult.First;
          for i := 0 to xResult.count - 1 do
          begin
            xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set id_cd_transactionCCR='
              + xIdCdTransaction + ', direction=1 where id=' +
              xResult.query.FieldByName('id').AsString;
            xExec.ClearResult;
            xExec.Add(xQuery);
            try
              xExec.ExecuteSQL;
            except
              Result := False;
            end;
            if not Result then
            begin
              break;
            end;
            xResult.next;
          end;
        end;

      end;
    end;
  end;
  xResult.ClearResult;
  xExec.ClearResult;
  xExec.Free;
  xResult.Free;
end;


// ##############################################################################

function TAddCurrencyExchangeRateFrame.BilancingTransactions: Boolean;
var
  i: integer;
  xQuery: TResultHandle;
  xResult: Boolean;
begin
  Result := True;
  xQuery := TResultHandle.Create;
  xQuery.ClearResult;
  xQuery.Add('Select * from openCashDesk()');
  xQuery.InvokeSQL;
  xQuery.First;
  xResult := True;
  FmaxNumber := frameHelper.MaxCT_number;
  for i := 0 to xQuery.query.RecordCount - 1 do
  begin
    xResult := BilancingTransaction(xQuery.query.FieldByName('id_cashDesk')
      .AsInteger, Boolean(xQuery.query.FieldByName('inf').AsInteger));
    xQuery.next;
    if not xResult then
      break;
  end;

  xQuery.ClearResult;
  xQuery.Free;
  Result := xResult;
end;

procedure TAddCurrencyExchangeRateFrame.btnAddCurrencyExchangeRateClick
  (Sender: TObject);
var
  QueryStr01, QueryStr02, QueryStr: WideString;
  bOverlappedFrom, bOverlappedTo: Boolean;
begin

  if not ValidateFields() then
    Exit;

  // Overlapping date range test #1

  QueryStr01 := 'SELECT * FROM tbl_currencies_exchange_rates ' + 'WHERE (''' +
    DateTimeToStr(edValidFrom.Date, frmMain.FormatSettings) +
    ''' BETWEEN valid_from AND valid_to) AND ' + 'id_currency = ' +
    edCurrency.DataBinding.Field.DisplayText;

  PgQuery1.Active := False;
  PgQuery1.SQL.Clear();
  PgQuery1.SQL.Add(QueryStr01);
  PgQuery1.Active := True;
  bOverlappedFrom := (PgQuery1.RecordCount > 0);

  // Overlapping date range test #2

  QueryStr02 := 'SELECT * FROM tbl_currencies_exchange_rates ' + 'WHERE (''' +
    DateTimeToStr(edValidTo.Date, frmMain.FormatSettings) +
    ''' BETWEEN valid_from AND valid_to) AND ' + 'id_currency = ' +
    edCurrency.DataBinding.Field.DisplayText;

  PgQuery1.Active := False;
  PgQuery1.SQL.Clear();
  PgQuery1.SQL.Add(QueryStr02);
  PgQuery1.Active := True;
  bOverlappedFrom := (PgQuery1.RecordCount > 0);

  if bOverlappedFrom or bOverlappedTo then
  begin
    Information('Warning',
      'Attempt to add date range overlapping with existing. Change dates and try again.');
    Exit;
  end;

  QueryStr :=
    'INSERT INTO tbl_currencies_exchange_rates (id_currency, buying, selling, valid_from, valid_to) '
    + 'VALUES ' + '(' + edCurrency.DataBinding.Field.DisplayText + ', ' +
    edExchangeRateForBuying.Text + ', ' + edExchangeRateForSelling.Text + ', '''
    + DateTimeToStr(edValidFrom.Date, frmMain.FormatSettings) + ''', ''' +
    DateTimeToStr(edValidTo.Date, frmMain.FormatSettings) + '''' + ')';

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      if Pos('uq_', E.Message) > 0 then
      begin
        Information('Warning',
          'Currency exchange rate with such name and validity period is already created');
        Exit;
      end
      else
      begin
        HandleException(E,
          'TAddCurrencyExchangeRateFrame.btnAddCurrencyExchangeRateClick()');
      end;
    end;
  end;

  SendMainMessage('close|current');

  frmMain.Refresh(frmMain.RefreshQuery);
end;


// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.btnCancelClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.btnModifyCurrencyExchangeRateClick
  (Sender: TObject);
var
  QueryStr: WideString;
  xDatafrom: TDateTime;
  xDataTo: TDateTime;
  xResult: Boolean;
begin
  xResult := True;
  if not ValidateFields() then
    Exit;

  // UPDATE query
  PgSQL1.Connection.StartTransaction;

  xDatafrom := now(); // edValidFrom.Date + time;

  xDataTo := IncYear(now(), 50);

  QueryStr := 'UPDATE tbl_currencies_exchange_rates ' + 'SET ' +
    '  buying  = ''' + edExchangeRateForBuying.Text + ''', ' + '  selling = '''
    + edExchangeRateForSelling.Text + ''', ' + '  valid_from = ''' +
    DateTimeToStr(xDatafrom) + ''', ' + '  valid_to  = ''' + DateToStr(xDataTo)
    + ''' ' + 'WHERE ' + '  id = ' + edId.Text;

  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(QueryStr);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
    begin
      xResult := False;
      HandleException(E,
        'TAddCurrencyExchangeRateFrame.btnModifyCurrencyExchangeRateClick()');
    end;
  end;
  if xResult then
  begin
    xResult := BilancingTransactions();
  end;
  if xResult then
  begin
    PgSQL1.Connection.Commit;
  end
  else
  begin
    PgSQL1.Connection.Rollback;
  end;
  SendMainMessage('close|current');
  frmMain.Refresh(frmMain.RefreshQuery);
end;

// ##############################################################################

constructor TAddCurrencyExchangeRateFrame.Create(AOwner: TComponent);
begin
  inherited;
  visibleFildsPandingTransactions(False);
end;

// ##############################################################################

destructor TAddCurrencyExchangeRateFrame.Destroy;
begin
  inherited;
end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForBuyingEnter
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  { xQuery := 'Select buying  from  tbl_currencies_exchange_rates ' +
    ' where buying =' + edExchangeRateForBuying.Text +
    'and selling='+edExchangeRateForSelling.text +
    'and id='+ edid.Text ;

    if q_tmp.Active then
    q_tmp.Close;
    q_tmp.SQL.Clear();
    q_tmp.SQL.Add(xQuery);
    q_tmp.Open;
    if q_tmp.RecordCount > 0 then
    begin
    try
    cxTextEdit1.Text := q_tmp.FieldByName('buying')
    .asstring;
    except
    cxTextEdit1.text := EmptyStr;

    end;
    end; }
end;


// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForBuyingExit
  (Sender: TObject);
var
  x: double;
  y: double;
  z: double;
  xString: string;
begin
  inherited;

  x := StrFloat(cxTextEdit1.Text);
  y := StrFloat(edExchangeRateForBuying.Text);
  z := Abs(((y / x) * 100) - 100);
  if z > AlertExchangeRate then
  begin
    xString := 'Difference of the new exchange rate is greater than %s%% - please be careful';
    xString := format(xString, [FloatToStr(AlertExchangeRate)]);
    Warning(xString);
  end;
end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForBuyingKeyPress
  (Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$4E]) then
  begin
    Key := #0;
  end;
end;

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForBuyingPropertiesChange(
  Sender: TObject);
begin
  inherited;

end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForSellingEnter
  (Sender: TObject);
var
  xQuery: string;
begin
  inherited;
  { xQuery := 'Select selling  from  tbl_currencies_exchange_rates ' +
    ' where buying =' + edExchangeRateForBuying.Text +
    'and selling='+edExchangeRateForSelling.text +
    'and id='+ edid.Text ;

    if q_tmp.Active then
    q_tmp.Close;
    q_tmp.SQL.Clear();
    q_tmp.SQL.Add(xQuery);
    q_tmp.Open;
    if q_tmp.RecordCount > 0 then
    begin
    try
    cxTextEdit2.Text := q_tmp.FieldByName('selling')
    .asstring;
    except
    cxTextEdit1.text := EmptyStr;
    end;
    end; }
end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForSellingExit
  (Sender: TObject);
var
  x: double;
  y: double;
  z: double;
  xString: string;
begin
  inherited;
  if (cxTextEdit1.Text <> '') or (cxTextEdit2.Text <> '') then
  begin

    x := StrFloat(cxTextEdit2.Text);
    y := StrFloat(edExchangeRateForSelling.Text);

    z := Abs(((y / x) * 100) - 100);
    if z > AlertExchangeRate then
    begin
      xString :=
        'Difference of the new exchange rate is greater than %s%% - please be careful';
      xString := format(xString, [FloatToStr(AlertExchangeRate)]);
      Warning(xString);
    end;
  end;
end;

// ##############################################################################

procedure TAddCurrencyExchangeRateFrame.edExchangeRateForSellingKeyPress
  (Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #$08, #$4E]) then
  begin
    Key := #0;
  end;
end;

// ##############################################################################

end.
