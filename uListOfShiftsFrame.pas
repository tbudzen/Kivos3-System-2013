unit uListOfShiftsFrame;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  DBAccess, PgAccess, MemDS, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  uAddShiftFrame;

type
  TShiftInfo = record
    TypeId : Integer;
    Name : WideString;
    Mnemonic : WideString;
  end;

type
  TListOfShiftsFrame = class(TBaseFrame)
    lbCashier2: TcxLabel;
    lbLoginTime2: TcxLabel;
    cxGrid10: TcxGrid;
    cxGrid10DBTableView1: TcxGridDBTableView;
    cxGrid10DBTableView1id: TcxGridDBColumn;
    cxGrid10DBTableView1id_cashdesk: TcxGridDBColumn;
    cxGrid10DBTableView1id_cd_transaction: TcxGridDBColumn;
    cxGrid10DBTableView1account_id: TcxGridDBColumn;
    cxGrid10DBTableView1confirmed: TcxGridDBColumn;
    cxGrid10DBTableView1confirmation_id_user: TcxGridDBColumn;
    cxGrid10DBTableView1id_user: TcxGridDBColumn;
    cxGrid10DBTableView1account_id_debit: TcxGridDBColumn;
    cxGrid10DBTableView1account_id_credit: TcxGridDBColumn;
    cxGrid10DBTableView1datetime: TcxGridDBColumn;
    cxGrid10DBTableView1multiple: TcxGridDBColumn;
    cxGrid10DBTableView1transaction: TcxGridDBColumn;
    cxGrid10Level1: TcxGridLevel;
    PgQuery10: TPgQuery;
    PgDataSource11: TPgDataSource;
    cxLabel9: TcxLabel;
    cbCashdesk: TcxDBLookupComboBox;
    PgDataSource8: TPgDataSource;
    PgQuery6: TPgQuery;
    PgQuery7: TPgQuery;
    PgDataSource9: TPgDataSource;
    PgQuery1: TPgQuery;
    PgQuery2: TPgQuery;
    PgSQL1: TPgSQL;
    cxGrid10DBTableView1ct_number: TcxGridDBColumn;
    cxGrid10DBTableView1name: TcxGridDBColumn;
    cxGrid10DBTableView1user_name: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGrid10DBTableView1difference: TcxGridDBColumn;
    PopupMenu_Trans: TPopupMenu;
    exporttoexcel1: TMenuItem;
    procedure cbCashdeskPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure exporttoexcel1Click(Sender: TObject);
  private
    { Private declarations }
  public

    ShiftInfo : array of TShiftInfo;
     constructor Create(AOwner: TComponent); override;
    function  GetNextCashTransactionNumber() : Integer;
    function  NextShiftNumber(TypeId : Integer) : WideString;
    procedure InitializeShifts;
    procedure ExecSQL(Q : WideString);

    { Public declarations }
  end;

var
  ListOfShiftsFrame: TListOfShiftsFrame;

implementation

uses
  uFrmMain,
  uSystem,
  uGlobals,
  uExceptions,
  uListOfCashTransactionsFrame,
  StrUtils, uExportsGrid;

{$R *.dfm}

procedure TListOfShiftsFrame.cbCashdeskPropertiesEditValueChanged(
  Sender: TObject);
begin

  InitializeShifts();

end;

 procedure TListOfShiftsFrame.ExecSQL(Q : WideString);
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
          Information('Warning', 'ExecSQL() internal error');
          Exit;
        end
        else
        begin
          HandleException(E, 'TListOfCashTransactionsFrame.ExecSQL()');
        end;
      end;
    end;
  end;

procedure TListOfShiftsFrame.exporttoexcel1Click(Sender: TObject);
begin
  inherited;
  if cxGrid10DBTableView1.ViewData.RecordCount>0 then begin
   TExportsGrid.ExportsGridToExcel(cxGrid10);
  end;
end;

constructor TListOfShiftsFrame.Create(AOwner: TComponent);
begin
  inherited;
  exporttoexcel1.Caption:= cPopMenu_eksport_toExcel;
end;

procedure TListOfShiftsFrame.cxButton2Click(Sender: TObject);
var
  QueryStr : WideString;
  SelectedRow : Integer;
  CTNr : WideString;
