unit uAddShiftFrame;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  Vcl.StdCtrls, cxButtons, cxCheckBox, DBAccess, PgAccess, MemDS, cxCalc,
  frxClass, frxDBSet, Vcl.ImgList;

type
  TAddShiftFrame = class(TBaseFrame)
    cxLabel76: TcxLabel;
    cxGrid11: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGridDBTableView10: TcxGridDBTableView;
    edTransactionNo: TcxTextEdit;
    cxLabel3: TcxLabel;
    lbShiftName: TcxLabel;
    btnConfirm: TcxButton;
    btnCancel: TcxButton;
    PgQuery1: TPgQuery;
    PgDataSource1: TPgDataSource;
    PgQuery2: TPgQuery;
    PgDataSource2: TPgDataSource;
    edId: TcxTextEdit;
    cxLabel72: TcxLabel;
    PgQuery3: TPgQuery;
    PgDataSource3: TPgDataSource;
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
    cxGridDBTableView9value_id: TcxGridDBColumn;
    cxGridDBTableView10currency_symbol: TcxGridDBColumn;
    cxGridDBTableView10amount_expected_fc: TcxGridDBColumn;
    cxGridDBTableView10actual_amount_fc: TcxGridDBColumn;
    cxGrid12Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxLabel_UserExpl: TcxLabel;
    mUserExplanation: TcxMemo;
    cxStyle3: TcxStyle;
    PopupMenu: TPopupMenu;
    exporttoexcel1: TMenuItem;
    PopupMenu1: TPopupMenu;
    exporttogrid1: TMenuItem;
    ImageList1: TImageList;
    cxButton_Continous: TcxButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure cbEnabledForModificationPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView9nrPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView9multiplierPropertiesEditValueChanged
      (Sender: TObject);
    procedure cxGridDBTableView9nrPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBTableView10DataControllerSummaryFooterSummaryItemsSummary
      (ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure Button1Click(Sender: TObject);
    procedure btnBufferShiftClick(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
    procedure exporttogrid1Click(Sender: TObject);
    procedure cxGridDBTableView9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton_ContinousClick(Sender: TObject);
  private
    FmaxNumber: integer;
    procedure VisibleUserexplanation(Avisible: Boolean);
    procedure RptBalancePreview(nr, id: string);
  public
    { Public declarations }

    ShiftDate: Tdatetime;
    CurrentCashDesk: WideString;
    TransactionType: integer;
    CashDeskDefaultCarryOver: Boolean;
    DoWeHaveDifferencies: Boolean;

    FromShiftType: WideString;
    IdCdTransaction: WideString;
    Flastshiftdate: WideString;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function IIf(B: Boolean; S1: WideString; S2: WideString): WideString;

    function GetNextCashTransactionNumber(): integer;
    procedure ExecSQL(Q: WideString);
    function GetFieldAsString(Q: WideString; FieldName: WideString): WideString;
    function FindLastShift(TypeId: integer; CashDesk: WideString): WideString;
    procedure PostShift();
    function CheckDifferenciesFrom(FromShiftType: integer; CashDesk: WideString;
      CTNr: WideString; CurrentCTNr: WideString): Boolean;
    procedure DoOpenMoving();
    function DoAutoShift(TypeId: integer; CTShift1: WideString;
      CTShift2: WideString): WideString; // Returns cash transaction ct_number

    procedure RecalculateOpenCaskDesk();
    function BilancingTransaction(AidcashDesk: integer; AcurrSymbol: string;
      aSeling: Double): Boolean;

    function CheckConfirm: Boolean;
  end;

var
  AddShiftFrame: TAddShiftFrame;

implementation

uses
  uSystem,
  uGlobals,
  uExceptions,
  uFrmMain,
  uPermissions,
  uListOfCashTransactionsFrame,
  StrUtils,
  uFrmCashierRelogin,
  cxGridDBDataDefinitions,
  uDataBase,
  uFrameHelper,
  uReportBalance,
  uReportPreview, uexportsGrid;

{$R *.dfm}

procedure TAddShiftFrame.btnBufferShiftClick(Sender: TObject);
var
  I: integer;
  CTNr, TypeId, FrameName: WideString;
  Frame : TBaseFrame;
begin

  CTNr := VarToStr(edTransactionNo.Text);

  TypeId := GetFieldAsString('select type from tbl_cd_cash_transactions ' +
    'where ct_number = ''' + CTNr + '''', 'type');

  ExecSQL('update tbl_cd_cash_transactions ' + 'set type = 15 ' +
    'where ct_number = ''' + CTNr + '''');

  ExecSQL('update tbl_cd_cash_transactions ' + 'set buffered_type = ' + TypeId +
    ' ' + 'where ct_number = ''' + CTNr + '''');

  frmMain.btnCloseFrame.Show;

      if frmMain.FrameStackPreviousTop(FrameName, Frame) then
      begin
        if AnsiUpperCase(FrameName) = AnsiUpperCase(frmMain.FrameNameByIdx(26))
        then
        begin
          TListOfCashTransactionsFrame(Frame)
            .cbCashdesk.Properties.OnEditValueChanged(Sender);
          TListOfCashTransactionsFrame(Frame).cbCashdesk.Enabled := True;
        end;
      end;

  SendMainMessage('close|current');

end;

procedure TAddShiftFrame.btnCancelClick(Sender: TObject);
var
  QueryStr, CTNr: WideString;
  FrameName: WideString;
  Frame: TBaseFrame;
begin

  CTNr := edTransactionNo.Text;

  ExecSQL('begin;');

  QueryStr := 'delete from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
    CTNr + '''';
  ExecSQL(QueryStr);

  QueryStr := 'delete from tbl_cd_cash_transactions_subt ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);
  QueryStr := 'delete from tbl_cd_cash_transactions_subt_categories ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  QueryStr := 'delete from tbl_cd_cash_transactions_subt_categories_values ' +
    'where ct_number = ''' + CTNr + '''';
  ExecSQL(QueryStr);

  ExecSQL('commit;');

  if frmMain.FrameStackPreviousTop(FrameName, Frame) then
  begin
    if AnsiUpperCase(FrameName) = AnsiUpperCase(frmMain.FrameNameByIdx(26)) then
    begin
      TListOfCashTransactionsFrame(Frame).cbCashdesk.Enabled := True;
      TListOfCashTransactionsFrame(Frame)
        .cbCashdesk.Properties.OnEditValueChanged(Sender);
    end;
  end;

  frmMain.btnCloseFrame.Show;

  SendMainMessage('close|current');

end;

function TAddShiftFrame.GetFieldAsString(Q: WideString; FieldName: WideString)
  : WideString;
begin
  PgQuery5.Active := False;
  PgQuery5.SQL.Clear();
  PgQuery5.SQL.Add(Q);
  PgQuery5.Execute();
  if (PgQuery5.RecordCount > 0) then
  begin
    Result := PgQuery5.FieldByName(FieldName).AsWideString;
  end
  else
  begin
    Result := '';
  end;
end;

function TAddShiftFrame.FindLastShift(TypeId: integer; CashDesk: WideString)
  : WideString;
begin

  Result := GetFieldAsString('select ct_number ' +
    'from tbl_cd_cash_transactions ' + 'where (type = ' + IntToStr(TypeId) +
    ') and id_cashdesk = ' + CashDesk + ' ' + 'order by datetime desc',
    'ct_number');

end;

procedure TAddShiftFrame.ExecSQL(Q: WideString);
begin
  PgSQL1.SQL.Clear();
  PgSQL1.SQL.Add(Q);
  try
    PgSQL1.Execute();
  except
    on E: Exception do
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

procedure TAddShiftFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if (cxGridDBTableView9.ViewData.RecordCount > 0) then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid11);
  end;
end;

procedure TAddShiftFrame.exporttogrid1Click(Sender: TObject);
begin
  inherited;
  if (cxGridDBTableView10.ViewData.RecordCount > 0) then
  begin
    TExportsGrid.ExportsGridToExcel(cxGrid12);
  end;
end;

function TAddShiftFrame.GetNextCashTransactionNumber(): integer;
var
  QueryStr, MaxId, TempNo: String;
  I, j: integer;
begin

  Result := 0;

  try

    MaxId := frmMain.GetFieldAsString('select max(id) as max_id ' +
      'from tbl_cd_cash_transactions', 'max_id');

    TempNo := frmMain.GetFieldAsString('select ct_number ' +
      'from tbl_cd_cash_transactions ' + 'where id = ' + MaxId, 'ct_number');

  except
    on E: Exception do
    begin
      Information('Warning',
        'Internal error in GetNextCashTransactionNumber()');
      Exit;
    end;
  end;

  if TempNo = '' then
  begin
    Result := 1;
  end
  else
  begin
    I := Pos('/', TempNo);
    j := PosEx('/', TempNo, I + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    Result := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;

end;

function TAddShiftFrame.IIf(B: Boolean; S1: WideString; S2: WideString)
  : WideString;
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

procedure TAddShiftFrame.DoOpenMoving();
var
  TypeId, I: integer;
  dYear, dMonth, dDay: Word;
  CategoriesQuery, QueryStr: WideString;
  CTNumber, IdUser, IdCdTransaction, IdCdSubTransaction: WideString;
begin

  TypeId := CT_OPEN_MOVING;

  DecodeDate(Now(), dYear, dMonth, dDay);
  CTNumber := frmMain.ShiftInfo[TypeId].Mnemonic + '/' + CurrentCashDesk + '/' +
    IntToStr(dDay) + '/' + IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

  // For each move category in table_cd_move_categories
  // we add single OpenMoving transaction

  CategoriesQuery := 'select * from tbl_cd_move_categories ' +
    'where id_cashdesk = ' + CurrentCashDesk;

  GenericQuery.Active := False;
  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(CategoriesQuery);
  GenericQuery.Active := True;

  for I := 1 to GenericQuery.RecordCount do
  begin

    IdUser := GetFieldAsString('select id from tbl_users where user_name = ''' +
      frmMain.CurrentUserName + '''', 'id');

    QueryStr := '  insert into tbl_cd_cash_transactions ' + '  ( ' +
      '    id_cashdesk, ' + '    type, ' + '    ct_number, ' + '    datetime, '
      + '    id_user, ' + '    is_multiple_cd_transaction, ' + '    confirmed '
      + '  ) ' + '  values ' + '    (' + CurrentCashDesk + ', ' +
      IntToStr(TypeId) + ', ' + '''' + CTNumber + ''', ' + '''' +
      DateTimeToStr(Now(), frmMain.FormatSettings) + ''', ' + IdUser + ', ' +
      '0, ' + '0' + '    ); ';

    ExecSQL(QueryStr);

    IdCdTransaction := GetFieldAsString
      ('select id from tbl_cd_cash_transactions where ct_number = ''' + CTNumber
      + '''', 'id');

    // ----------------------------------------------------------------------------

    // Cash subtransaction

    QueryStr := '  insert into tbl_cd_cash_transactions_subt ' +
      '    (id_cashdesk, id_cd_transaction, ct_number) ' + '  values ' + '    ('
      + CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' + CTNumber +
      ''' ' + '    );';

    ExecSQL(QueryStr);

    IdCdSubTransaction := GetFieldAsString
      ('select id from tbl_cd_cash_transactions_subt where ct_number = ''' +
      CTNumber + '''', 'id');

    // ----------------------------------------------------------------------------

    // Cash transaction categories

    QueryStr := '  insert into tbl_cd_cash_transactions_subt_categories ' +
      '  ( ' + '    id_cashdesk, ' + '    id_cd_transaction, ' +
      '    ct_number, ' + '    id_cd_sub_transaction, ' + '    id_cd_category '
      + '  ) ' + '  select ' + CurrentCashDesk + ', ' + IdCdTransaction + ', ' +
      '''' + CTNumber + ''', ' + IdCdSubTransaction + ', ' + '    id_category '
      + '  from ' + '    tbl_cd_values ' + '  where ' + '    id_cashdesk = ' +
      CurrentCashDesk + ' ' + '  group by ' + '    id_category; ';

    ExecSQL(QueryStr);

    // ----------------------------------------------------------------------------

    // Cash transaction values

    QueryStr := '  insert into tbl_cd_cash_transactions_subt_categories_values '
      + '  (' + '    id_cashdesk, ' + '    id_cd_transaction, ' +
      '    ct_number, ' + '    id_cd_sub_transaction, ' + '    id_cd_category, '
      + '    id_cd_value, ' + '    count, ' + '    amount_in, ' +
      '    amount_out, ' + '    nr, ' + '    exchange_rate ' + '  ) ' +
      '  select ' + CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' +
      CTNumber + ''', ' + IdCdSubTransaction + ', ' + '    id_category, ' +
      '    id_value, ' + // Moving CHF value
      '    0, ' + '    0, ' + '    0, ' + '    0, ' +
      '    current_exchange_rate_by_value_id(id_value, now()) ' + '  from ' +
      '    tbl_cd_values ' + '  where ' + '    id_cashdesk = ' + CurrentCashDesk
      + ' ' + '  ;';

    ExecSQL(QueryStr);

  end;

end;

destructor TAddShiftFrame.Destroy;
begin
  // if Assigned(ListOfCashTransactionsFrame) then
  // ListOfCashTransactionsFrame.cbCashdesk.Enabled:=true;
  inherited;
end;

function TAddShiftFrame.DoAutoShift(TypeId: integer; CTShift1: WideString;
  CTShift2: WideString): WideString; // Returns cash transaction ct_number
var
  dYear, dMonth, dDay: Word;
  CTNumber: WideString;
  TypeName: WideString;
  QueryStr: WideString;
  FromShiftType: integer;
  COStr: WideString;
  IdUser, IdCdTransaction, IdCdSubTransaction: WideString;
begin

  // Auto-shift (automatic cash transaction)
  // can be based on 1 or 2 cash transactions with their values
  // Currently OPEN_MOVING, CLOSE_MOVING or DIFFERENCIES

  // Debug

  case TypeId of
    CT_OPEN_MOVING:
      TypeName := 'Open moving';
    CT_CLOSE_MOVING:
      TypeName := 'Close moving';
    CT_DIFFERENCIES:
      TypeName := 'Differencies';
  end;

  COStr := '';
  if CashDeskDefaultCarryOver then
    COStr := ' with carry-over';

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

  // ----------------------------------------------------------------------------

  DecodeDate(Now(), dYear, dMonth, dDay);
  CTNumber := frmMain.ShiftInfo[TypeId].Mnemonic + '/' + CurrentCashDesk + '/' +
    IntToStr(dDay) + '/' + IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

  // Cash transaction

  IdUser := GetFieldAsString('select id from tbl_users where user_name = ''' +
    frmMain.CurrentUserName + '''', 'id');

  // TODO: Accounts

  QueryStr := '  insert into tbl_cd_cash_transactions ' + '  ( ' +
    '    id_cashdesk, ' + '    type, ' + '    ct_number, ' + '    datetime, ' +
    '    id_user, ' + '    is_multiple_cd_transaction, ' + '    confirmed ' +
    '  ) ' + '  values ' + '    (' + CurrentCashDesk + ', ' + IntToStr(TypeId) +
    ', ' + '''' + CTNumber + ''', ' + 'now(), ' + IdUser + ', ' + '0, ' + '0' +
    '    ); ';

  ExecSQL(QueryStr);

  IdCdTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions where ct_number = ''' + CTNumber +
    '''', 'id');

  // ----------------------------------------------------------------------------

  // Cash subtransaction

  QueryStr := '  insert into tbl_cd_cash_transactions_subt ' +
    '    (id_cashdesk, id_cd_transaction, ct_number) ' + '  values ' + '    (' +
    CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' + CTNumber + ''' '
    + '    );';

  ExecSQL(QueryStr);

  IdCdSubTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions_subt where ct_number = ''' +
    CTNumber + '''', 'id');

  // ----------------------------------------------------------------------------

  // Cash transaction categories

  QueryStr := '  insert into tbl_cd_cash_transactions_subt_categories ' + '  ( '
    + '    id_cashdesk, ' + '    id_cd_transaction, ' + '    ct_number, ' +
    '    id_cd_sub_transaction, ' + '    id_cd_category ' + '  ) ' + '  select '
    + CurrentCashDesk + ', ' + IdCdTransaction + ', ' + '''' + CTNumber + ''', '
    + IdCdSubTransaction + ', ' + '    id_category ' + '  from ' +
    '    tbl_cd_values ' + '  where ' + '    id_cashdesk = ' + CurrentCashDesk +
    ' ' + '  group by ' + '    id_category; ';

  ExecSQL(QueryStr);

  // ----------------------------------------------------------------------------

  // Cash transaction values

  case TypeId of

    CT_OPEN_MOVING:
      begin
        QueryStr :=
          '  insert into tbl_cd_cash_transactions_subt_categories_values ' +
          '  (' + '    id_cashdesk, ' + '    id_cd_transaction, ' +
          '    ct_number, ' + '    id_cd_sub_transaction, ' +
          '    id_cd_category, ' + '    id_cd_value, ' + '    count, ' +
          '    amount_in, ' + '    amount_out, ' + '    nr, ' +
          '    exchange_rate ' + '  ) ' + '  select ' + CurrentCashDesk + ', ' +
          IdCdTransaction + ', ' + '''' + CTNumber + ''', ' + IdCdSubTransaction
          + ', ' + '    id_category, ' + '    id_value, ' + '    0, ' +
          '    0, ' + '    0, ' + '    0, ' + // nr
          '    current_exchange_rate_by_value_id(id_value, now()) ' + '  from '
          + '    tbl_cd_values ' + '  where ' + '    id_cashdesk = ' +
          CurrentCashDesk + ' ' + '  ;';

        // ExecSQL(QueryStr);
      end;

    CT_CLOSE_MOVING:
      begin
        QueryStr :=
          '  insert into tbl_cd_cash_transactions_subt_categories_values ' +
          '  (' + '    id_cashdesk, ' + '    id_cd_transaction, ' +
          '    ct_number, ' + '    id_cd_sub_transaction, ' +
          '    id_cd_category, ' + '    id_cd_value, ' + '    count, ' +
          '    amount_in, ' + '    amount_out, ' + '    nr, ' +
          '    exchange_rate ' + '  ) ' + '  select ' + CurrentCashDesk + ', ' +
          IdCdTransaction + ', ' + '''' + CTNumber + ''', ' + IdCdSubTransaction
          + ', ' + '    id_category, ' + '    id_value, ' + '    0, ' +
          '    0, ' + '    0, ' + '    0, ' +
          '    current_exchange_rate_by_value_id(id_value, now()) ' + '  from '
          + '    tbl_cd_values ' + '  where ' + '    id_cashdesk = ' +
          CurrentCashDesk + ' ' + '  ;';

        // ExecSQL(QueryStr);
      end;

    CT_DIFFERENCIES:
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
          'insert into tbl_cd_cash_transactions_subt_categories_values ' + '(' +
          '  id_cashdesk, ' + '  id_cd_transaction, ' + '  ct_number, ' +
          '  id_cd_sub_transaction, ' + '  id_cd_category, ' + '  id_cd_value, '
          + '  count, ' + '  amount_in, ' + '  amount_out, ' + '  nr, ' +
        // <-- Here goes the difference
          '  exchange_rate ' + ') ' + 'select ' + CurrentCashDesk + ', ' +
          IdCdTransaction + ', ' + '''' + CTNumber + ''', ' + IdCdSubTransaction
          + ', ' + '  t1.id_cd_category, ' + // id_category
          '  t1.id_cd_value, ' + // id_value
          '  t2.sum_count - t1.sum_count, ' + // count
          '  t2.sum_amount_in - t2.sum_amount_in, ' + // amount_in
          '  t2.sum_amount_out - t2.sum_amount_out, ' +
        // amount_out             '
          '  t2.amount - t1.amount as nr, ' +
          '  current_exchange_rate_by_value_id(t1.id_cd_value, now()) ' +
          'from ' + '( ' +

        // Amounts expected

          'select ' + '  cat.name, ' + '  sum(v.nr * v1.multiplier * ' +
          '    (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) '
          + '  as amount ' + 'from ' + '  tbl_cd_cash_transactions as t ' +
          '  left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number '
          + '  left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number '
          + '  left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number '
          + '  left join ' + '  ( ' +
          '    select id, multiplier from tbl_values ' +
          '  ) as v1 on v1.id = v.id_cd_value, ' +
        // Selection of last CT_OPEN_SHIFT or CT_CLOSE_SHIFT or CT_CHANGE
        // according to caller, but without differencies:
        // see cd_cash_transactions_types -> goes_into_amount_expected
          '  ( ' + '    select ' + '      max(datetime) as m_datetime ' +
          '    from ' + '      tbl_cd_cash_transactions ' + '    where ' +
          '	     type = ' + IntToStr(FromShiftType) + ' and ' +
          '	     id_cashdesk = ' + CurrentCashDesk + ' ' + '  ) as m, ' +
          '  tbl_categories as cat, ' +
          '  tbl_cd_cash_transactions_types as vtypes ' + 'where ' +
          '  subt.ct_number <> ''' + CTNumber + ''' and ' +
          '  (t.datetime <= now() and t.datetime >= m.m_datetime) and ' +
        // > or >=
          '  t.id_cashdesk = ' + CurrentCashDesk + ' and ' +
          '  c.id_cd_category = cat.id and ' + // Was BUG: Lack of join with c
          '  v.id_cd_category = cat.id and ' + '  t.type = types.type and ' +
          '  types.goes_into_amount_expected = 1 ' + 'group by ' + '  cat.name '
          + ') as t1 ' +

        // Amounts entered by cashier

          'left join ' + '( ' + 'select ' + '  v.id_cd_category, ' +
          '  v.id_cd_value, ' + '  sum(v.count) as sum_count, ' +
          '  sum(v.amount_in) as sum_amount_in, ' +
          '  sum(v.amount_out) as sum_amount_out, ' +
          '  sum(v.nr * v2.multiplier * v.exchange_rate) as amount ' + 'from ' +
          '  tbl_cd_cash_transactions as t ' +
          '  left join tbl_cd_cash_transactions_subt_categories_values as v on v.ct_number = t.ct_number '
          + '  left join tbl_values as v2 on v.id_cd_value = v2.id, ' +
          '  tbl_categories as cat, ' + '  tbl_values as v0 ' + 'where ' +
          '  t.ct_number = ''' + edTransactionNo.Text + ''' and ' +
          '  v.id_cd_category = cat.id and ' + '  v.id_cashdesk = ' +
          CurrentCashDesk + ' ' + 'group by ' + '  v.id_cd_category, ' +
          '  v.id_cd_value ' + ') as t2 ';

        // TODO: We check carryover here for fixed_amount

        ExecSQL(QueryStr);

      end;

  end;

end;

// WARNING: Should be invoked only after post of currently opened shift

function TAddShiftFrame.CheckConfirm(): Boolean;
var
  xValue: Double;
begin
  Result := True;
  if Trim(VarToStr(cxGridDBTableView10difference.Summary.Item.EditValue)) <> EmptyStr
  then
  begin

    xValue := 0;
    try
      xValue := DataBaseStrToFloat
        (VarToStr(cxGridDBTableView10difference.Summary.Item.EditValue));
    except
      xValue := 0;
    end;
    if ((xValue <> 0) and (Abs(xValue) > Difference)) then
    begin
      VisibleUserexplanation(True);
      if Trim(mUserExplanation.Text) = EmptyStr then
      begin
        Information('Warning', 'Please add user explanation to confirm shift');
        Result := False;
        if mUserExplanation.CanFocus then
          mUserExplanation.SetFocus;
      end;
    end;

  end;

end;

function TAddShiftFrame.CheckDifferenciesFrom(FromShiftType: integer;
  CashDesk: WideString; CTNr: WideString; CurrentCTNr: WideString): Boolean;

var
  CTFirstDifferenceShift, CTLastDifferenceShift: WideString;
  Difference, Total_2: Double;
begin

  CTFirstDifferenceShift := GetFieldAsString
    ('  select ' + '    max(t1.datetime) as __dummy__, ' + '    t1.ct_number ' +
    '  from ' + '    tbl_cd_cash_transactions as t1, ' +
    '    tbl_cd_cash_transactions as t2 ' + '  where ' + '    t1.type = ' +
    IntToStr(CT_DIFFERENCIES) + ' and ' + '    t1.id_cashdesk = ' + CashDesk +
    ' and ' + '    t1.datetime >= t2.datetime and ' + // join on datetime order
    '    t2.ct_number = ''' + CTNr + '''' + '  group by ' + '    t1.ct_number ',
    'ct_number');

  CTLastDifferenceShift := GetFieldAsString('  select ' + '    t1.ct_number ' +
    '  from ' + '    tbl_cd_cash_transactions as t1, ' +
    '    tbl_cd_cash_transactions as t2 ' + '  where ' + '    t1.type = ' +
    IntToStr(CT_DIFFERENCIES) + ' and ' + '    t1.id_cashdesk = ' + CashDesk +
    ' and ' + '    t1.datetime >= t2.datetime and ' + // join on datetime order
    '    t2.ct_number = ''' + CTNr + '''', 'ct_number');

  // Total amount from last shift to CTNr

  Difference := StrFloat
    (GetFieldAsString
    ('select t2.amount - t1.amount as difference from ' + '( ' +
    // Actual amounts entered by cashier in current cashdesk
    'select ' + '  sum(c.nr * v.multiplier * c.exchange_rate) as amount ' +
    'from ' + '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
    '  tbl_values as v, ' + '  tbl_categories as cat ' + 'where ' +
    '  ct_number = ''' + CurrentCTNr + ''' and ' +
    '  c.id_cd_category = cat.id and ' + '  c.id_cd_value = v.id and ' +
    '  c.id_cashdesk = ' + CashDesk + ' ' + ') as t1, ' + '( ' +
    // Amounts expected
    // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
    // (we have no direction)
    'select ' + '  sum(v.nr * v1.multiplier * ' +
    '    (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) '
    + '  as amount ' + 'from ' + '  tbl_cd_cash_transactions as t ' +
    '  left join tbl_cd_cash_transactions_subt as subt on t.ct_number = subt.ct_number '
    + '  left join tbl_cd_cash_transactions_subt_categories as c on subt.ct_number = c.ct_number '
    + '  left join tbl_cd_cash_transactions_subt_categories_values as v on c.ct_number = v.ct_number '
    + '  left join ' + '  ( ' + '    select id, multiplier from tbl_values ' +
    '  ) as v1 on v1.id = v.id_cd_value, ' +
    // Selection of last CT_OPEN_SHIFT or CT_CLOSE_SHIFT or CT_CHANGE
    // according to caller, but without differencies:
    // see cd_cash_transactions_types -> goes_into_amount_expected
    '  ( ' + '    select ' + '      max(datetime) as m_datetime ' + '    from '
    + '      tbl_cd_cash_transactions ' + '    where ' + '	     type = ' +
    IntToStr(FromShiftType) + ' and ' + '	     id_cashdesk = ' + CashDesk + ' '
    + '  ) as m, ' + '  tbl_categories as cat, ' +
    '  tbl_cd_cash_transactions_types as types ' + 'where ' +
    '  subt.ct_number <> ''' + CurrentCTNr + ''' and ' +
    '  (t.datetime <= now() and t.datetime >= m.m_datetime) and ' + // > or >=
    '  t.id_cashdesk = ' + CashDesk + ' and ' +
    '  c.id_cd_category = cat.id and ' + // Was BUG: Lack of join with c
    '  v.id_cd_category = cat.id and ' + '  t.type = types.type and ' +
    '  types.goes_into_amount_expected = 1 ' + ') as t2 ', 'difference'));

  // Total of current shift

  // Bug: Brakowa?o joinu tak?e po kategoriach i cashdesku

  Total_2 := StrFloat(GetFieldAsString('select ' +
    '  sum(ctscv.nr * v.multiplier * (case when t.direction = 1 then 1 when t.direction = 2 then -1 else 1 end)) as total '
    + 'from ' + '  tbl_cd_cash_transactions as t ' +
    '  left join tbl_cd_cash_transactions_subt_categories_values as ctscv on ' +
    '    t.ct_number = ctscv.ct_number ' + '  left join tbl_cd_values as cv on '
    + '    ctscv.id_cd_value = cv.id_value and ' +
    '    ctscv.id_cd_category = cv.id_category ' +
    '  left join tbl_values as v on ' + '    cv.id_value = v.id and ' +
    '    cv.id_category = v.id_category ' + 'where ' + '  ctscv.ct_number = '''
    + CurrentCTNr + ''' and ' + '  ctscv.id_cashdesk = ' + CashDesk + ' and ' +
    '  cv.id_cashdesk = ' + CashDesk, 'total'));

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

  ExecSQL('update ' + '  tbl_cd_cash_transactions ' + 'set ' + '  difference = '
    + StringReplace(Format('%f', [Difference]), ',', '.', [rfReplaceAll]) + ' '
    + 'where ' + '  ct_number = ''' + CurrentCTNr + '''');

  Result := (Difference <> Total_2);

end;

constructor TAddShiftFrame.Create(AOwner: TComponent);
begin
  inherited;
  VisibleUserexplanation(False);
  exporttoexcel1.Caption := cPopMenu_eksport_toExcel;
  exporttogrid1.Caption := cPopMenu_eksport_toExcel;
end;

procedure TAddShiftFrame.PostShift();
begin

  cxGridDBTableView9.DataController.Post(True);

end;

procedure TAddShiftFrame.btnConfirmClick(Sender: TObject);
label
  IntermediateConfirmation,
  IntermediateConfirmation2;
var
  IntermediateConfirmationCount: integer;
  FrameName: WideString;
  Frame: TBaseFrame;
  Query, NewUserName: WideString;
  CTBaseShift, CTNr2, CTLastCloseShift, CTLastOpenShift, xlastshiftdate
    : WideString;
  LoginForm : TfrmCashierRelogin;
begin

  if CheckConfirm() then
  begin

    // Save shift values
    {
    xlastshiftdate := GetFieldAsString(' select max(datetime) as dt ' +
      'from tbl_cd_cash_transactions ' + 'where ' + '  (id_cashdesk = ' +
      CurrentCashDesk + ') and ' + '  (datetime < now()) and ' +
      '  (type in (1, 3, 5, 7, 8, 9)) ' + ' group by id ', 'dt');
     }
    xlastshiftdate:= Flastshiftdate;


    if (Trim(xlastshiftdate) = '') then
      xlastshiftdate := DateToStr(Now());

    if CheckConfirm then

    begin

    btnConfirm.Enabled := false ;
    Application.ProcessMessages;

      // -------- Przeniesiony zapis amounts expected -----------------------------

      ExecSQL('insert into tbl_cd_cash_transactions_shift_values ' + '(' +
        '  ct_number, ' + '  datetime, ' + '  id_cashdesk, ' +
        '  category_name, ' + '  currency_symbol, ' + '  actual_amount_fc, ' +
        '  actual_amount, ' + '  amount_expected_fc, ' + '  amount_expected, ' +
        '  difference ' + ') ' + 'select ' + '''' +
        VarToStr(edTransactionNo.Text) + ''', ' + '  now(), ' + CurrentCashDesk
        + ', ' + '  t1.category_name, ' + '  t2.currency_symbol, ' +
        '  t1.amount_0 as actual_amount_fc, ' +
        '  t1.amount_1 as actual_amount, ' +
        '  t2.amount_0 as amount_expected_fc, ' +
        '  t2.amount_1 as amount_expected, ' +
        '  t1.amount_1 - t2.amount_1 as difference ' + 'from ' + '( ' +

        // Actual amounts entered by cashier in current cashdesk
        'select ' + '  category_name(c.id_cd_category) as category_name, ' +
        '  curr.symbol as currency_symbol, ' +
        '  sum(c.nr * v.multiplier) as amount_0, ' +
        '  sum(c.nr * v.multiplier * c.exchange_rate) as amount_1 ' + 'from ' +
        '  tbl_cd_cash_transactions_subt_categories_values as c, ' +
        '  tbl_values as v, ' + '  tbl_categories as cat, ' +
        '  tbl_currencies_exchange_rates as cer, ' + '  tbl_currencies as curr '
        + 'where ' + '  ct_number = ''' + VarToStr(edTransactionNo.Text) +
        ''' and ' + '  c.id_cd_category = cat.id and ' +
        '  c.id_cd_value = v.id and ' + '  c.id_cashdesk = ' + CurrentCashDesk +
        ' and ' + '  cer.valid_from <= now() and cer.valid_to >= now() and ' +
        '  cer.id_currency = curr.id and ' + '  v.id_currency = curr.id ' +
        'group by ' + '  c.id_cd_category, curr.symbol ' + ') ' +
        '  as t1, ' + '( ' +

        // Amounts expected
        // IMPORTANT: In case of CT_OPEN_SHIFT etc. the multiplier = 1
        // (we have no direction)
        'select ' + '  s.cat_name as category_name, ' +
        '  s.currency_symbol as currency_symbol, ' +
        '  sum(s.amount0) as amount_0, ' + '  sum(s.amount1) as amount_1 ' +
        'from ' + '(' + '  select ' +
        // Here we calculate amount expected for shifts  after click button open or close shift
        '    v.category_name as cat_name, ' +
        '    v.currency_symbol as currency_symbol, ' +
        '    sum(v.nr * v.multiplier ' +
        '    * (case when v.direction = 1 then 1 else -1 end)) as amount0, ' +
        '    sum(v.nr * v.multiplier * v.exchange_rate ' +
        '    * (case when v.direction = 1 then 1 else -1 end)) as amount1 ' +
        '  from ' + '    tbl_cd_cash_transactions_subt_categories_values as v '
        + '  where ' + '    v.ct_number <> ''' + VarToStr(edTransactionNo.Text)
        + ''' and ' + '    (v.datetime <= now() and v.datetime >= ''' +
        StringToDataBase(xlastshiftdate) + ''')' + '     and ' + // > or >=
        '    v.id_cashdesk = ' + CurrentCashDesk + ' and ' +
        '    v.category_name is not null and ' +
        // '    substring(v.ct_number, 1, 2) <> ''CH'' and ' +
        '    substring(v.ct_number, 1, 3) <> ''INF''' + '  group by ' +
        '    cat_name, currency_symbol ' + ') ' + '  as s ' + 'group by ' +
        '  s.cat_name, s.currency_symbol ' + ') as t2 ' + 'where ' +
        '  t1.category_name = t2.category_name and ' +
        '  t1.currency_symbol = t2.currency_symbol');

      // End of: Save shift values

      ExecSQL('update tbl_cd_cash_transactions ' + 'set user_explanation = ''' +
        mUserExplanation.Lines.GetText() + ''' ' + 'where ct_number = ''' +
        VarToStr(edTransactionNo.Text) + '''');

      // TODO: Show difference explanation in case of differencies

      CTBaseShift := edTransactionNo.Text;

      if TransactionType = CT_OPEN_SHIFT then
      begin

        // We search for last close shift

        PostShift();

        CTLastCloseShift := FindLastShift(CT_CLOSE_SHIFT, CurrentCashDesk);

        DoWeHaveDifferencies := CheckDifferenciesFrom(CT_CLOSE_SHIFT,
          CurrentCashDesk, CTLastCloseShift, CTBaseShift);

        if CashDeskDefaultCarryOver then
        begin

          // then we sum all difference transactions since this last close shift
          // adding at last fixed amount for each value (<-- here's difference to below check)
          // then we insert summary values

          // Type Id 9 - inicjalne zasilenie kasy

          // Tylko total_amount_expected - total_amount_shift

          // WA?NE:
          // np. w przypadku niweluj?cych sie r?znic w got?wce i ?etonach
          // nie mammy difference mi?dzy total_expected, a total_shift
          // chodzi o rozliczenie sumaryczne

          if DoWeHaveDifferencies then
          begin
            // Set difference field for OPEN_SHIFT
            // DoAutoShift(CT_DIFFERENCIES, CTLastCloseShift, '');
          end;

        end
        else
        begin

          if DoWeHaveDifferencies then
          begin
            // DoAutoShift(CT_DIFFERENCIES, CTLastCloseShift, '');
          end;

        end;
      end
      else if TransactionType = CT_CLOSE_SHIFT then
      begin

        // (this is transfer account transaction to have cashdesk zeroed)
        // We search for last open shift

        PostShift();

        CTLastOpenShift := FindLastShift(CT_OPEN_SHIFT, CurrentCashDesk);

        // Amount expected <> amount from values
        DoWeHaveDifferencies := CheckDifferenciesFrom(CT_OPEN_SHIFT,
          CurrentCashDesk, CTLastOpenShift, CTBaseShift);

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
            // DoAutoShift(CT_DIFFERENCIES, CTLastOpenShift, '');
          end;

        end;

      end
      else if TransactionType = CT_INFO then
      begin
        // 1) Show window that first cashier has confirmed Intermediate
        // -- confirmation_id_user

        IntermediateConfirmationCount := 0;

      IntermediateConfirmation:

        if IntermediateConfirmationCount = 3 then
        begin
          Exit;
        end;

      end
      else if TransactionType = CT_CHANGE_CASHIER then
      begin

        if Question('Confirm transaction ?') then
        begin

          // 2) Show relogin window for second cashier without save as dialog window
          // -- confirmation_id_user_second (for Intermediate only)

          LoginForm := TFrmCashierRelogin.Create(Self);

          LoginForm.lbLogin.Caption := 'Confirmation by supervisor';
          LoginForm.PgQuery1.Active := False;
          LoginForm.PgQuery1.SQL.Clear();
          LoginForm.PgQuery1.SQL.Add('select cdu.id_user, u.user_name '
            + 'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user = u.id '
            + 'where u.is_cashier = 1 and cdu.id_cashdesk = ' +
            CurrentCashDesk);
          LoginForm.PgQuery1.Active := True;
          LoginForm.PgQuery6.Active := False;
          LoginForm.PgQuery6.SQL.Clear();
          LoginForm.PgQuery6.SQL.Add('select cdu.id_user, u.user_name '
            + 'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user = u.id '
            + 'where u.is_cashier = 1 and cdu.id_cashdesk = ' +
            CurrentCashDesk);
          LoginForm.PgQuery6.Active := True;

        IntermediateConfirmation2:

          if IntermediateConfirmationCount = 3 then
          begin
            Exit;
          end;

          if LoginForm.PgQuery1.RecordCount < 1 then
          begin
            Information('Warning',
              'No second user to confirm - cannot relogin');
            Exit;
          end;

          LoginForm.btnLogin.Caption := 'Confirm';
          LoginForm.ShowModal;

          if LoginForm.ModalResult = mrOk then
          begin

            NewUserName :=
              VarToStr(LoginForm.cbCashier.DataBinding.DisplayValue);

            if CheckUserPassword('Program', NewUserName,
              LoginForm.edPassword.Text) = 1 then
            begin
              // Relogin

              frmMain.CurrentLoginTime := Now();

              SystemLog(
                'Successful login to %s with user [%s] and password [%s]',
                ['program', NewUserName, LoginForm.edPassword.Text]);

              frmMain.SetStatusBarText('Logged as [' + NewUserName + '] on [' +
                DateTimeToStr(Now(), frmMain.FormatSettings) + ']. ' +
                'Connected to [' + frmMain.CurrentHost + ' : ' +
                frmMain.CurrentDatabaseName + '] as [' +
                frmMain.CurrentDBUserName + '].');

              ExecSQL('delete from tbl_cd_login where id_user = ' +
                frmMain.CurrentUserId());

              ExecSQL('delete from tbl_cd_login where id_cashdesk = ' +
                CurrentCashDesk);

              frmMain.CurrentUserName := NewUserName;
              frmMain.CurrentPassword := LoginForm.edPassword.Text;

              ExecSQL('insert into tbl_cd_login (id_cashdesk, id_user, datetime) '
                + 'values (' + CurrentCashDesk + ', ' +
                VarToStr(LoginForm.cbCashier.EditValue) + ', now())');

            end
            else
            begin
              Information('Warning', 'Invalid password - please try again');
              Inc(IntermediateConfirmationCount);
              goto IntermediateConfirmation2;
            end;
            LoginForm.Free();
          end
          else if LoginForm.ModalResult = mrCancel then
          begin
            LoginForm.Free();
            Exit;
          end;

        end
        else
        begin
          Exit;
        end;

      end;

      // ----------------------------------------------------------------------------

      RptBalancePreview(VarToStr(edTransactionNo.EditValue), CurrentCashDesk);

      // ----------------------------------------------------------------------------

      if frmMain.FrameStackPreviousTop(FrameName, Frame) then
      begin
        if AnsiUpperCase(FrameName) = AnsiUpperCase(frmMain.FrameNameByIdx(26))
        then
        begin
          TListOfCashTransactionsFrame(Frame)
            .cbCashdesk.Properties.OnEditValueChanged(Sender);
          TListOfCashTransactionsFrame(Frame).cbCashdesk.Enabled := True;
        end;
      end;

      if TransactionType = CT_OPEN_SHIFT then
      begin
        RecalculateOpenCaskDesk();
      end;

      if TransactionType = CT_CLOSE_SHIFT then
      begin
        TListOfCashTransactionsFrame(Frame).FCurrency.ClearResult;
        FreeAndNil(TListOfCashTransactionsFrame(Frame).FCurrency);
      end;

      // Storing info about last (currently confirmed) shift:

      if TransactionType in [CT_OPEN_SHIFT, CT_CLOSE_SHIFT, CT_CHANGE_CASHIER]
      then
      begin

        frmMain.ExecSQL('delete from tbl_last_shift ' + 'where ' +
          '  id_cashdesk = ' + CurrentCashDesk);

        frmMain.ExecSQL
          ('insert into tbl_last_shift (client_ip, id_cashdesk, ct_number) ' +
          'values ' + '(' + '''' + frmMain.IdIPWatch1.CurrentIP + ''', ' +
          CurrentCashDesk + ', ''' + VarToStr(edTransactionNo.Text) +
          '''' + ')');

      end;

      frmMain.ExecSql
      ('update tbl_cd_cash_transactions set buffered_type = 0 where '+
        'buffered_type = -1 and id_cashdesk = '+  CurrentCashDesk);

      frmMain.btnCloseFrame.Show;

      SendMainMessage('close|current');

    end;
  end;

end;

procedure TAddShiftFrame.cbEnabledForModificationPropertiesChange
  (Sender: TObject);
begin

  cxGridDBTableView9.OptionsData.Editing := True;

end;

procedure TAddShiftFrame.cxButton1Click(Sender: TObject);
begin
  PgQuery3.Active := False;
  PgQuery3.Active := True;
end;

procedure TAddShiftFrame.
  cxGridDBTableView10DataControllerSummaryFooterSummaryItemsSummary
  (ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  xValue: Double;
begin
  inherited;

  if Trim(VarToStr(cxGridDBTableView10difference.Summary.Item.EditValue)) <> EmptyStr
  then
  begin
    xValue := 0;
    try
      xValue := DataBaseStrToFloat
        (VarToStr(cxGridDBTableView10difference.Summary.Item.EditValue));
    except
      xValue := 0;
    end;
    if ((xValue <> 0) and (Abs(xValue) > Difference)) then
    begin
      VisibleUserexplanation(True);
    end
    else
    begin
      VisibleUserexplanation(False);
    end;
  end;
end;

procedure TAddShiftFrame.cxGridDBTableView9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr, TransactionIdStr: WideString;
begin
  inherited;

  // If we're in nr column then we go into the next row

{  DC := cxGridDBTableView9.DataController;
  frmMain.GridDB := Self.cxGridDBTableView9;
  SelectedRow := DC.FocusedRecordIndex;

  if (SelectedRow >= 0) then
  begin
    if (Self.cxGridDBTableView9.DataController.FocusedRecordIndex <
      Self.cxGridDBTableView9.DataController.RowCount) then
    begin
      Self.cxGridDBTableView9.DataController.FocusedRowIndex := SelectedRow + 1;
    end;
  end; }

end;

procedure TAddShiftFrame.cxGridDBTableView9multiplierPropertiesEditValueChanged
  (Sender: TObject);
var
  SelectedRow: integer;
  DC: cxGridDBDataDefinitions.TcxGridDBDataController;
  QueryStr, TransactionIdStr: WideString;
begin

  DC := cxGridDBTableView9.DataController;
  frmMain.GridDB := Self.cxGridDBTableView9;
  SelectedRow := DC.FocusedRecordIndex;

  cxGridDBTableView9.DataController.Post(True);
  PgQuery3.Active := False;
  PgQuery3.Active := True;

  if (SelectedRow >= 0) then
  begin
    if (Self.cxGridDBTableView9.DataController.FocusedRecordIndex <
      Self.cxGridDBTableView9.DataController.RowCount) then
    begin
      Self.cxGridDBTableView9.DataController.FocusedRowIndex := SelectedRow + 1;
    end;
  end;

end;

procedure TAddShiftFrame.cxGridDBTableView9nrPropertiesEditValueChanged
  (Sender: TObject);
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

procedure TAddShiftFrame.cxGridDBTableView9nrPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  ErrorStr: WideString;
begin
  inherited;
  if (DisplayValue <> '') then
  begin
    if (Pos('+', DisplayValue) > 0) or (Pos('-', DisplayValue) > 0) then
    begin
      DisplayValue := frmMain.ParseExpression(DisplayValue, ErrorStr);
      if (ErrorStr <> '') then
      begin
        Information('Error', ErrorStr);
      end;
    end
    else
    begin
      DisplayValue := Round(StrToFloat(VarToStr(DisplayValue)));
    end;
  end
  else
  begin
    DisplayValue := '0';
  end;
  Error := False;
end;

function TAddShiftFrame.BilancingTransaction(AidcashDesk: integer;
  AcurrSymbol: string; aSeling: Double): Boolean;
var
  xQuery: string;
  I: integer;
  xResult: TResultHandle;
  xCTNumber: string;
  xIdCdTransaction: string;
  xIdCdSubTransaction: string;
  xIdUser: string;
  xExec: TResultHandle;
  xTemp: string;
  // ----------
  xCtNumber_2: string;
  xNr: Double;
  xSum: Double;
  xAccount_From: TArrayOfString;
  xAccount_to: TArrayOfString;
  xTrans, xAccount_f, xAccount_t, xName_from, xName_to: string;

begin
  Result := True;
  xAccount_From := frmMain.GetAccount(AidcashDesk, cAccountFrom);
  xAccount_to := frmMain.GetAccount(AidcashDesk, cAccountTo);
  xIdUser := frmMain.CurrentUserId;
  xResult := TResultHandle.Create;
  xResult.ClearResult;
  xExec := TResultHandle.Create;
  xExec.ClearResult;
  xResult := TResultHandle.Create;

  xQuery := ' Select sum(nr) as money ,id_cd_value,id_cd_category,category_name,exchange_rate,cat.id as category_id '
    + ' from tbl_cd_cash_transactions_subt_categories_values  val ' +
    ' join tbl_cd_cash_transactions on tbl_cd_cash_transactions.id=val.id_cd_transaction '
    + ' left join tbl_categories cat on cat.name=val.category_name ' + ' where '
    + ' val.currency_symbol=''%s'' and val.id_cashdesk in (%s) ' +
    ' and tbl_cd_cash_transactions.dateTime =last_shift_inter_date(val.id_cashdesk) and val.Direction=1 '
    + ' and id_cd_transactionCCR is null and (substring (val.ct_number ,1,3)<>''INF'') '
    + ' group by    id_cd_value ,id_cd_category,category_name, exchange_rate, cat.id ';

  xQuery := Format(xQuery, [AcurrSymbol, IntToStr(AidcashDesk)]);
  xResult.Add(xQuery);
  xResult.InvokeSQL;
  xResult.First;
  xSum := 0;
  for I := 0 to xResult.count - 1 do
  begin
    xSum := xSum + xResult.Query.FieldByName('money').AsFloat;
    xResult.next;
  end;
  xResult.First;

  if xSum > 0 then
  begin

    xTrans := 'NULL';
    xAccount_f := 'NULL';
    xName_from := 'NULL';
    xAccount_t := 'NULL';
    xName_to := 'NULL';
    if Length(xAccount_From) > 0 then
    begin
      xTrans := xAccount_From[0];
      xAccount_f := xAccount_From[1];
      xName_from := xAccount_From[2];
    end;
    if Length(xAccount_to) > 0 then
    begin
      xTrans := xAccount_to[0];
      xAccount_t := xAccount_to[1];
      xName_to := xAccount_to[2];
    end;

    Inc(FmaxNumber);
    xCTNumber := frameHelper.GenerateCT_number(AidcashDesk, FmaxNumber, 14);


    // Transakcja na minus
    // tbl_cd_cash_transactions

    xQuery := ' insert into tbl_cd_cash_transactions( id_cashdesk, type, ct_number, datetime, id_user,'
      + ' is_multiple_cd_transaction, confirmed, direction, confirmation_id_user,'
      + ' amount_in, account_id_from, account_id_to,id_cd_transaction)  values '
      + ' (%s,%s,''%s'',now(),%s,0,1,1,%s,%s,''%s'',''%s'',%s)';
    // Wychodzi z kasy
    xQuery := Format(xQuery, [IntToStr(AidcashDesk), '14', xCTNumber, xIdUser,
      xIdUser, '-' + FloatStrDataBase(xSum), xAccount_f, xAccount_t, xTrans]);
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

      xQuery := 'insert into  tbl_cd_cash_transactions_subt(id_cashdesk,id_cd_transaction,ct_number ,account_from,account_to,id_account_from,id_account_to) '
        + ' values(%s, %s,''%s'',''%s'',''%s'',%s,%s)';
      xQuery := Format(xQuery, [IntToStr(AidcashDesk), xIdCdTransaction,
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

      xQuery := Format(xQuery, [IntToStr(AidcashDesk), xIdCdTransaction,
        xCTNumber, xIdCdSubTransaction, xResult.Query.FieldByName('category_id')
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
        IntToStr(AidcashDesk) + ')', 'date');

      xQuery := ' insert into tbl_cd_cash_transactions_subt_categories_values(id_cashdesk, id_cd_transaction, ct_number,'
        + ' id_cd_sub_transaction, id_cd_category, id_cd_value, count,amount_in, amount_out,nr, exchange_rate,'
        + ' direction, multiplier, goes_into_amount_expected, datetime, last_shift_datetime, currency_symbol,'
        + ' category_name) values(%s,%s,''%s'',%s ,%s ,%s ,0,%s,%s,%s,%s,1,1,1,now(),''%s'',''%s'',''%s'')';
      xQuery := Format(xQuery, [IntToStr(AidcashDesk), xIdCdTransaction,
        xCTNumber, xIdCdSubTransaction, xResult.Query.FieldByName('category_id')
        .AsString, xResult.Query.FieldByName('id_cd_value').AsString,
        FloatStrDataBase(xSum), FloatStrDataBase(xSum),
        '-' + FloatStrDataBase(xSum),
        FloatStrDataBase(xResult.Query.FieldByName('exchange_rate').AsFloat),
        xTemp, AcurrSymbol, xResult.Query.FieldByName('Category_name')
        .AsString]);
      // 'last_shift_inter_date(' + inttostr(AidcashDesk) + ')
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

      // COPY TRANSACTION
      // ------------------------------------------------------------------------------------
      Inc(FmaxNumber);
      xCtNumber_2 := frameHelper.GenerateCT_number(AidcashDesk, FmaxNumber, 14);

      frmMain.CopyTransaction(xCTNumber, xCtNumber_2, 14, AidcashDesk, 2,
        '', True);

      xIdCdTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
        xCtNumber_2 + '''', 'id');

      xIdCdSubTransaction := frmMain.GetFieldAsString
        ('select id from tbl_cd_cash_transactions_subt ' +
        'where ct_number = ''' + xCtNumber_2 + '''', 'id');

      xQuery := 'update tbl_cd_cash_transactions_subt set id_cd_transaction=%s, account_from=''%s'', '
        + '    account_to=''%s'', id_account_from=%s, id_account_to=%s  where ct_number=''%s''';
      xQuery := Format(xQuery, [xIdCdTransaction, xName_from, xName_to,
        xAccount_f, xAccount_t, xCtNumber_2]);
      xExec.ClearResult;
      xExec.Add(xQuery);
      try
        xExec.ExecuteSQL;
      except
        Result := False;
      end;

      if Result then
      begin
        xQuery := 'update tbl_cd_cash_transactions_subt_categories_values set id_cd_transaction=%s where ct_number=''%s''';
        xQuery := Format(xQuery, [xIdCdTransaction, xCtNumber_2]);
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

        xQuery := Format
          ('Update tbl_cd_cash_transactions  set confirmed=1,confirmation_id_user=%s, direction=1  where id=%s',
          [xIdUser, xIdCdTransaction]);

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

        // try
        // xNr := xResult.Query.FieldByName('money').AsFloat * aSeling;
        // except
        // xNr := 0;
        // end;

        xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set exchange_rate=%s, '
          + ' nr=%s, amount_in=%s, amount_out=%s, Direction=1 where id_cd_transaction=%s and id_cd_sub_transaction=%s ';
        xQuery := Format(xQuery, [FloatStrDataBase(aSeling),
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

        xQuery := Format(xQuery, [AcurrSymbol, IntToStr(AidcashDesk)]);
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
          for I := 0 to xResult.count - 1 do
          begin
            xQuery := 'Update tbl_cd_cash_transactions_subt_categories_values set id_cd_transactionCCR='
              + xIdCdTransaction + ',direction=1 where id=' +
              xResult.Query.FieldByName('id').AsString;
            xExec.ClearResult;
            xExec.Add(xQuery);
            try
              xExec.ExecuteSQL;
            except
              Result := False;
            end;
            if not Result then
            begin
              Break;
            end;
            xResult.next;
          end;
        end;

        xIdCdTransaction := frmMain.GetFieldAsString
          ('select id from tbl_cd_cash_transactions ' + 'where ct_number = ''' +
          xCtNumber_2 + '''', 'id');

      end;
    end;
  end;
  xResult.ClearResult;
  xExec.ClearResult;
  xExec.Free;
  xResult.Free;
end;

procedure TAddShiftFrame.RecalculateOpenCaskDesk;

var
  xQuery: string;
  xLooping: TResultHandle;
  I: integer;
  xResult: Boolean;
  xIdCashDesk: integer;
  FrameName: WideString;
  Frame: TBaseFrame;
begin

  try
    xIdCashDesk := StrInt(CurrentCashDesk);
  except
    xIdCashDesk := 0
  end;
  if frmMain.FrameStackPreviousTop(FrameName, Frame) then
  begin
    if AnsiUpperCase(FrameName) = AnsiUpperCase(frmMain.FrameNameByIdx(26)) then
    begin
      if Assigned(TListOfCashTransactionsFrame(Frame).FCurrency) then
      begin

        TListOfCashTransactionsFrame(Frame)
          .FCurrency.Query.Connection.StartTransaction;
        TListOfCashTransactionsFrame(Frame).FCurrency.First;

        FmaxNumber := frameHelper.MaxCT_number;

        for I := 0 to TListOfCashTransactionsFrame(Frame).FCurrency.count - 1 do
        begin
          xResult := BilancingTransaction(xIdCashDesk,
            TListOfCashTransactionsFrame(Frame).FCurrency.Query.FieldByName
            ('symbol').AsString, TListOfCashTransactionsFrame(Frame)
            .FCurrency.Query.FieldByName('selling').AsCurrency);
          TListOfCashTransactionsFrame(Frame).FCurrency.next;
          if not xResult then
            Break;
        end;

        if xResult then
        begin
          TListOfCashTransactionsFrame(Frame).FCurrency.Query.Connection.Commit;
        end
        else
        begin
          TListOfCashTransactionsFrame(Frame)
            .FCurrency.Query.Connection.Rollback;
        end;
        TListOfCashTransactionsFrame(Frame).FCurrency.ClearResult;
        FreeAndNil(TListOfCashTransactionsFrame(Frame).FCurrency);
      end;
    end;
  end;
end;

procedure TAddShiftFrame.RptBalancePreview(nr, id: string);
var
  xObject: TReportsPrinter;
begin
  { q_detail.Close;
    q_sum.Close;
    q_header.Close;
    q_detail.ParamByName('Act_number').AsString := nr;
    q_detail.Open;
    q_header.ParamByName('Act_number').AsString := nr;
    q_header.Open;
    q_sum.ParamByName('Act_number').AsString := nr;
    q_sum.ParamByName('id_cashdesk').AsString := id;
    q_sum.ParamByName('last_shift_date').AsDateTime := ShiftDate;
    q_sum.Open;
    report.LoadFromFile(ExtractFilePath(Application.ExeName)+'Balance-fr.fr3');
    report.ShowReport();
  }

  xObject := TReportsPrinter.Create;
  xObject.FIdReport := cReportBalanceShifts; // cReportBalance;
  try
    xObject.FidCashDesk := StrInt(id);
  except
    xObject.FidCashDesk := ckeyNILL;
  end;
  xObject.FCopies := 1;
  xObject.Fct_number := nr;
  xObject.PrintReport;
  xObject.Free;
end;

procedure TAddShiftFrame.VisibleUserexplanation(Avisible: Boolean);
begin
  cxLabel_UserExpl.Visible := Avisible;
  mUserExplanation.Visible := Avisible;
end;

procedure TAddShiftFrame.Button1Click(Sender: TObject);
begin
  inherited;
  RptBalancePreview('CLSH/70/12/11/2012/318', '70');
end;

procedure TAddShiftFrame.cxButton_ContinousClick(Sender: TObject);
var
  xDataSet: TResultHandle;
  xQuery: string;
begin
  inherited;
  xQuery := ' Update  tbl_cd_cash_transactions_subt_categories_values set count= tbl_shifts_caskdesk.count, '
    + ' amount_in = tbl_shifts_caskdesk.amount_in,' +
    ' amount_out=tbl_shifts_caskdesk.amount_out,' +
    ' id_cd_category=  tbl_shifts_caskdesk.id_cd_category,' +
    ' nr= tbl_shifts_caskdesk.nr,' +
    ' multiplier= tbl_shifts_caskdesk.multiplier,' +
    ' category_name= tbl_shifts_caskdesk.category_name from  tbl_shifts_caskdesk '
    + ' where  tbl_cd_cash_transactions_subt_categories_values.ct_number=' +
    QuotedStr(edTransactionNo.Text) +
    '  and tbl_cd_cash_transactions_subt_categories_values.id_cd_value= tbl_shifts_caskdesk.id_cd_value '
    + ' and  tbl_cd_cash_transactions_subt_categories_values.id_cashDesk= tbl_shifts_caskdesk.id_cashDesk ';
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add(xQuery);
  xDataSet.ExecuteSQL;

  PgQuery3.Active := False;
  PgQuery3.Active := True;

  PgQuery4.Active := False;
  PgQuery4.Active := True;

  xDataSet.Free;
end;

end.