begin

  SelectedRow := cxGrid10DBTableView1.DataController.FocusedRowIndex;
  if SelectedRow >= 0 then
  begin

    if Question('You are about to delete shift - are you sure ?') then
    begin

    CTNr := VarToStr(cxGrid10DBTableView1.ViewData.Rows[SelectedRow].Values[5]);

    ExecSQL
    (
      'DELETE FROM tbl_cd_cash_transactions ' +
      'WHERE ct_number = ''' + CTNr + ''''
    );

    ExecSQL
    (
      'DELETE FROM tbl_cd_cash_transactions_subt ' +
      'WHERE ct_number = ''' + CTNr + ''''
    );

    ExecSQL
    (
      'DELETE FROM tbl_cd_cash_transactions_subt_categories ' +
      'WHERE ct_number = ''' + CTNr + ''''
    );

    ExecSQL
    (
      'DELETE FROM tbl_cd_cash_transactions_subt_categories_values ' +
      'WHERE ct_number = ''' + CTNr + ''''
    );

    PgQuery10.Active := False;
    PgQuery10.Active := True;

    end;

  end;

end;

function TListOfShiftsFrame.GetNextCashTransactionNumber() : Integer;
var
  QueryStr, MaxId, TempNo : String;
  i, j : Integer;
begin

  MaxId :=
    frmMain.GetFieldAsString
    (
      'select max(id) as max_id ' +
      'from tbl_cd_cash_transactions',
      'max_id'
    );

  TempNo :=
    frmMain.GetFieldAsString
    (
      'select ct_number ' +
      'from tbl_cd_cash_transactions ' +
      'where id = ' + MaxId,
      'ct_number'
    );

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

function TListOfShiftsFrame.NextShiftNumber(TypeId : Integer) : WideString;
var
  dDay, dMonth, dYear : Word;
begin

  DecodeDate(Now(), dYear, dMonth, dDay);
  Result :=
    ShiftInfo[TypeId].Mnemonic + '/' +
    IntToStr(cbCashDesk.EditValue) + '/' +
    IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' +
    IntToStr(dYear) + '/' +
    IntToStr(GetNextCashTransactionNumber());

end;

procedure TListOfShiftsFrame.InitializeShifts;
var
  QueryShiftTypes, QueryShifts : WideString;
begin

  // If Always_active -> only Change cashier & Intermediate
  // For open cash desk -> only Close, change cashier & Intermediate
  // For close cash desk -> only Open

  // Type = 3 -> Open shift
  // Type = 1 -> Close shift
  // Type = 5 -> Change cashier
  // Type = 6 -> Info

  QueryShiftTypes :=
    'select type, name, mnemonic ' +
    'from tbl_cd_cash_transactions_types ' +
    'order by type asc'; // Ordering is important !

  PgQuery1.Active := False;
  PgQuery1.SQL.Clear();
  PgQuery1.SQL.Add(QueryShiftTypes);
  PgQuery1.Active := True;
  PgQuery1.First();
  SetLength(ShiftInfo, 1);
  while not PgQuery1.Eof do
  begin
    ShiftInfo[High(ShiftInfo)].TypeId   := PgQuery1.FieldByName('type').AsInteger;
    ShiftInfo[High(ShiftInfo)].Name     := PgQuery1.FieldByName('name').AsWideString;
    ShiftInfo[High(ShiftInfo)].Mnemonic := PgQuery1.FieldByName('mnemonic').AsWideString;
    SetLength(ShiftInfo, High(ShiftInfo) + 2);
    PgQuery1.Next();
  end;
  PgQuery1.Close();

  if VarToStr(cbCashDesk.EditValue) <> '' then
  begin

    QueryShifts :=
      'select ' +
      '  types.name, ' +
      '  t.*, ' +
      '  u.user_name ' +
      'from ' +
      '  tbl_cd_cash_transactions as t, ' +
      '  tbl_cd_cash_transactions_types as types, ' +
      '  tbl_users as u ' +
      'where ' +
      '(' +
      '  t.id_cashdesk = ' + VarToStr(cbCashDesk.EditValue) +
      ')' +
      ' and ' +
      '(' +
      '  t.type in ' +
      '    (select type from tbl_cd_cash_transactions_types where is_shift = 1) ' +
      ')' +
      ' and ' +
      '   t.type = types.type and ' +
      '   t.id_user = u.id';

    PgQuery10.Active := False;
    PgQuery10.SQL.Clear();
    PgQuery10.SQL.Add(QueryShifts);
    PgQuery10.Active := True;

  end;

  // Visibility of buttons




  lbCashier2.Caption := ' Cashier: ' + frmMain.CurrentUserName;
  lbLoginTime2.Caption := ' Login time: ' + DateTimeToStr(frmMain.CurrentLoginTime, frmMain.FormatSettings);

end;

end.
