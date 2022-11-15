﻿unit uFrmMain;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uGlobals, uFrameMain, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ExtCtrls,
  Vcl.Tabs, Vcl.DockTabSet, Vcl.ComCtrls, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxInplaceContainer, Data.DB, cxTLData,
  cxDBTL, Datasnap.DBClient, dxmdaset, cxMaskEdit, cxContainer, cxEdit,
  cxTreeView, Vcl.ImgList, Vcl.Menus, cxSplitter, cxButtons, uBaseFrame, cxGrid,
  uFrameManagerThread, cxLabel, cxGridDBTableView, PgAccess, cxCalendar,
  cxPropertiesStore, cxListView, Winapi.ShlObj, cxShellCommon, cxShellControls,
  cxShellTreeView, JvExplorerBar, JvExComCtrls, JvComCtrls, JvDotNetControls,
  JvExControls, JvOutlookBar, JvLookOut, dxSkinscxPCPainter, cxPC,
  Vcl.Imaging.jpeg, dxGDIPlusClasses, cxImage, MemDS, DBAccess, Vcl.Buttons,
  strUtils, IdBaseComponent, IdComponent, IdIPWatch, JvComponentBase,
  JvComputerInfoEx, cxDBLookupComboBox, cxCheckBox, cxDBPivotGrid, cxTextEdit,
  cxDropDownEdit, cxClasses, uCdCountDropControler, uCdCountDropOperator,
  uCdCountFunctionsSpec, uCdCountTipsControler, uCdCountInput,
  uCdCountTipsOperator;

const
  FRAME_USERS = 'Users';

type
  TFrameContext = record
    Name: WideString;
    Frame: TBaseFrame;
  end;

type
  TFlowContext = record
    Name: WideString;
    Step: Integer;
  end;

type
  TFrameMessage = record
    Command: WideString;
  end;

type
  TString = class(TObject)
  private
  public
    Value: WideString;
    constructor Create(S: WideString);
  end;

type
  TInteger = class(TObject)
  private
  public
    Value: Integer;
    constructor Create(I: Integer);
  end;

type
  TShiftInfo = record
    TypeId: Integer;
    Name: WideString;
    Mnemonic: WideString;
  end;

type
  TfrmMain = class(TForm)
    StatusBar: TStatusBar;
    tvMenu: TcxTreeView;
    MenuImageList: TcxImageList;
    FrameArea: TLabel;
    Shape2: TShape;
    lbStack: TLabel;
    lbMainHeader: TcxLabel;
    cxPropertiesStore1: TcxPropertiesStore;
    btnCloseFrame: TcxButton;
    GenericQuery: TPgQuery;
    PgSQL1: TPgSQL;
    PgQuery_Execute: TPgQuery;
    IdIPWatch1: TIdIPWatch;
    ComputerInfo: TJvComputerInfoEx;
    Image1: TImage;
    MenuBackground: TImage;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    style_alarm: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvMenuDblClick(Sender: TObject);
    procedure btnCloseFrameClick(Sender: TObject);
    procedure lbStackClick(Sender: TObject);
    procedure Shape2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tvMenuCustomDraw(Sender: TCustomTreeView; const ARect: TRect;
      var DefaultDraw: Boolean);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private

    { Private declarations }

  public

    { Public declarations }

    DefaultSkinName: WideString;

    FrameTable: TStringList;

    FrameStack: array of TFrameContext;

    GridDB: TcxGridDBTableView;
    TreeListDB: TcxDBTreeList;
    Table: TPgTable;
    RefreshQuery: TPgQuery;

    FlowContext: TFlowContext;
    CurrentFlow: Integer;
    CurrentFlowStep: Integer;

    FMThread: TFrameManagerThread;
    FrameMessage: TFrameMessage;

    CurrentLang: string;
    CasinosSmallLogoFile: string;

    CurrentUserName: WideString;
    CurrentPassword: WideString;
    CurrentLoginTime: TDateTime;
    CurrentHost: WideString;
    CurrentDatabaseName: WideString;
    CurrentDBUserName: WideString;

    FormatSettings: TFormatSettings;

    ShiftInfo: array of TShiftInfo;
    FImport: TImportThread;
    procedure Refresh(Table: TPgTable); overload;
    procedure Refresh(Query: TPgQuery); overload;

    procedure HideMainWindow();

    function DoAreaLogin(Area: WideString): Boolean;
    procedure DoMainLogin();
    procedure DoLogout();

    procedure SetStatusBarText(S: WideString);

    procedure FrameStackPush(FrameName: WideString; Frame: TBaseFrame);
    function FrameStackPop(var FrameName: WideString;
      var Frame: TBaseFrame): Boolean;
    function FrameStackTop(var FrameName: WideString;
      var Frame: TBaseFrame): Boolean;
    function FrameStackPreviousTop(var FrameName: WideString;
      var Frame: TBaseFrame): Boolean;
    function FrameStackExists(FrameName: WideString; var Idx: Integer): Boolean;
    procedure FrameStackSwapWithTop(Idx: Integer);
    function CurrentFrame(): TBaseFrame;
    function CurrentFrameName(): WideString;
    function FrameStackToText(): WideString;

    function FrameNameByIdx(Idx: Integer): WideString;

    function MapAreaToObject(Area: WideString): WideString;
    procedure PrepareFramesTable();
    function CreateFrameByIdx(Idx: Integer): TBaseFrame;
    function CreateFrame(FrameName: WideString): TBaseFrame;
    procedure OpenFrame(FrameName: WideString);
    function CloseFrame(): Boolean;

    function TransactionTypeByMnemonic(M: WideString): Integer;

    procedure InitializeShifts;

    procedure CopyTransaction(BaseCTNr: WideString; CTNr: WideString;
      NewTypeId: Integer; NewCashDesk: Integer; Direction: Integer;
      Confirms: WideString; Reversed: Boolean = False;
      Confirmed: Boolean = False);

    procedure ExecSQL(Q: WideString);

    function IIf(B: Boolean; S1: WideString; S2: WideString): WideString;

    function GetFieldAsString(Q: WideString; FieldName: WideString): WideString;
    function GetFieldAsInteger(Q: WideString; FieldName: string): Integer;

    function GenerateNewNumberTransaction(Aid_caskdesk: Integer;
      Aid_type: Integer): WideString;
    function CurrentUserId(): WideString;
    // type 0 from , 1 -to
    function GetAccount(AidCashDesk: Integer; Atype: byte): TArrayOfString;

    procedure PrepareMainMenu();
    procedure ApplySkin(F: TBaseFrame; SkinName: WideString);
    procedure ReadConfigurationFromDataBase();
    function ReadIniConfiguration(var Host, DatabaseName, DBUserName,
      DBPassword: WideString): Boolean;

    procedure ReplaceCTNr(CTNr, NewCTNr, Table: WideString);

    function ParseExpression(DisplayValue: WideString;
      var Error: WideString): Integer;

    procedure ReadParametres();

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uSystem,
  uExceptions,
  uConfiguration,
  uPermissions,
  uFrmUserLogin,
  uDatabase,
  uFrmDatabase,
  uSystemParametersFrame,
  uReportsFrame,
  gnugettext,
  uListOfAccountsFrame,
  uListOfAmountChangesFrame,
  uListOfCashDesksFrame,
  uListOfCashDeskUsersFrame,
  uListOfCashDeskWorkstationsFrame,
  uListOfCategoriesFrame,
  uListOfChipBalancesFrame,
  uListOfCurrenciesExchangeRatesFrame,
  uListOfCurrenciesFrame,
  uListOfDifferenceCategoriesFrame,
  uListOfGroupsFrame,
  // uListOfGroupsPermissionsFrame,
  uListOfMultipleTransactionsFrame,
  uListOfObjectsFrame,
  uListOfPermissionsFrame,
  uListOfTransactionsFrame,
  uListOfUnitsFrame,
  uListOfUsersFrame,
  uListOfUserGroupsFrame,
  uListOfValuesFrame,
  uListOfWorkstationsFrame,
  uListOfGroupsPermissionsObjectsFrame,
  uListOfCashTransactionsFrame,
  uListOfShiftsFrame,
  uAddAccountFrame,
  uAddAmountChangeFrame,
  uAddCashDeskFrame,
  uAddCategoryFrame,
  uAddChipBalanceFrame,
  uAddCurrencyFrame,
  uAddCurrencyExchangeRateFrame,
  uAddDifferenceCategoryFrame,
  uAddGroupFrame,
  uAddGroupPermissionObjectFrame,
  uAddMultipleTransactionFrame,
  uAddPermissionFrame,
  uAddUnitFrame,
  uAddUserFrame,
  uAddUserGroupFrame,
  uAddValueFrame,
  uAddUserToCashDeskFrame,
  uAddWorkstationToCashDeskFrame,
  uAddWorkstationFrame,
  uAddTransactionFrame,
  uAddCashTransactionFrame,
  uAddShiftFrame,
  UListofStatisticCategoryFrame,
  ustlistofCategory,
  uModifyEntryStatistic,
  uShiftsExplanation,
  uListOfSpecialBooks,
  uPrintManager,
  uCountModuleFrame,
  uListOfTablesCounts,
  uImportTransactions,
  uFrmBaseDialog,
  uCdCountDates,
  uCdCountTips,
  uChipsAmuntChangesHistory,
  uChipsBalanceConfig,
  uChipsBalanceDaily,
  uChipsBalanceReport,
  uChipsInitials,
  uChipsSelectShift,
  uReportPreview,
  uReportShiftPreview,
  uReportTicket,
  uReportBalance,
  uShiftAndCountingFrame,
  INIFiles,
  ListOfOldKivosReport,
  uCashShortCutManager,
  uChangePasswordFrame;

function TfrmMain.ParseExpression(DisplayValue: WideString;
  var Error: WideString): Integer;

const
  TT_OPERATOR = 1;
  TT_NUMBER = 2;

type
  TToken = record
    TokenType: Integer;
    TokenValue: WideString;
    NumberValue: Integer;
  end;

var
  I, DeepCount: Integer;
  S, Token: WideString;
  C: WideChar;
  Tokens: array of TToken;

  function GetNumberToken(S: WideString; StartPos: Integer;
    var Token: WideString): Integer;
  var
    I: Integer;
    S2: WideString;
  begin
    S2 := '';
    I := StartPos;
    while S[I] in ['0' .. '9'] do
    begin
      S2 := S2 + S[I];
      Inc(I);
      if (I > Length(S)) then
        Break;
    end;
    Token := S2;
    Result := I;
  end;

  function GetOperatorToken(S: WideString; StartPos: Integer;
    var Token: WideString): Integer;
  var
    I: Integer;
    S2: WideString;
  begin
    S2 := '';
    I := StartPos;
    while S[I] in ['+', '-'] do
    begin
      S2 := S2 + S[I];
      Inc(I);
      if (I > Length(S)) then
        Break;
    end;
    Token := S2;
    Result := I;
  end;

  function SkipWhiteChars(S: WideString; StartPos: Integer): Integer;
  var
    I: Integer;
  begin
    I := StartPos;
    while S[I] in [' '] do
    begin
      Inc(I);
      if (I > Length(S)) then
        Break;
    end;
    Result := I;
  end;

  procedure PushToken(TokenType: Integer; TokenValue: WideString;
    NumberValue: Integer);
  begin
    SetLength(Tokens, Length(Tokens) + 1);
    Tokens[Length(Tokens) - 1].TokenType := TokenType;
    Tokens[Length(Tokens) - 1].TokenValue := TokenValue;
    Tokens[Length(Tokens) - 1].NumberValue := NumberValue;
  end;

begin
  SetLength(Tokens, 0);
  S := DisplayValue;
  I := SkipWhiteChars(S, 1);
  while I <= Length(S) do
  begin
    C := S[I];
    if C in ['0' .. '9'] then
    begin
      I := GetNumberToken(S, I, Token);
      PushToken(TT_NUMBER, Token, StrToInt(Token));
    end
    else if C in ['+', '-'] then
    begin
      I := GetOperatorToken(S, I, Token);
      PushToken(TT_OPERATOR, Token, 0);
    end
    else
    begin
      Error := 'Parser error at position #' + IntToStr(I) + ': [' +
        Copy(S, 1, I + 1) + ']';
      Result := 0;
      Exit;
    end;
    if (I > Length(S)) then
      Break;
    I := SkipWhiteChars(S, I);
  end;

  DeepCount := 1;
  while (Length(Tokens) > 1) and (DeepCount <= 10000) do
  begin
    if (Tokens[Length(Tokens) - 1 - 1].TokenType = TT_OPERATOR) then
    begin
      if (Tokens[Length(Tokens) - 1 - 1].TokenValue = '+') then
      begin
        Tokens[Length(Tokens) - 2 - 1].NumberValue :=
          Tokens[Length(Tokens) - 2 - 1].NumberValue +
          Tokens[Length(Tokens) - 1].NumberValue;
        SetLength(Tokens, Length(Tokens) - 2);
      end
      else if (Tokens[Length(Tokens) - 1 - 1].TokenValue = '-') then
      begin
        Tokens[Length(Tokens) - 2 - 1].NumberValue :=
          Tokens[Length(Tokens) - 2 - 1].NumberValue -
          Tokens[Length(Tokens) - 1].NumberValue;
        SetLength(Tokens, Length(Tokens) - 2);
      end
      else
      begin
        Error := 'Unknown operator ''' + Tokens[Length(Tokens) - 1]
          .TokenValue + '''';
        Result := 0;
        Exit;
      end;
    end;
    if (Length(Tokens) = 1) then
      Break; // while
    Inc(DeepCount);
  end;

  if DeepCount >= 10000 then
  begin
    Error := 'Unable to calculate expression. Syntax error.';
    Result := 0;
    Exit;
  end
  else
  begin
    Result := Tokens[0].NumberValue;
  end;
end;

procedure TfrmMain.ReplaceCTNr(CTNr, NewCTNr, Table: WideString);
begin
  frmMain.ExecSQL('update ' + Table + ' ' + 'set ct_number = ' + NewCTNr + ' ' +
    'where ct_number = ' + CTNr);
end;

function TfrmMain.ReadIniConfiguration(var Host, DatabaseName, DBUserName,
  DBPassword: WideString): Boolean;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'config.ini');
  try
    Host := IniFile.ReadString('Database', 'Server', '');
    DatabaseName := IniFile.ReadString('Database', 'Database', '');
    DBUserName := IniFile.ReadString('Database', 'User', '');
    DBPassword := IniFile.ReadString('Database', 'Password', '');
    Result := True;
  except
    on E: Exception do
    begin
      Result := False;
    end
  end;
  IniFile.Free();
end;

procedure TfrmMain.ReadParametres;
begin
  PgQuery_Execute.SQL.Text := 'select * from tbl_parametres';
  PgQuery_Execute.Open;
  if not PgQuery_Execute.IsEmpty then
  begin
    CurrentLang := PgQuery_Execute.FieldByName('CurrentLang').AsString;
    CasinosSmallLogoFile := PgQuery_Execute.FieldByName
      ('casinossmalllogofile').AsString;
  end;
  PgQuery_Execute.Close;
end;

// ------------------------------------------------------------------------------

constructor TString.Create(S: WideString);
begin
  Value := S;
end;

// ------------------------------------------------------------------------------

constructor TInteger.Create(I: Integer);
begin
  Value := I;
end;

// ------------------------------------------------------------------------------

procedure TfrmMain.SetStatusBarText(S: WideString);
begin
  StatusBar.Panels[0].Text := S;
end;

procedure TfrmMain.Shape2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

// ------------------------------------------------------------------------------

procedure TfrmMain.Refresh(Table: TPgTable);
begin
  Table.Active := False;
  Table.Active := True;
end;

procedure TfrmMain.ReadConfigurationFromDataBase;
var
  xDataSet: TResultHandle;
  xGuid: TGUID;
begin
  xDataSet := TResultHandle.Create;
  xDataSet.ClearResult;
  xDataSet.Add('Select * from tbl_parametres ');
  xDataSet.InvokeSQL;
  xDataSet.First;
  if xDataSet.Count > 0 then
  begin
    AutomaticImport := Boolean(xDataSet.Query.FieldByName('import').AsInteger);
    AutomaticTimeOut := xDataSet.Query.FieldByName('timeout').AsInteger;
    AlertExchangeRate := xDataSet.Query.FieldByName('AlertCurr').AsFloat;
    Difference := xDataSet.Query.FieldByName('Diffrence').AsFloat;
    DefaultCurrency := xDataSet.Query.FieldByName('id_currency').AsInteger;
    AidWorkStation := xDataSet.Query.FieldByName('idWorkStation').AsString;
  end;
  xDataSet.ClearResult;
  xDataSet.Free;
  CreateGUID(xGuid);
  SessionGuid := GUIDToString(xGuid);
  // Unikalna zmienna w ramach danej sesji użytkownika
end;

procedure TfrmMain.Refresh(Query: TPgQuery);
begin
  Query.Active := False;
  Query.Active := True;
end;

// ------------------------------------------------------------------------------
//
// Frame manager
//
// ------------------------------------------------------------------------------

procedure TfrmMain.FrameStackPush(FrameName: WideString; Frame: TBaseFrame);
begin
  SetLength(FrameStack, Length(FrameStack) + 1);
  FrameStack[Length(FrameStack) - 1].Name := FrameName;
  FrameStack[Length(FrameStack) - 1].Frame := Frame;
end;

function TfrmMain.FrameStackPop(var FrameName: WideString;
  var Frame: TBaseFrame): Boolean;
begin
  if Length(FrameStack) > 0 then
  begin
    Result := True;
    FrameName := FrameStack[Length(FrameStack) - 1].Name;
    Frame := FrameStack[Length(FrameStack) - 1].Frame;
    SetLength(FrameStack, Length(FrameStack) - 1);
  end
  else
  begin
    FrameName := '';
    Frame := nil;
    Result := False;
  end;
end;

function TfrmMain.FrameStackTop(var FrameName: WideString;
  var Frame: TBaseFrame): Boolean;
begin
  if Length(FrameStack) > 0 then
  begin
    Result := True;
    FrameName := FrameStack[Length(FrameStack) - 1].Name;
    Frame := FrameStack[Length(FrameStack) - 1].Frame;
  end
  else
  begin
    FrameName := '';
    Frame := nil;
    Result := False;
  end;
end;

function TfrmMain.FrameStackPreviousTop(var FrameName: WideString;
  var Frame: TBaseFrame): Boolean;
begin
  if Length(FrameStack) > 1 then
  begin
    Result := True;
    FrameName := FrameStack[Length(FrameStack) - 2].Name;
    Frame := FrameStack[Length(FrameStack) - 2].Frame;
  end
  else
  begin
    FrameName := '';
    Frame := nil;
    Result := False;
  end;
end;

function TfrmMain.FrameStackExists(FrameName: WideString;
  var Idx: Integer): Boolean;
var
  I: Integer;
begin
  Result := False;
  Idx := -1;
  for I := 1 to Length(FrameStack) do
  begin
    if FrameStack[I - 1].Name = FrameName then
    begin
      Result := True;
      Idx := I;
      Exit;
    end;
  end;
end;

procedure TfrmMain.FrameStackSwapWithTop(Idx: Integer);
var
  TmpFrame: TBaseFrame;
  TmpFrameName: WideString;
begin
  if Idx > 0 then
  begin
    TmpFrame := FrameStack[Idx].Frame;
    TmpFrameName := FrameStack[Idx].Name;
    FrameStack[Idx].Frame := FrameStack[Length(FrameStack) - 1].Frame;
    FrameStack[Idx].Name := FrameStack[Length(FrameStack) - 1].Name;
    FrameStack[Length(FrameStack) - 1].Frame := TmpFrame;
    FrameStack[Length(FrameStack) - 1].Name := TmpFrameName;
  end;
end;

function TfrmMain.CurrentFrame(): TBaseFrame;
begin
  Result := nil;
  if Length(FrameStack) > 0 then
  begin
    Result := FrameStack[Length(FrameStack) - 1].Frame;
  end;
end;

function TfrmMain.CurrentFrameName(): WideString;
begin
  Result := '';
  if Length(FrameStack) > 0 then
  begin
    Result := FrameStack[Length(FrameStack) - 1].Name;
  end;
end;

function TfrmMain.CurrentUserId(): WideString;
begin
  Result := GetFieldAsString('select id from tbl_users ' + 'where user_name = '
    + QuotedStr(CurrentUserName), 'id');
end;

procedure TfrmMain.cxComboBox1PropertiesChange(Sender: TObject);
var
  I: Integer;
begin
  DefaultSkinName := cxComboBox1.Text;
  // Opened frames
  for I := 1 to Length(FrameStack) do
  begin
    ApplySkin(FrameStack[I - 1].Frame, DefaultSkinName);
  end;
end;

function TfrmMain.FrameStackToText(): WideString;
var
  I: Integer;
begin
  Result := ''; // '[';
  for I := 1 to Length(FrameStack) do
  begin
    Result := Result + FrameStack[I - 1].Name;
    if I < Length(FrameStack) then
    begin
      Result := Result + ' -> ';
    end;
  end;
  Result := Result; // + ']';
end;

function TfrmMain.MapAreaToObject(Area: WideString): WideString;
var
  TmpIdx, Idx: Integer;
begin
  TmpIdx := FrameTable.IndexOf(Area);
  Idx := TInteger(FrameTable.Objects[TmpIdx]).Value;
  case Idx of
    1:
      Result := 'Frame.Users';
    2:
      Result := 'Frame.Groups';
    3:
      Result := 'Frame.UsersGroups';
    4:
      Result := 'Frame.Accounts';
    5:
      Result := 'Frame.AmountChanges';
    6:
      Result := 'Frame.CashDesks';
    7:
      Result := 'Frame.CashDeskUsers';
    8:
      Result := 'Frame.CashDeskWorkstations';
    9:
      Result := 'Frame.Categories';
    10:
      Result := 'Frame.ChipBalances';
    11:
      Result := 'Frame.Currencies';
    12:
      Result := 'Frame.ExchangeRates';
    13:
      Result := 'Frame.DifferenceCategories';
    14:
      Result := 'Frame.GroupPermissions';
    // 15 : Result := 'Frame.MultiplyTransactions';
    16:
      Result := 'Frame.Permissions';
    17:
      Result := 'Frame.Units';
    18:
      Result := 'Frame.Values';
    19:
      Result := 'Frame.Workstations';
    20:
      Result := 'Frame.SystemParameters';
    21:
      Result := 'Frame.Reports';
    22:
      Result := 'Frame.GroupsPermissionsObjects';
    23:
      Result := 'Frame.Objects';
    // 24:
    // Result := 'Frame.Transactions';
    25:
      Result := 'Frame.MultipleTransactions';
    26:
      Result := 'Frame.CashTransactions';
    27:
      Result := 'Frame.Shifts';
    28:
      Result := 'Frame.Statistics';

    50:
      Result := 'Frame.AddAccount';
    51:
      Result := 'Frame.AddAmountChange';
    52:
      Result := 'Frame.AddCashDesk';
    53:
      Result := 'Frame.AddCategory';
    54:
      Result := 'Frame.AddChipBalance';
    55:
      Result := 'Frame.AddCurrency';
    56:
      Result := 'Frame.AddDifferenceCategory';
    57:
      Result := 'Frame.AddGroup';
    58:
      Result := 'Frame.AddGroupPermissionObject';
    // 59 : Result := 'Frame.AddMultiplyTransaction';
    60:
      Result := 'Frame.AddPermission';
    61:
      Result := 'Frame.AddUnit';
    62:
      Result := 'Frame.AddUser';
    63:
      Result := 'Frame.AddValue';
    64:
      Result := 'Frame.AddUserGroup';
    65:
      Result := 'Frame.AddCurrencyExchangeRate';
    66:
      Result := 'Frame.AddUserToCashDesk';
    67:
      Result := 'Frame.AddWorkstationToCashDesk';
    68:
      Result := 'Frame.AddWorkstation';
    69:
      Result := 'Frame.AddTransaction';
    70:
      Result := 'Frame.AddMultipleTransaction';
    71:
      Result := 'Frame.AddCashTransaction';
    72:
      Result := 'Frame.AddShift';
    73:
      Result := 'Frame.AddSCategory';
    74:
      Result := 'Frame.ModifyEntry';
    75:
      Result := 'Frame.ShiftsExplanation';
    76:
      Result := 'Frame.ListOfStatisticCategory';
    77:
      Result := 'Frame.Categories';
    78:
      Result := 'Frame.uSpecialBooks';
    79:
      Result := 'Frame.PrintManager';
    80:
      Result := 'Frame.CountModule';
    81:
      Result := 'Frame.Transaktionen.';
    82:
      Result := 'Frame.TableCounts';
    83:
      Result := 'Frame.SlotCounts';
    84:
      Result := 'Frame.AdvancedReports';
    85:
      Result := 'Frame.CashShortCutManager';

    500:
      Result := 'Frame.ChipsBalanceConfig';
    501:
      Result := 'Frame.ChipsInitials';
    502:
      Result := 'Frame.ChipsAmuntChangesHistory';
    503:
      Result := 'Frame.ChipsSelectShift';
    504:
      Result := 'Frame.ChipsBalanceReport';
    // 505 : Result := 'Frame.BalanceCategorisation';

    599:
      Result := 'Frame.CdCountDropControler';
    600:
      Result := 'Frame.CdCountDropOperator';
    601:
      Result := 'Frame.CdCountTipsOperator';
    602:
      Result := 'Frame.CdCountTipsControler';
    603:
      Result := 'Frame.CdCountFunctionsSpec';

    100:
      Result := 'Frame.ReportPreview';
    101:
      Result := 'Frame.ReportTicket';
    102:
      Result := 'Frame.ReportBalancePreview';
    103:
      Result := 'Frame.ShiftsAndCounting';
    104:
      Result := 'Frame.Temporary';

    700:
      Result := 'Frame.ChangePassword';
  end;
end;

// WARNING:
// Procedure below must be synchronized with TfrmMain.CreateFrameByIdx()

function TfrmMain.FrameNameByIdx(Idx: Integer): WideString;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to FrameTable.Count do
  begin
    if (FrameTable.Objects[I] as TInteger).Value = Idx then
    begin
      Result := FrameTable.Strings[I];
      Exit;
    end;
  end;
end;

procedure TfrmMain.PrepareFramesTable();
var
  RetVal: Integer;
begin

  Self.FrameTable := TStringList.Create();

  Self.FrameTable.Clear();

    Self.FrameTable.AddObject('Benutzer', TInteger.Create(1));
    Self.FrameTable.AddObject('Gruppen', TInteger.Create(2));
    Self.FrameTable.AddObject('Benutzer zu Gruppen', TInteger.Create(3));
    Self.FrameTable.AddObject('Kontenplan', TInteger.Create(4));
    Self.FrameTable.AddObject('Amount changes', TInteger.Create(5));
    Self.FrameTable.AddObject('Kassen', TInteger.Create(6));
    Self.FrameTable.AddObject('Benutzer & Kassen', TInteger.Create(7));
    Self.FrameTable.AddObject('Computer & Kassen', TInteger.Create(8));
    Self.FrameTable.AddObject('Kategorien', TInteger.Create(9));
    Self.FrameTable.AddObject('Chip balances', TInteger.Create(10));
    Self.FrameTable.AddObject('Währungen', TInteger.Create(11));
    Self.FrameTable.AddObject('Wechselkurs', TInteger.Create(12));
    Self.FrameTable.AddObject('Differenzkategorien', TInteger.Create(13));
    // Self.FrameTable.AddObject('Gruppenrechte', TInteger.Create(14));
    // Self.FrameTable.AddObject('Multiple opérations', TInteger.Create(15));
    Self.FrameTable.AddObject('Rechte', TInteger.Create(16));
    Self.FrameTable.AddObject('Einheiten', TInteger.Create(17));
    Self.FrameTable.AddObject('Werte', TInteger.Create(18));
    Self.FrameTable.AddObject('Computer', TInteger.Create(19));
    Self.FrameTable.AddObject('Systemeinstellungen.', TInteger.Create(20));
    Self.FrameTable.AddObject('Berichte', TInteger.Create(21));
    // Self.FrameTable.AddObject('Groupes, Perm., Obj.', TInteger.Create(22));
    Self.FrameTable.AddObject('Gruppenrechte', TInteger.Create(22));
    Self.FrameTable.AddObject('Objekte', TInteger.Create(23));

    Self.FrameTable.AddObject('Mehrfachtransaktionen', TInteger.Create(25));
    Self.FrameTable.AddObject('Kasse transaktionen', TInteger.Create(26));
    Self.FrameTable.AddObject('Changements', TInteger.Create(27));
    Self.FrameTable.AddObject('Category', TInteger.Create(28));

    Self.FrameTable.AddObject('Ajouter un compte', TInteger.Create(50));
    Self.FrameTable.AddObject('Ajouter montant changement', TInteger.Create(51));
    Self.FrameTable.AddObject('Ajouter caisse', TInteger.Create(52));
    Self.FrameTable.AddObject('Ajouter une catégorie', TInteger.Create(53));
    Self.FrameTable.AddObject('Add chip balance', TInteger.Create(54));
    Self.FrameTable.AddObject('Ajouter devise', TInteger.Create(55));
    Self.FrameTable.AddObject('Ajouter une catégorie de différence',
    TInteger.Create(56));
    Self.FrameTable.AddObject('Ajouter un groupe', TInteger.Create(57));
    Self.FrameTable.AddObject('Ajouter objet d''autorisation groupe',
    TInteger.Create(58));
    // Self.FrameTable.AddObject('Ajouter multiple transaction', TInteger.Create(59));
    Self.FrameTable.AddObject('Ajouter la permission', TInteger.Create(60));
    Self.FrameTable.AddObject('Ajouter l''unité', TInteger.Create(61));
    Self.FrameTable.AddObject('Ajouter un utilisateur', TInteger.Create(62));
    Self.FrameTable.AddObject('Ajouter un valeur', TInteger.Create(63));
    Self.FrameTable.AddObject('Ajouter un groupe d''utilisateur',
    TInteger.Create(64));
    Self.FrameTable.AddObject('Ajouter taux de change', TInteger.Create(65));
    Self.FrameTable.AddObject('Ajouter un utilisateur à caisse',
    TInteger.Create(66));
    Self.FrameTable.AddObject('Ajouter un ordinateur à caisse',
    TInteger.Create(67));
    Self.FrameTable.AddObject('Ajouter un ordinateur', TInteger.Create(68));
    Self.FrameTable.AddObject('Hinzufügen Transaktion', TInteger.Create(69));
    Self.FrameTable.AddObject('Hinzufügen Multiple Transaktion multiple',
    TInteger.Create(70));
    Self.FrameTable.AddObject('Hinzufügen Cash-Transaktion', TInteger.Create(71));
    Self.FrameTable.AddObject('Ajouter shift', TInteger.Create(72));
    Self.FrameTable.AddObject('Eingabe', TInteger.Create(73));
    Self.FrameTable.AddObject('Eingabeänderungen', TInteger.Create(74));
    Self.FrameTable.AddObject('Schichtkategorisierung', TInteger.Create(75));
    Self.FrameTable.AddObject('Konfiguration', TInteger.Create(77));
    Self.FrameTable.AddObject('Spezialbuchungen', TInteger.Create(78));
    Self.FrameTable.AddObject('Druckmanager', TInteger.Create(79));
    Self.FrameTable.AddObject('Count module', TInteger.Create(80));
    Self.FrameTable.AddObject('Transaktionen.', TInteger.Create(81));
    Self.FrameTable.AddObject('Erweitertes Reporting', TInteger.Create(84));
    Self.FrameTable.AddObject('Abkürzungmanager', TInteger.Create(85));

    Self.FrameTable.AddObject('Configuration Chip balance', TInteger.Create(500));
    Self.FrameTable.AddObject('Initiale Werteeingabe', TInteger.Create(501));
    Self.FrameTable.AddObject('Jour d.j. chip balance', TInteger.Create(502));
    Self.FrameTable.AddObject('Spieltagbericht', TInteger.Create(503));
    Self.FrameTable.AddObject('Chip Balance Bericht', TInteger.Create(504));
    Self.FrameTable.AddObject('Schichtkategorisierung', TInteger.Create(505));

    Self.FrameTable.AddObject('Dropzählung Controller', TInteger.Create(599));
    Self.FrameTable.AddObject('Dropzählung Operator', TInteger.Create(600));
    Self.FrameTable.AddObject('Trinkgeldzählung Operator', TInteger.Create(601));
    Self.FrameTable.AddObject('Trinkgeldzählung Controller',
    TInteger.Create(602));
    Self.FrameTable.AddObject('Andere Funktionen', TInteger.Create(603));

    Self.FrameTable.AddObject('ReportPreview', TInteger.Create(100));
    Self.FrameTable.AddObject('ReportTicket', TInteger.Create(101));
    Self.FrameTable.AddObject('ReportBalancePreview', TInteger.Create(102));
    Self.FrameTable.AddObject('Shifts and counting', TInteger.Create(103));
    Self.FrameTable.AddObject('temporary', TInteger.Create(104));

    Self.FrameTable.AddObject('Change password', TInteger.Create(700));

  // =======================France start==============================
 { Self.FrameTable.AddObject('Utilisateurs', TInteger.Create(1));
  Self.FrameTable.AddObject('Groupes', TInteger.Create(2));
  Self.FrameTable.AddObject('Utilisateurs - groupes', TInteger.Create(3));
  Self.FrameTable.AddObject('Comptes', TInteger.Create(4));
  Self.FrameTable.AddObject('Amount changes', TInteger.Create(5));
  Self.FrameTable.AddObject('Configuration caisses', TInteger.Create(6));
  Self.FrameTable.AddObject('Utilisateurs - caisses', TInteger.Create(7));
  Self.FrameTable.AddObject('Ordinateures & caisses', TInteger.Create(8));
  Self.FrameTable.AddObject('Categories', TInteger.Create(9));
  Self.FrameTable.AddObject('Chip balances', TInteger.Create(10));
  Self.FrameTable.AddObject('Währungen', TInteger.Create(11));
  Self.FrameTable.AddObject('Wechselkurs', TInteger.Create(12));
  Self.FrameTable.AddObject('Différence catégories', TInteger.Create(13));
  // Self.FrameTable.AddObject('Gruppenrechte', TInteger.Create(14));
  // Self.FrameTable.AddObject('Multiple opérations', TInteger.Create(15));
  Self.FrameTable.AddObject('Autorisations', TInteger.Create(16));
  Self.FrameTable.AddObject('Unites', TInteger.Create(17));
  Self.FrameTable.AddObject('Valeurs', TInteger.Create(18));
  Self.FrameTable.AddObject('Ordinateures', TInteger.Create(19));
  Self.FrameTable.AddObject('Parameters du systeme.', TInteger.Create(20));
  Self.FrameTable.AddObject('Rapports', TInteger.Create(21));
  // Self.FrameTable.AddObject('Groupes, Perm., Obj.', TInteger.Create(22));
  Self.FrameTable.AddObject('Groupe autorisations', TInteger.Create(22));
  Self.FrameTable.AddObject('Objets', TInteger.Create(23));

  Self.FrameTable.AddObject('Multiple opérations', TInteger.Create(25));
  Self.FrameTable.AddObject('Caisses Transaction', TInteger.Create(26));
  Self.FrameTable.AddObject('Changements', TInteger.Create(27));
  Self.FrameTable.AddObject('Category', TInteger.Create(28));

  Self.FrameTable.AddObject('Ajouter un compte', TInteger.Create(50));
  Self.FrameTable.AddObject('Ajouter montant changement', TInteger.Create(51));
  Self.FrameTable.AddObject('Ajouter caisse', TInteger.Create(52));
  Self.FrameTable.AddObject('Ajouter une catégorie', TInteger.Create(53));
  Self.FrameTable.AddObject('Add chip balance', TInteger.Create(54));
  Self.FrameTable.AddObject('Ajouter devise', TInteger.Create(55));
  Self.FrameTable.AddObject('Ajouter une catégorie de différence',
    TInteger.Create(56));
  Self.FrameTable.AddObject('Ajouter un groupe', TInteger.Create(57));
  Self.FrameTable.AddObject('Ajouter objet d''autorisation groupe',
    TInteger.Create(58));
  // Self.FrameTable.AddObject('Ajouter multiple transaction', TInteger.Create(59));
  Self.FrameTable.AddObject('Ajouter la permission', TInteger.Create(60));
  Self.FrameTable.AddObject('Ajouter l''unité', TInteger.Create(61));
  Self.FrameTable.AddObject('Ajouter un utilisateur', TInteger.Create(62));
  Self.FrameTable.AddObject('Ajouter un valeur', TInteger.Create(63));
  Self.FrameTable.AddObject('Ajouter un groupe d''utilisateur',
    TInteger.Create(64));
  Self.FrameTable.AddObject('Ajouter taux de change', TInteger.Create(65));
  Self.FrameTable.AddObject('Ajouter un utilisateur à caisse',
    TInteger.Create(66));
  Self.FrameTable.AddObject('Ajouter un ordinateur à caisse',
    TInteger.Create(67));
  Self.FrameTable.AddObject('Ajouter un ordinateur', TInteger.Create(68));
  Self.FrameTable.AddObject('Hinzufügen Transaktion', TInteger.Create(69));
  Self.FrameTable.AddObject('Hinzufügen Multiple Transaktion multiple',
    TInteger.Create(70));
  Self.FrameTable.AddObject('Hinzufügen Cash-Transaktion', TInteger.Create(71));
  Self.FrameTable.AddObject('Ajouter shift', TInteger.Create(72));
  Self.FrameTable.AddObject('Entrée statistiques', TInteger.Create(73));
  Self.FrameTable.AddObject('Modifier des entrées', TInteger.Create(74));
  Self.FrameTable.AddObject('Shift explication', TInteger.Create(75));
  Self.FrameTable.AddObject('Configuration', TInteger.Create(77));
  Self.FrameTable.AddObject('Comptabilisation speciaux', TInteger.Create(78));
  Self.FrameTable.AddObject('Imprimer gestionnaire', TInteger.Create(79));
  Self.FrameTable.AddObject('Count module', TInteger.Create(80));
  Self.FrameTable.AddObject('Transactions.', TInteger.Create(81));
  Self.FrameTable.AddObject('Reporting avancé', TInteger.Create(84));
  Self.FrameTable.AddObject('Gestionnaire de raccourci', TInteger.Create(85));

  Self.FrameTable.AddObject('Config. Chip Balance', TInteger.Create(500));
  Self.FrameTable.AddObject('Valeurs initiales', TInteger.Create(501));
  Self.FrameTable.AddObject('Jour d.j. chip balance', TInteger.Create(502));
  Self.FrameTable.AddObject('Chip Balance jour de jeux', TInteger.Create(503));
  Self.FrameTable.AddObject('Chip Balance Bericht', TInteger.Create(504));
  Self.FrameTable.AddObject('Schichtkategorisierung', TInteger.Create(505));

  Self.FrameTable.AddObject('Comptage Drop Controller', TInteger.Create(599));
  Self.FrameTable.AddObject('Comptage Drop Operateur', TInteger.Create(600));
  Self.FrameTable.AddObject('Comptage Pourboire Operateur',
    TInteger.Create(601));
  Self.FrameTable.AddObject('Comptage Pourboire Controller',
    TInteger.Create(602));
  Self.FrameTable.AddObject('Controller menu', TInteger.Create(603));

  Self.FrameTable.AddObject('ReportPreview', TInteger.Create(100));
  Self.FrameTable.AddObject('ReportTicket', TInteger.Create(101));
  Self.FrameTable.AddObject('ReportBalancePreview', TInteger.Create(102));
  Self.FrameTable.AddObject('Shifts and counting', TInteger.Create(103));
  Self.FrameTable.AddObject('temporary', TInteger.Create(104));
  Self.FrameTable.AddObject('Statistique Configuration', TInteger.Create(76));
  // =======================France end ==============================
   }
  {
    Self.FrameTable.AddObject('Users', TInteger.Create(1));
    Self.FrameTable.AddObject('Groups', TInteger.Create(2));
    Self.FrameTable.AddObject('Users - Groups', TInteger.Create(3));
    Self.FrameTable.AddObject('Accounts', TInteger.Create(4));
    Self.FrameTable.AddObject('Amount changes', TInteger.Create(5));
    Self.FrameTable.AddObject('Cash desks', TInteger.Create(6));
    Self.FrameTable.AddObject('CD users', TInteger.Create(7));
    Self.FrameTable.AddObject('CD workstations', TInteger.Create(8));
    Self.FrameTable.AddObject('Categories', TInteger.Create(9));
    Self.FrameTable.AddObject('Chip balances', TInteger.Create(10));
    Self.FrameTable.AddObject('Currencies', TInteger.Create(11));
    Self.FrameTable.AddObject('Exchange rates', TInteger.Create(12));
    Self.FrameTable.AddObject('Difference categories', TInteger.Create(13));
    Self.FrameTable.AddObject('Group permissions', TInteger.Create(14));
    Self.FrameTable.AddObject('Multiply transactions', TInteger.Create(15));
    Self.FrameTable.AddObject('Permissions', TInteger.Create(16));
    Self.FrameTable.AddObject('Units', TInteger.Create(17));
    Self.FrameTable.AddObject('Values', TInteger.Create(18));
    Self.FrameTable.AddObject('Workstations', TInteger.Create(19));
    Self.FrameTable.AddObject('System parameters', TInteger.Create(20));
    Self.FrameTable.AddObject('Reports', TInteger.Create(21));
    Self.FrameTable.AddObject('Groups, Perm., Obj.', TInteger.Create(22));
    Self.FrameTable.AddObject('Objects', TInteger.Create(23));
    //Self.FrameTable.AddObject('Transactions', TInteger.Create(24));
    Self.FrameTable.AddObject('Multiple transactions', TInteger.Create(25));
    Self.FrameTable.AddObject('Cash transactions', TInteger.Create(26));

    Self.FrameTable.AddObject('Shifts', TInteger.Create(27));
    Self.FrameTable.AddObject('Category', TInteger.Create(28));

    Self.FrameTable.AddObject('Add account', TInteger.Create(50));
    Self.FrameTable.AddObject('Add amount change', TInteger.Create(51));
    Self.FrameTable.AddObject('Add cash desk', TInteger.Create(52));
    Self.FrameTable.AddObject('Add category', TInteger.Create(53));
    Self.FrameTable.AddObject('Add chip balance', TInteger.Create(54));
    Self.FrameTable.AddObject('Add currency', TInteger.Create(55));
    Self.FrameTable.AddObject('Add difference category', TInteger.Create(56));
    Self.FrameTable.AddObject('Add group', TInteger.Create(57));
    Self.FrameTable.AddObject('Add group permission object', TInteger.Create(58));
    Self.FrameTable.AddObject('Add multiply transaction', TInteger.Create(59));
    Self.FrameTable.AddObject('Add permission', TInteger.Create(60));
    Self.FrameTable.AddObject('Add unit', TInteger.Create(61));
    Self.FrameTable.AddObject('Add user', TInteger.Create(62));
    Self.FrameTable.AddObject('Add value', TInteger.Create(63));
    Self.FrameTable.AddObject('Add user group', TInteger.Create(64));
    Self.FrameTable.AddObject('Add currency exchange rate', TInteger.Create(65));
    Self.FrameTable.AddObject('Add user to cash desk', TInteger.Create(66));
    Self.FrameTable.AddObject('Add workstation to cash desk', TInteger.Create(67));
    Self.FrameTable.AddObject('Add workstation', TInteger.Create(68));
    Self.FrameTable.AddObject('Add transaction', TInteger.Create(69));
    Self.FrameTable.AddObject('Add multiple transaction', TInteger.Create(70));
    Self.FrameTable.AddObject('Add cash transaction', TInteger.Create(71));
    Self.FrameTable.AddObject('Add shift', TInteger.Create(72));
    Self.FrameTable.AddObject('Entry', TInteger.Create(73));
    Self.FrameTable.AddObject('Modify entry', TInteger.Create(74));
    Self.FrameTable.AddObject('Shifts explanation', TInteger.Create(75));
    Self.FrameTable.AddObject('Categories', TInteger.Create(77));
    Self.FrameTable.AddObject('Special books & reverse', TInteger.Create(78));
    Self.FrameTable.AddObject('Print manager', TInteger.Create(79));
    Self.FrameTable.AddObject('Count module', TInteger.Create(80));
    Self.FrameTable.AddObject('Transactions.', TInteger.Create(81));
    Self.FrameTable.AddObject('Table counts', TInteger.Create(82));
    Self.FrameTable.AddObject('Slot counts', TInteger.Create(83));
    Self.FrameTable.AddObject('Chips balance configuration',    TInteger.Create(500));
    Self.FrameTable.AddObject('Chips initials',                 TInteger.Create(501));
    Self.FrameTable.AddObject('ChipsAmuntChangesHistory',       TInteger.Create(502));
    Self.FrameTable.AddObject('Gaming day chips balance',       TInteger.Create(503));
    Self.FrameTable.AddObject('View chip balance report',       TInteger.Create(504));
    Self.FrameTable.AddObject('Values count drop',              TInteger.Create(600));
    Self.FrameTable.AddObject('Values count tips',              TInteger.Create(601));
    Self.FrameTable.AddObject('ReportPreview', TInteger.Create(100));
    Self.FrameTable.AddObject('ReportTicket', TInteger.Create(101));
    Self.FrameTable.AddObject('ReportBalancePreview', TInteger.Create(102));
    Self.FrameTable.AddObject('Shifts and counting', TInteger.Create(103));
  }

  // WARNING:
  // Function returns TBaseFrame (but creates frame class type),
  // which is later projected back from TBaseFrame to frame class type
end;

function TfrmMain.CreateFrameByIdx(Idx: Integer): TBaseFrame;
begin

  Result := nil;

  case Idx of

    1:
      Result := TListOfUsersFrame.Create(Self);
    2:
      Result := TListOfGroupsFrame.Create(Self);
    3:
      Result := TListOfUserGroupsFrame.Create(Self);
    4:
      Result := TListOfAccountsFrame.Create(Self);
    5:
      Result := TListOfAmountChangesFrame.Create(Self);
    6:
      Result := TListOfCashDesksFrame.Create(Self);
    7:
      Result := TListOfCashDeskUsersFrame.Create(Self);
    8:
      Result := TListOfCashDeskWorkstationsFrame.Create(Self);
    9:
      Result := TListOfCategoriesFrame.Create(Self);
    10:
      Result := TListOfChipBalancesFrame.Create(Self);
    11:
      Result := TListOfCurrenciesFrame.Create(Self);
    12:
      Result := TListOfCurrenciesExchangeRatesFrame.Create(Self);
    13:
      Result := TListOfDifferenceCategoriesFrame.Create(Self);
    // 14 : Result := TListOfGroupPermissionsFrame.Create(Self);

    16:
      Result := TListOfPermissionsFrame.Create(Self);
    17:
      Result := TListOfUnitsFrame.Create(Self);
    18:
      Result := TListOfValuesFrame.Create(Self);
    19:
      Result := TListOfWorkstationsFrame.Create(Self);
    20:
      Result := TSystemParametersFrame.Create(Self);
    21:
      Result := TReportsFrame.Create(Self);
    22:
      Result := TListOfGroupsPermissionsObjectsFrame.Create(Self);
    23:
      Result := TListOfObjectsFrame.Create(Self);
    // 24:
    // Result := TListOfTransactionsFrame.Create(Self);
    25:
      Result := TListOfMultipleTransactionsFrame.Create(Self);
    26:
      Result := TListOfCashTransactionsFrame.Create(Self);
    27:
      Result := TListOfShiftsFrame.Create(Self);
    28:
      Result := TListofStatisticCategoryFrame.Create(Self);

    50:
      Result := TAddAccountFrame.Create(Self);
    51:
      Result := TAddAmountChangeFrame.Create(Self);
    52:
      Result := TAddCashDeskFrame.Create(Self);
    53:
      Result := TAddCategoryFrame.Create(Self);
    54:
      Result := TAddChipBalanceFrame.Create(Self);
    55:
      Result := TAddCurrencyFrame.Create(Self);
    56:
      Result := TAddDifferenceCategoryFrame.Create(Self);
    57:
      Result := TAddGroupFrame.Create(Self);
    58:
      Result := TAddGroupPermissionObjectFrame.Create(Self);

    60:
      Result := TAddPermissionFrame.Create(Self);
    61:
      Result := TAddUnitFrame.Create(Self);
    62:
      Result := TAddUserFrame.Create(Self);
    63:
      Result := TAddValueFrame.Create(Self);
    64:
      Result := TAddUserGroupFrame.Create(Self);
    65:
      Result := TAddCurrencyExchangeRateFrame.Create(Self);
    66:
      Result := TAddUserToCashDeskFrame.Create(Self);
    67:
      Result := TAddWorkstationToCashDeskFrame.Create(Self);
    68:
      Result := TAddWorkstationFrame.Create(Self);
    69:
      Result := TAddTransactionFrame.Create(Self);
    70:
      Result := TAddMultipleTransactionFrame.Create(Self);
    71:
      Result := TAddCashTransactionFrame.Create(Self);
    72:
      Result := TAddShiftFrame.Create(Self);
    73:
      Result := TStListOfCategory.Create(Self);
    74:
      Result := TuModifyEntryStatisticFrame.Create(Self);
    75:
      Result := TShiftsExplanation.Create(Self);
    76:
      Result := TListofStatisticCategoryFrame.Create(Self);
    77:
      Result := TListOfCategoriesFrame.Create(Self);
    78:
      Result := TListOfSpecialBooks.Create(Self);
    79:
      Result := TPrintManager.Create(Self);
    80:
      Result := TCountModuleFrame.Create(Self);
    81:
      Result := TListOfTransactionsFrame.Create(Self);
    82:
      Result := TListOfTablesCounts.Create(Self);
    83:
      Result := nil; // TListOfSlotCounts.Create(Self);
    84:
      Result := TOldKivosReport.Create(Self);
    85:
      Result := TCashShortCutManager.Create(Self);

    500:
      Result := TChipsBalanceConfigFrame.Create(Self);
    501:
      Result := TChipsInitialsFrame.Create(Self);
    502:
      Result := TChipsAmuntChangesHistoryFrame.Create(Self);
    503:
      Result := TChipsSelectShiftFrame.Create(Self);
    504:
      Result := TChipsBalanceReportFrame.Create(Self);
    // 505 : Result := .Create(Self);

    599:
      Result := TCdCountDropControlerFrame.Create(Self);
    600:
      Result := TCdCountDropOperatorFrame.Create(Self);
    601:
      Result := TCdCountTipsOperatorFrame.Create(Self);
    602:
      Result := TCdCountTipsControlerFrame.Create(Self);
    603:
      Result := TCdCountFunctionsSpecFrame.Create(Self);

    100:
      Result := TReportShiftPreview.Create(Self);
    101:
      Result := TReportTicket.Create(Self);
    102:
      Result := TReportBalancePreview.Create(Self);
    103:
      Result := TShiftAndCountingFrame.Create(Self);
    104:
      Result := TOldKivosReport.Create(Self);

    700:
      Result := TChangePasswordFrame.Create(Self);
  else

    Information('Warning', 'Unable to create invalid frame #' + IntToStr(Idx));

  end;

  if Idx = 18 then
    TP_Ignore(Result, '.FieldName');

  if Idx <> 20 then
    TranslateComponent(Result);

end;

procedure TfrmMain.tvMenuCustomDraw(Sender: TCustomTreeView; const ARect: TRect;
  var DefaultDraw: Boolean);
var
  TextureBrush: HBRUSH;
  Bitmap: TBitmap;
begin

  // Bitmap := TBitmap.Create;
  // Bitmap.LoadFromFile('c:\pvc_fb__48_blau.bmp');
  // TextureBrush := CreatePatternBrush(Bitmap.Handle);
  // FillRect(Sender.Canvas.Handle, ARect, TextureBrush);
  // SetBkMode(Sender.Canvas.Handle, TRANSPARENT);

end;

procedure TfrmMain.tvMenuDblClick(Sender: TObject);
var
  Idx: Integer;
  MenuItemName: WideString;
begin
  // We must check exact selected row and appropiate text
  // instead of tvMenu.Selected.Text in case of double-click outside any of texts

  Idx := -1;
  MenuItemName := tvMenu.Selected.Text;

  // MenuItemName := case Item-ImageIndex

  if (MenuItemName = 'Logout') then
  begin
    if Question('You are about to logout. Are you sure ?') then
    begin
      DoLogout();
      DoMainLogin();
    end;
  end
  else
  begin
    Idx := FrameTable.IndexOf(MenuItemName);
    if (0 <= Idx) and (Idx < FrameTable.Count) then
    begin
      // while not (CheckUserPassword(MenuItemName, CurrentUserName, CurrentPassword) = 1) do
      // begin
      // DoAreaLogin();
      // end;
      OpenFrame(MenuItemName);
    end
    else
    begin
      // Information('Warning', 'Attempt to open unregistered frame [' + MenuItemName + '].');
    end;
  end;
end;

function TfrmMain.CreateFrame(FrameName: WideString): TBaseFrame;
var
  Idx: Integer;
  FrameIdx: Integer;
begin

  Result := nil;
  Idx := FrameTable.IndexOf(FrameName);
  if (Idx >= 0) and (Idx < FrameTable.Count) then
  begin
    try
      FrameIdx := (FrameTable.Objects[Idx] as TInteger).Value;
      Result := CreateFrameByIdx(FrameIdx);
    except
      on E: Exception do
      begin
        HandleException(E, 'TfrmMain.CreateFrame()');
      end;
    end;
  end;

end;

procedure TfrmMain.ApplySkin(F: TBaseFrame; SkinName: WideString);
var
  I: Integer;
  G: TcxGrid;
  P: TcxDBPivotGrid;
  B: TcxButton;
  Cl: TcxLookupComboBox;
  C: TcxDBLookupComboBox;
  Ch: TcxCheckBox;
  T: TcxDBTreeList;
begin

  for I := 1 to F.ComponentCount do
  begin
    if F.Components[I - 1].ClassName = 'TcxGrid' then
    begin
      G := F.Components[I - 1] as TcxGrid;
      G.LookAndFeel.NativeStyle := False;
      G.LookAndFeel.SkinName := SkinName;
      (G.ActiveView as TcxGridDBTableView).Navigator.Visible := False;
      (G.ActiveView as TcxGridDBTableView).OptionsView.Indicator := True;
      (G.ActiveView as TcxGridDBTableView).OptionsView.IndicatorWidth := 24;
    end
    else if F.Components[I - 1].ClassName = 'TcxDBPivotGrid' then
    begin
      P := F.Components[I - 1] as TcxDBPivotGrid;
      P.LookAndFeel.NativeStyle := False;
      P.LookAndFeel.SkinName := SkinName;
    end
    else if F.Components[I - 1].ClassName = 'TcxButton' then
    begin
      B := F.Components[I - 1] as TcxButton;
      B.LookAndFeel.NativeStyle := False;
      B.LookAndFeel.SkinName := SkinName;
    end
    else if F.Components[I - 1].ClassName = 'TcxLookupComboBox' then
    begin
      Cl := F.Components[I - 1] as TcxLookupComboBox;
      Cl.Style.LookAndFeel.NativeStyle := False;
      Cl.Style.LookAndFeel.SkinName := SkinName;
    end
    else if F.Components[I - 1].ClassName = 'TcxDBLookupComboBox' then
    begin
      C := F.Components[I - 1] as TcxDBLookupComboBox;
      C.Style.LookAndFeel.NativeStyle := False;
      C.Style.LookAndFeel.SkinName := SkinName;
    end
    else if F.Components[I - 1].ClassName = 'TcxCheckBox' then
    begin
      Ch := F.Components[I - 1] as TcxCheckBox;
      Ch.Style.LookAndFeel.NativeStyle := False;
      Ch.Style.LookAndFeel.SkinName := SkinName;
    end
    else if F.Components[I - 1].ClassName = 'TcxDBTreeList' then
    begin
      T := F.Components[I - 1] as TcxDBTreeList;
      T.LookAndFeel.NativeStyle := False;
      T.LookAndFeel.SkinName := SkinName;
    end;
  end;

end;

procedure TfrmMain.OpenFrame(FrameName: WideString);
label ShowFrame;
var
  bAlreadyOpened, bCanWrite: Boolean;
  I, Idx_0, Idx: Integer;
  CurrentFrame, Frame: TBaseFrame;
  Area, CurrentFrameName, TmpUserName, TmpPassword: WideString;
  BtnM, BtnA, BtnD: TcxButton;
begin

  // Check permissions

  Area := MapAreaToObject(FrameName);
  if CheckUserPasswordAction(Area, CurrentUserName, CurrentPassword, 'Read') <> 1
  then
  begin
    UserLogin(Area, TmpUserName, TmpPassword);
    if (frmUserLogin.LoginResult = lrtLoginUnsuccessful) or
      (frmUserLogin.LoginResult = lrtLoginCancelled) then
    begin
      Information('Warning',
        'You do not have proper permissions to do this action. Please contact administrator.');
      Exit;
    end;
    CurrentUserName := TmpUserName;
    CurrentPassword := TmpPassword;
    CurrentLoginTime := Now();
    SetStatusBarText('Logged as [' + CurrentUserName + '] on [' +
      DateTimeToStr(CurrentLoginTime, frmMain.FormatSettings) + ']. ' +
      'Connected to [' + CurrentDatabaseName + '] as [' +
      CurrentDBUserName + '].');
  end;

  // If Frame already opened move to the top

  bAlreadyOpened := False;
  if FrameStackExists(FrameName, Idx_0) then
  begin
    Exit;
    // Currently not used:
    bAlreadyOpened := True;
    FrameStackSwapWithTop(Idx_0);
  end;

  if not bAlreadyOpened then
  begin
    FrameTable.Find(FrameName, Idx);
    if (Idx >= 0) then
    begin
      if (FrameName <> CurrentFrameName) then // We attach the frame now
      begin

        Screen.Cursor := crHourGlass;

        Frame := CreateFrame(FrameName);
        if Frame <> nil then
        begin

          Frame.Name := FrameName;

          Self.InsertComponent(Frame);

          // DevExpress skin here

          ApplySkin(Frame, DefaultSkinName);

          // Should be done by frame initializer

          if FrameName = 'Add user to cash desk' then
          begin
            TAddUserToCashDeskFrame(Frame)
              .cbCashDeskPropertiesEditValueChanged(Self);
          end;

          // Find and set visibility of Add & Modify buttons
          // according to write permissions

          bCanWrite := True; // (CheckUserPasswordAction(Area, CurrentUserName,
          // CurrentPassword, 'Write') = 1);

          BtnM := nil;
          for I := 0 to Frame.ComponentCount - 1 do
          begin
            if Pos('btnm', LowerCase(Frame.Components[I].Name)) > 0 then
            begin
              BtnM := TcxButton(Frame.Components[I]);
              Break; // for
            end;
          end;

          BtnA := nil;
          for I := 0 to Frame.ComponentCount - 1 do
          begin
            if Pos('btna', LowerCase(Frame.Components[I].Name)) > 0 then
            begin
              BtnA := TcxButton(Frame.Components[I]);
              Break; // for
            end;
          end;

          BtnD := nil;
          for I := 0 to Frame.ComponentCount - 1 do
          begin
            if Pos('btnd', LowerCase(Frame.Components[I].Name)) > 0 then
            begin
              BtnD := TcxButton(Frame.Components[I]);
              Break; // for
            end;
          end;

          if BtnM <> nil then
            BtnM.Visible := bCanWrite;
          if BtnA <> nil then
            BtnA.Visible := bCanWrite;
          if BtnD <> nil then
            BtnD.Visible := bCanWrite;

          // Set frame

          FrameStackPush(FrameName, Frame);

          if FrameName = FrameNameByIdx(81) then
          begin
            TListOfTransactionsFrame(Frame).ListReports := TResultHandle.Create;
            TListOfTransactionsFrame(Frame).ListReports.ClearResult;
            TListOfTransactionsFrame(Frame)
              .ListReports.Add('select id, name from tbl_reports');
            TListOfTransactionsFrame(Frame).ListReports.InvokeSQL;
          end;

          if FrameName = FrameNameByIdx(26) then
          begin

            TListOfCashTransactionsFrame(Frame).Pgquery6.SQL.Clear();
            TListOfCashTransactionsFrame(Frame)
              .Pgquery6.SQL.Add('select ' + '  cd.* ' + 'from ' +
              '  tbl_cd as cd ' +
              '  left join tbl_cd_workstations as cdw on cd.id = cdw.id_cashdesk '
              + '  left join tbl_workstations as w on cdw.id_workstation = w.id '
              + 'where ' + '  w.system_name = ''' +
              frmMain.ComputerInfo.Identification.LocalComputerName + '''');
            TListOfCashTransactionsFrame(Frame).Pgquery6.Active := False;
            TListOfCashTransactionsFrame(Frame).Pgquery6.Active := True;

            TListOfCashTransactionsFrame(Frame).Pgquery7.SQL.Clear();
            TListOfCashTransactionsFrame(Frame)
              .Pgquery7.SQL.Add('select ' + '  cd.* ' + 'from ' +
              '  tbl_cd as cd ' +
              '  left join tbl_cd_workstations as cdw on cd.id = cdw.id_cashdesk '
              + '  left join tbl_workstations as w on cdw.id_workstation = w.id '
              + 'where ' + '  w.system_name = ''' +
              frmMain.ComputerInfo.Identification.LocalComputerName + '''');
            TListOfCashTransactionsFrame(Frame).Pgquery7.Active := False;
            TListOfCashTransactionsFrame(Frame).Pgquery7.Active := True;

          end;

          Frame.Left := FrameArea.Left;
          Frame.Top := FrameArea.Top;
          Frame.Width := FrameArea.Width;
          Frame.Height := FrameArea.Height;

          Frame.DoubleBuffered := True;

          Frame.Anchors := [akLeft, akTop, akRight, akBottom];

          // TBaseFrame(Frame).DoInitializationBeforeShow();

          Frame.RefreshConnections();
          // To be sure that connections to data components are opened

          Frame.Visible := True;

          Frame.Parent := Self;

          if FrameName = FrameNameByIdx(4) then
          begin
            TListOfAccountsFrame(Frame).cxDBTreeList1.FullExpand();
          end;

          if FrameName = FrameNameByIdx(69) then
          begin
            TAddTransactionFrame(Frame).TransactionPages.Pages[0].Show();
          end;

        end;
        Screen.Cursor := crDefault;
      end;
    end
    else
    begin
      Information('Warning', 'Unable to create frame ''' + FrameName + '''');
    end;
  end;

  btnCloseFrame.Show();

  if FrameName <> FrameNameByIdx(26) then
  begin
    lbMainHeader.Caption := FrameName;
  end;

  lbStack.Caption := FrameStackToText();

  Self.Refresh;

  // TBaseFrame(Frame).DoInitializationAfterShow();

end;

procedure TfrmMain.btnCloseFrameClick(Sender: TObject);
begin

  SendMainMessage('close|current');

end;

function TfrmMain.CloseFrame(): Boolean;
var
  TmpFrame: TBaseFrame;
  TmpFrameName: WideString;
  xframe: TBaseFrame;
begin

  Result := False;

  if FrameStackTop(TmpFrameName, TmpFrame) then
  begin

    if (TmpFrameName = '') then
      Exit;

    // TBaseFrame(CurrentFrame).DoFinalizationBeforeClose();

    Self.RemoveControl(TmpFrame); // Added frame is simply a control also
    Self.RemoveComponent(TmpFrame);
    Self.Refresh();

    // TBaseFrame(CurrentFrame).DoFinalizationAfterClose(); // TODO: Is it safe here ?

    FreeAndNil(TmpFrame);

    Result := FrameStackPop(TmpFrameName, TmpFrame);

    Self.lbMainHeader.Caption := 'Please select the frame from menu ...';

    Self.btnCloseFrame.Hide();

    // Now, we try to show current frame ...

    if CurrentFrame() <> nil then
    begin
      btnCloseFrame.Show();
      lbMainHeader.Caption := CurrentFrameName();

      // Force frame OnShow() event
      CurrentFrame.Visible := False;
      CurrentFrame.Visible := True;

      if (AnsiUpperCase(CurrentFrame.Name)
        = AnsiUpperCase(frmMain.FrameNameByIdx(26))) then
      begin

        TListOfCashTransactionsFrame(CurrentFrame).cbCashdesk.Enabled := True;

      end;

    end;

    lbStack.Caption := FrameStackToText();

  end;

  Self.Refresh();

end;

// ------------------------------------------------------------------------------
//
// End of frame manager
//
// ------------------------------------------------------------------------------

function TfrmMain.IIf(B: Boolean; S1: WideString; S2: WideString): WideString;
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

procedure TfrmMain.ExecSQL(Q: WideString);
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
        Information('Warning', 'Unique key violation in TfrmMain.ExecSQL()');
        Exit;
      end
      else
      begin
        HandleException(E, 'TfrmMain.ExecSQL()');
      end;
    end;
  end;
end;

function TfrmMain.GenerateNewNumberTransaction(Aid_caskdesk: Integer;
  Aid_type: Integer): WideString;
var
  QueryStr, MaxId, TempNo: String;
  I, j: Integer;
  xNextNumber: Integer;
  dYear, dMonth, dDay: word;
  CurrentCashDesk: string;
  Mnemonic: string;
begin
  Result := EmptyStr;
  xNextNumber := 0;
  DecodeDate(Now(), dYear, dMonth, dDay);
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
    xNextNumber := 1;
  end
  else
  begin
    I := Pos('/', TempNo);
    j := PosEx('/', TempNo, I + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    j := PosEx('/', TempNo, j + 1);
    xNextNumber := StrToInt(Copy(TempNo, j + 1, Length(TempNo))) + 1;
  end;

  CurrentCashDesk := GetFieldAsString('select cd_name from tbl_cd where id=' +
    IntToStr(Aid_caskdesk), 'cd_name');

  Mnemonic := GetFieldAsString
    ('Select mnemonic from tbl_cd_cash_transactions_types where type=' +
    IntToStr(Aid_type), 'mnemonic');

  Result := Mnemonic + '/' + CurrentCashDesk + '/' + IntToStr(dDay) + '/' +
    IntToStr(dMonth) + '/' + IntToStr(dYear) + '/' + IntToStr(xNextNumber);
end;

function TfrmMain.GetFieldAsInteger(Q: WideString; FieldName: string): Integer;
begin
  // GenericQuery.Active := False;
  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(Q);
  GenericQuery.Open();
  if GenericQuery.RowsAffected <> 0 then
  begin
    Result := GenericQuery.FieldByName(FieldName).AsInteger;
  end
  else
  begin
    Result := ckeyNILL;
  end;
  GenericQuery.Close();
end;

function TfrmMain.GetFieldAsString(Q: WideString; FieldName: WideString)
  : WideString;
begin
  // GenericQuery.Active := False;
  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(Q);
  GenericQuery.Open();
  if GenericQuery.RowsAffected <> 0 then
  begin
    Result := GenericQuery.FieldByName(FieldName).AsWideString;
  end
  else
  begin
    Result := '';
  end;
  GenericQuery.Close();

end;

procedure TfrmMain.CopyTransaction(BaseCTNr: WideString; CTNr: WideString;
  NewTypeId: Integer; NewCashDesk: Integer; Direction: Integer;
  Confirms: WideString; Reversed: Boolean = False; Confirmed: Boolean = False);
var
  IdCdSubTransaction: WideString;
  ReversedDirection: WideString;
  TimeOffsetMiliseconds: Integer;
  xTemp: string;
  xTemp2: string;
begin

  // case NewTypeId of
  // CT_TRANSFER_REQUEST_START:      ReversedDirection := '0';
  // CT_TRANSFER_REQUEST_ACCEPTANCE: ReversedDirection := '0';
  // CT_ACTUAL_TRANSFER_START:       ReversedDirection := IntToStr( 3 - Direction );
  // CT_ACTUAL_TRANSFER_ACCEPTANCE:  ReversedDirection := IntToStr( 3 - Direction );
  // else
  if NewTypeId = CT_ACTUAL_TRANSFER_START then
  begin
    xTemp2 := '2';

  end
  else if NewTypeId = CT_ACTUAL_TRANSFER_ACCEPTANCE then
  begin
    xTemp2 := '1';
  end
  else
  begin
    ReversedDirection := IntToStr(3 - Direction); // 2 -> 1, 1 -> 2
    xTemp2 := IIf(Reversed, ReversedDirection, IntToStr(Direction));
  end;
  // end;

  TimeOffsetMiliseconds := 250; // TODO: Rozwiązanie tymczasowe

  if NewTypeId = CT_ACTUAL_TRANSFER_START then
  begin
    xTemp := ' amount_in, amount_out ';
  end
  else
  begin
    xTemp := IIf(Reversed, '  - amount_in, ', '  amount_out, ') +
      IIf(Reversed, '  - amount_out ', '  amount_in ');
  end;

  ExecSQL('insert into tbl_cd_cash_transactions ' + '( ' + '  id_cashdesk, ' +
    '  id_cd_transaction, ' + '  account_id_from, ' + '  account_id_to, ' +
    '  account_id_transfer, ' + '  confirmed, ' + '  confirmation_id_user, ' +
    '  id_user, ' + '  type, ' + '  datetime, ' + '  ct_number, ' +
    '  base_ct_number, ' + '  is_multiple_cd_transaction, ' + '  direction, ' +
    '  confirms, ' + '  amount_in, ' + '  amount_out ' + ') ' + 'select ' +
    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' +
    '  account_id_from, ' + '  account_id_to, ' + '  account_id_transfer, ' +
    IIf(Confirmed, '  1, ', '  0, ') + '  0, ' + '  id_user, ' +
    IntToStr(NewTypeId) + ', ' + '  datetime + time ''00:00:00.' +
    IntToStr(TimeOffsetMiliseconds) + ''', ' + '  ''' + CTNr + ''', ' + '  ''' +
    BaseCTNr + ''', ' + '  is_multiple_cd_transaction, ' + xTemp2 + ',  ''' +
    Confirms + ''', ' + xTemp + 'from ' + '  tbl_cd_cash_transactions ' +
    'where ' + '  ct_number = ''' + BaseCTNr + ''';');

  ExecSQL('insert into tbl_cd_cash_transactions_subt ' + '( ' +
    '  id_cd_transaction, ' + '  id_cashdesk, ' + '  ct_number, ' +
    '  multiple_subtransaction_id, ' + '  amount_in, ' + '  amount_out, ' +
    '  direction ' + ') ' + 'select ' + '  id_cd_transaction, ' +
    IntToStr(NewCashDesk) + ', ' + '  ''' + CTNr + ''', ' +
    '  multiple_subtransaction_id, ' + '  amount_in, ' + '  amount_out, ' +
    IIf(Reversed, ReversedDirection, 'direction') + ' ' + 'from ' +
    '  tbl_cd_cash_transactions_subt ' + 'where ' + '  ct_number = ''' +
    BaseCTNr + ''';');

  IdCdSubTransaction := GetFieldAsString
    ('select id from tbl_cd_cash_transactions_subt ' + 'where ct_number = ''' +
    CTNr + '''', 'id');

  ExecSQL('insert into tbl_cd_cash_transactions_subt_categories ' + '( ' +
    '  id_cashdesk, ' + '  id_cd_transaction, ' + '  id_cd_category, ' +
    '  ct_number, ' + '  id_cd_sub_transaction ' + ') ' + 'select ' +
    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' +
    '  id_cd_category, ' + '  ''' + CTNr + ''', ' + IdCdSubTransaction +
    'from tbl_cd_cash_transactions_subt_categories ' + 'where ct_number = ''' +
    BaseCTNr + ''';');

  ExecSQL('insert into tbl_cd_cash_transactions_subt_categories_values ' + '( '
    + '  id_cashdesk, ' + '  id_cd_transaction, ' + '  id_cd_sub_transaction, '
    + '  id_cd_value, ' + '  id_cd_category, ' + '  ct_number, ' + '  count, ' +
    '  amount_in, ' + '  amount_out, ' + '  nr, ' + '  exchange_rate, ' +
    '  category_name, ' + '  currency_symbol, ' + '  direction, ' +
    '  multiplier,' + '  last_shift_datetime, ' + '  goes_into_amount_expected,'
    + '  datetime ' + ') ' + 'select ' +

    IntToStr(NewCashDesk) + ', ' + '  id_cd_transaction, ' + IdCdSubTransaction
    + ', ' + '  id_cd_value, ' + '  id_cd_category, ' + '  ''' + CTNr + ''', ' +
    '  count, ' + IIf(Reversed, '  - amount_in, ', '  amount_in, ') +
    IIf(Reversed, '  - amount_out, ', '  amount_out, ') + IIf(Reversed,
    '  nr, ', '  nr, ') + // We don't change sign
    '  exchange_rate, ' + '  category_name,' + '  currency_symbol, ' + xTemp2 +
    ' , multiplier,' + '  last_shift_datetime, ' +
    '  goes_into_amount_expected, ' + '  datetime + time ''00:00:00.' +
    IntToStr(TimeOffsetMiliseconds) + ''' ' + 'from ' +
    '  tbl_cd_cash_transactions_subt_categories_values ' + 'where ' +
    '  ct_number = ''' + BaseCTNr + ''';');

end;

procedure TfrmMain.InitializeShifts;
var
  QueryShiftTypes, QueryShifts: WideString;
begin

  // If Always_active -> only Change cashier & Intermediate
  // For open cash desk -> only Close, change cashier & Intermediate
  // For close cash desk -> only Open

  // Type = 3 -> Open shift
  // Type = 1 -> Close shift
  // Type = 5 -> Change cashier
  // Type = 6 -> Info

  QueryShiftTypes := 'select type, name, mnemonic ' +
    'from tbl_cd_cash_transactions_types ' + 'order by type asc';
  // Ordering is important !

  GenericQuery.SQL.Clear();
  GenericQuery.SQL.Add(QueryShiftTypes);
  GenericQuery.Open();
  GenericQuery.First();
  SetLength(frmMain.ShiftInfo, 1);
  while not GenericQuery.Eof do
  begin
    frmMain.ShiftInfo[High(frmMain.ShiftInfo)].TypeId :=
      GenericQuery.FieldByName('type').AsInteger;
    frmMain.ShiftInfo[High(frmMain.ShiftInfo)].Name :=
      GenericQuery.FieldByName('name').AsWideString;
    frmMain.ShiftInfo[High(frmMain.ShiftInfo)].Mnemonic :=
      GenericQuery.FieldByName('mnemonic').AsWideString;
    SetLength(frmMain.ShiftInfo, High(frmMain.ShiftInfo) + 2);
    GenericQuery.Next();
  end;
  GenericQuery.Close();

end;

function TfrmMain.TransactionTypeByMnemonic(M: WideString): Integer;
var
  I: Integer;
begin
  Result := -1;
  for I := Low(ShiftInfo) to High(ShiftInfo) do
  begin
    if ShiftInfo[I].Mnemonic = M then
    begin
      Result := I;
      Exit;
    end;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if Question('You are about to close program. Are you sure ?') then
  begin

    DoLogout();
    CloseProgram();

  end
  else
  begin

    Action := caNone;

  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin

  // TranslateComponent(Self);

  DoubleBuffered := True;

  Caption := VersionString;

  SetLength(FrameStack, 0);

  FMThread := TFrameManagerThread.Create(False);
  FMThread.Priority := tpLower;
  FMThread.FreeOnTerminate := True;

  PrepareFramesTable();

  FImport := TImportThread.Create;
  FImport.Priority := tpLower;
  FImport.FreeOnTerminate := True;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  ReadParametres;
end;

// ------------------------------------------------------------------------------
//
// Login handler
//
// ------------------------------------------------------------------------------

function TfrmMain.DoAreaLogin(Area: WideString): Boolean;
label AreaLoginLoop;
var
  AreaObject, AreaUserName, AreaPassword: WideString;
  AreaLoginCount: Integer;
begin

  Result := False;
  AreaLoginCount := MAX_UNSUCCESSFUL_LOGIN_COUNT;

  if (AreaLoginCount = 0) then
  begin
    Information('Warning', 'There were 3 unsuccessful login attempts to area ['
      + Area + ']');
    Exit;
  end;

  AreaUserName := CurrentUserName;
  AreaPassword := CurrentPassword;
  AreaObject := MapAreaToObject(Area);

AreaLoginLoop:

  while CheckUserPassword(AreaObject, AreaUserName, AreaPassword) <> 1 do
  begin
    GetLogin(Area, AreaUserName, AreaPassword);
    Dec(AreaLoginCount);
    if (frmUserLogin.LoginResult = lrtLoginUnsuccessful) then
    begin
      goto AreaLoginLoop;
    end
    else if (frmUserLogin.LoginResult = lrtLoginCancelled) then
    begin
      Exit;
    end
  end;

  // Login successful

  Result := True;

end;

procedure TfrmMain.DoMainLogin();
label
  DatabaseLoginLoop,
  OpenConnection,
  ProgramLoginLoop;
var
  LoginUserName, LoginPassword, Host, DatabaseName, DBUserName,
    DBPassword: WideString;
  DatabaseLoginCount, ProgramLoginCount: Integer;
begin

  // Main initialization

  // CurrentUserName := 'Administrator';
  // CurrentPassword := '123';
  // CurrentDatabaseName := 'kivos_300';
  // CurrentDBUserName := 'postgres';
  // CurrentLoginTime := Now();

  DefaultSkinName := 'Caramel'; // 'Office2010Black';

  DatabaseName := 'kivos_300';
  DatabaseLoginCount := MAX_UNSUCCESSFUL_LOGIN_COUNT;
  ProgramLoginCount := MAX_UNSUCCESSFUL_LOGIN_COUNT;
  OpenSystemLog();

  // GetFormatSettings();

  // WARNING:
  // We set DecimalSeparator as it should be set up correctly
  // by GetFormatSettings and used throughout the program
  // in uSystem.StrFloat() and uSystem.FloatStr()
  // TcxDBGrid do this automatically, I think

  // SELECT '52093.89'::money::numeric::float8;

  FormatSettings.DecimalSeparator := DecimalSeparator;
  FormatSettings.ThousandSeparator := ThousandSeparator;

  FormatSettings.LongDateFormat := LongDateFormat;
  FormatSettings.ShortDateFormat := ShortDateFormat;
  FormatSettings.LongTimeFormat := LongTimeFormat;
  FormatSettings.ShortTimeFormat := ShortTimeFormat;
  FormatSettings.DateSeparator := DateSeparator;
  FormatSettings.TimeAMString := TimeAMString;
  FormatSettings.TimePMString := TimePMString;
  FormatSettings.TimeSeparator := TimeSeparator;

  {
    SetStatusBarText
    (
    'Logged as [' + CurrentUserName + '] on [' + DateTimeToStr(Now(), frmMain.FormatSettings) + ']. ' +
    'Connected to [' + CurrentDatabaseName + '] as [' + CurrentDBUserName + '].'
    );

    Exit;
  }

  // Login loop

  frmMain.ReadIniConfiguration(Host, DatabaseName, DBUserName, DBPassword);

  if (Host <> '') then
    goto OpenConnection;

DatabaseLoginLoop:

  if (DatabaseLoginCount = 0) then
  begin
    Information('Warning',
      'There were 3 unsuccessful login attempts. Program will terminate now.');
    Application.Terminate;
  end;
  UserLogin('Database', DBUserName, DBPassword, Host, DatabaseName);
  if frmUserLogin.LoginResult = lrtLoginUnsuccessful then
  begin
    case frmUserLogin.UnsuccessfulLoginCause of
      ulcNoUsername:
        begin
          Information('Unable to login to database',
            'Database area login unsuccessful - no user name. Please try again.');
          SystemLog('Failed login to database [%s] with no username',
            [DatabaseName]);
        end;
      ulcNoPassword:
        begin
          Information('Unable to login to database',
            'Database area login unsuccessful - no password. Please try again.');
          SystemLog(
            'Failed login to database [%s] with user [%s] and no password',
            [DatabaseName, LoginUserName]);
        end;
      ulcBadUsernameOrPassword, ulcNoSuchUser, ulcIncorrectPassword:
        begin
          Information('Unable to login to database',
            'Database area login unsuccessful - bad username or password. Please try again.');
          SystemLog(
            'Failed login to database [%s] with user [%s] and password [%s] - bad username or password',
            [DatabaseName, LoginUserName, LoginPassword]);
        end;
      ulcPermissionError:
        begin
          Information('Unable to login to database',
            'Database area login unsuccessful - unsufficient permissions. Please try again.');
          SystemLog(
            'Failed login to database [%s] with user [%s] and password [%s] - unsufficient permissions',
            [DatabaseName, LoginUserName, LoginPassword]);
        end;
      ulcInternalError:
        begin
          Information('Unable to login to database',
            'Database consistency error. Please try again.');
          SystemLog(
            'Failed login to %s with user [%s] and password [%s] - database consistency error',
            ['database', LoginUserName, LoginPassword]);
        end;
    else
      Information('Unable to login to database',
        'Database area login unsuccessful - unknown cause. Please try again.');
      SystemLog(
        'Failed login to database [%s] with user [%s] and password [%s] - unknown cause',
        [DatabaseName, LoginUserName, LoginPassword]);
    end;
    Dec(DatabaseLoginCount);
    goto DatabaseLoginLoop;
    // CloseProgram();
  end
  else if frmUserLogin.LoginResult = lrtLoginCancelled then
  begin
    Information('Unable to login to database',
      'Database area login cancelled. Program will terminate.');
    SystemLog('Cancelled login to database');
    CloseProgram();
  end
  else
  begin

  OpenConnection:

    // Information('Info', 'Attempt to open connection with [' +
    // Host + ' : ' + DatabaseName + ', ' + DBUserName + ', ' + DBPassword + ']');
    if not OpenDBConnection(Host, DatabaseName, DBUserName, DBPassword) then
    begin
      Information('Unable to connect to database',
        'Unable to establish database connection. Please try again.');
      SystemLog(
        'Failed to connect to database [%s] with user [%s] and password [%s]',
        [DatabaseName, DBUserName, DBPassword]);
      goto DatabaseLoginLoop;
      // CloseProgram();
    end
    else
    begin

    ProgramLoginLoop:

      if (ProgramLoginCount = 0) then
      begin
        Information('Warning',
          'There were 3 unsuccessful login attempts. Program will terminate now.');
        Application.Terminate;
      end;
      UserLogin('Program', LoginUserName, LoginPassword);
      if frmUserLogin.LoginResult = lrtLoginUnsuccessful then
      begin
        case frmUserLogin.UnsuccessfulLoginCause of
          ulcNoUsername:
            begin
              Information('Unable to login to program',
                'No user name. Please try again.');
              SystemLog('Failed login to %s with no username', ['program']);
            end;
          ulcNoPassword:
            begin
              Information('Unable to login to program',
                'No password. Please try again.');
              SystemLog('Failed login to %s with user [%s] and no password',
                ['program', LoginUserName]);
            end;
          ulcBadUsernameOrPassword, ulcNoSuchUser, ulcIncorrectPassword:
            begin
              Information('Unable to login to program',
                'Bad username or password. Please try again.');
              SystemLog(
                'Failed login to %s with user [%s] and password [%s] - bad username or password',
                ['program', LoginUserName, LoginPassword]);
            end;
          ulcPermissionError:
            begin
              Information('Unable to login to program',
                'Unsufficient permissions. Please try again.');
              SystemLog(
                'Failed login to %s with user [%s] and password [%s] - unsufficient permissions',
                ['program', LoginUserName, LoginPassword]);
            end;
          ulcInternalError:
            begin
              Information('Unable to login to program',
                'Database consistency error. Please try again.');
              SystemLog(
                'Failed login to %s with user [%s] and password [%s] - database consistency error',
                ['program', LoginUserName, LoginPassword]);
            end;
        else
          Information('Unable to login to program',
            'Unknown cause. Please try again.');
          SystemLog(
            'Failed login to %s with user [%s] and password [%s] - unknown cause',
            ['program', LoginUserName, LoginPassword]);
        end;
        Dec(ProgramLoginCount);
        goto ProgramLoginLoop;
        // CloseProgram();
      end
      else if frmUserLogin.LoginResult = lrtLoginCancelled then
      begin
        Information('Unable to login',
          'Login cancelled. Program will terminate.');
        SystemLog('Cancelled login to program');
        CloseProgram();
      end
      else
      begin
        // Here we've successfully opened program
        CurrentHost := Host;
        CurrentDatabaseName := DatabaseName;
        CurrentDBUserName := DBUserName;
        CurrentLoginTime := Now();
        SystemLog('Successful login to %s with user [%s] and password [%s]',
          ['program', LoginUserName, LoginPassword]);
        SetStatusBarText('Logged as [' + LoginUserName + '] on [' +
          DateTimeToStr(CurrentLoginTime, frmMain.FormatSettings) + ']. ' +
          'Connected to [' + Host + ' : ' + CurrentDatabaseName + '] as [' +
          CurrentDBUserName + '].');
        CurrentUserName := LoginUserName;
        CurrentPassword := LoginPassword;
        Self.Show();

        // Login table

        ExecSQL('delete from tbl_login where client_ip = ''' +
          IdIPWatch1.CurrentIP + '''');
        ExecSQL('insert into tbl_login (datetime, user_name, client_ip, client_name, info) '
          + 'values ' + '(' + '  now(), ' + '''' + CurrentUserName + ''', ' +
          '''' + IdIPWatch1.CurrentIP + ''', ' + '''' +
          ComputerInfo.Identification.LocalComputerName + ''', ' +
          '''login''' + ')');

        PrepareMainMenu();

      end;
    end;
  end;

end;

procedure TfrmMain.PrepareMainMenu();

  function CheckMenu(ObjectName: WideString): Boolean;
  begin
    Result := (CheckUserPasswordAction(ObjectName, CurrentUserName,
      CurrentPassword, 'Read') = 1);
  end;

var
  T, T2, Root: TTreeNode;
begin

  tvMenu.Items.Clear();

  Root := nil;

  {

    if CheckMenu('Frame.Accounts') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Accounts'); T.Enabled := True;
    end;

    if CheckMenu('Menu.CurrenciesConfiguration') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Currencies configuration'); T.Enabled := True;
    end;
    if CheckMenu('Frame.Currencies') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Currencies'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ExchangeRates') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Exchange rates'); T2.Enabled := True;
    end;

    if CheckMenu('Menu.CashDeskConfiguration') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Cash desks configuration'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CashDesks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Cash desks'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskUsers') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'CD users'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskWorkstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'CD workstations'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Units') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Units'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Categories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Categories'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Values') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.DifferenceCategories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Difference categories'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Workstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Workstations'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.PrintManager') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Print manager'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Transakcje') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Transactions.'); T.Enabled := True;
    end;

    if CheckMenu('Frame.MultipleTransactions') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Multiple transactions'); T.Enabled := True;
    end;

    if CheckMenu('Frame.CashDesks') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Cashdesks'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CashTransactions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Cash transactions'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.uSpecialBooks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Special books & reverse'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Shifts') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Shifts'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ShiftsExplanation') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Shifts explanation'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Reports') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Reports'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ShiftsAndCounting') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Shifts and counting'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Statistics') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Statistics'); T.Enabled := True;
    end;
    if CheckMenu('Frame.AddSCategory') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Category'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Entry') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Entry'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ModifyEntry') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Modify entry'); T2.Enabled := True;
    end;

    if CheckMenu('Menu.ChipBalance') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Chip balance'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceConfig') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Chips balance configuration'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsInitials') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Chips initials'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsAmuntChangesHistory') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Gaming day chips balance'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceReport') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'View chip balance report'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.CountModule') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Count drop'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountDates') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count drop'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountTips') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count tips'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.SystemParameters') then
    begin
    T := tvMenu.Items.AddChild(Root, 'System parameters'); T.Enabled := True;
    end;

    if CheckMenu('Menu.SecuritySettings') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Security settings'); T.Enabled := True;
    end;
    if CheckMenu('Frame.Users') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Users'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Groups') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Groups'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Permissions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Permissions'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Objects') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Objects'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.UsersGroups') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Users - Groups'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.GroupsPermissionsObjects') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Groups, Perm., Obj.'); T2.Enabled := True;
    end;
  }

  {

    if CheckMenu('Frame.Accounts') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Kontenplan'); T.Enabled := True;
    end;

    // -------------------------------------------------------------------
    if CheckMenu('Menu.CurrenciesConfiguration') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Währungen Konfiguration'); T.Enabled := True;
    end;
    if CheckMenu('Frame.Currencies') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Währungen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ExchangeRates') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Wechselkurs'); T2.Enabled := True;
    end;

    if CheckMenu('Menu.CashDeskConfiguration') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Kassenkonfiguration'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CashDesks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kasse konfiguration'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskUsers') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Benutzer & Kassen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskWorkstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Computer & Kassen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Units') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Einheiten'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Categories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kategorien'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Values') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Werte'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.DifferenceCategories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Differenzkategorien'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Workstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Computer'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.PrintManager') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Druckmanager'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Transakcje') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Transaktionen.'); T.Enabled := True;
    end;

    //  if CheckMenu('Frame.Temporary') then
    //  begin
    //  T := tvMenu.Items.AddChild(Root, 'temporary'); T.Enabled := True;
    //  end;

    if CheckMenu('Frame.MultipleTransactions') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Mehrfachtransaktionen'); T.Enabled := True;
    end;

    if CheckMenu('Frame.CashDesks') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Kasse'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CashTransactions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kasse transaktionen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.uSpecialBooks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Spezialbuchungen'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Shifts') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Schicht'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ShiftsExplanation') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Schicht info'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.Reports') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Berichte'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ShiftsAndCounting') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Transaktionen und Schichten'); T2.Enabled := True;
    end;
    if  CheckMenu('Frame.AdvancedReports') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Erweitertes Reporting'); T2.Enabled := True;
    end ;

    if CheckMenu('Frame.Statistics') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Statistik'); T.Enabled := True;
    end;
    if CheckMenu('Frame.AddSCategory') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Konfiguration stat'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Entry') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Eingabe'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ModifyEntry') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Eingabeänderungen'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.ChipsBalanceConfig') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Chip balance'); T.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceConfig') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Konfiguration Chip balance'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsInitials') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Initiale Werteeingabe'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsAmuntChangesHistory') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Chip Amount History'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceReport') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Chip Balance Bericht'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.CountModule') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Compte drop'); T.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountDropControler') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count drop - controller'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountDropOperator') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count drop - operator'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountTipsControler') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count tips - controller'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountTipsOperator') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Values count tips - operator'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountFunctionsSpec') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Controllers special functions'); T2.Enabled := True;
    end;

    if CheckMenu('Frame.SystemParameters') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Systemeinstellungen'); T.Enabled := True;
    end;

    if CheckMenu('Menu.SecuritySettings') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Sicherheitseinstellungen'); T.Enabled := True;
    end;
    if CheckMenu('Frame.Users') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Benutzer'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Groups') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Gruppen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Permissions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Rechte'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.Objects') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Objekte'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.UsersGroups') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Benutzer zu Gruppen'); T2.Enabled := True;
    end;
    if CheckMenu('Frame.GroupsPermissionsObjects') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Groupes, Perm., Obj.'); T2.Enabled := True;
    end;

    //  if CheckMenu('Frame.ChipBalances') then
    // begin
    // T := tvMenu.Items.AddChild(Root, 'Configuration Chip balance'); T.Enabled := True;
    // end;


    if CheckMenu('Menu.SecuritySettings') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Values count'); T.Enabled := True;
    end;

    T := tvMenu.Items.AddChild(Root, 'Logout'); T.Enabled := True;
  }
  // -------------------menu GERMANY START----------------------------
    if CheckMenu('Menu.System') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Systemeinstellungen');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.SystemParameters') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Systemeinstellungen.');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Accounts') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kontenplan');
    T2.Enabled := True;
    end;

    if CheckMenu('Menu.Security') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Sicherheitseinstellungen');
    T.Enabled := True;
    end;

    if CheckMenu('Frame.Users') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Benutzer');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Groups') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Gruppen');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Permissions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Rechte');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Objects') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Objekte');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.UsersGroups') then
    begin

    T2 := tvMenu.Items.AddChild(T, 'Benutzer zu Gruppen');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.GroupsPermissionsObjects') then
    begin

    T2 := tvMenu.Items.AddChild(T, 'Gruppenrechte');
    T2.Enabled := True;
    end;

    if CheckMenu('Menu.CashDesksConfiguration') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Kassenkonfiguration');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.Workstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Computer');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskWorkstations') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Computer & Kassen');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskUsers') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Benutzer & Kassen');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.PrintManager') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Druckmanager');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Units') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Einheiten');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Categories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kategorien');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.Values') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Werte');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.DifferenceCategories') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Differenzkategorien');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDeskConfiguration') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kassen Konfigurationen');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CashDesks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kassen');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.CashShortCutManager') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Abkürzungmanager');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.SystemParameters') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Transaktionskonfiguration');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.Transaktionen.') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Transaktionen.');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.MultipleTransactions') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Mehrfachtransaktionen');
    T2.Enabled := True;
    end;

    if CheckMenu('Menu.CashDesks') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Kasse');
    T.Enabled := True;
    end;

    if CheckMenu('Frame.CashDesks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Kasse transaktionen');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.uSpecialBooks') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Spezialbuchungen');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.ShiftsExplanation') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Schichtkategorisierung'); T2.Enabled := True;
    end;

    if CheckMenu('Menu.Reports') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Berichte');
    T.Enabled := True;
    end;
    // if CheckMenu('Frame.ShiftsTransactions') then
    // begin
    // T2 := tvMenu.Items.AddChild(T, 'Transaktionen und Schichten'); T2.Enabled := True;
    // end;
    if CheckMenu('Frame.Reports') then
    begin

    T2 := tvMenu.Items.AddChild(T, 'Berichte');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.AdvancedReports') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Erweitertes Reporting');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.Statistics') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Statistik');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.Configuration') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Konfiguration');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.StatisticsEntry') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Eingabe');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.ModifyEntries') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Eingabeänderungen');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.ChipBalances') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Chip Balance');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceConfig') then
    begin

    T2 := tvMenu.Items.AddChild(T, 'Configuration Chip balance');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsInitials') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Initiale Werteeingabe');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.GamingDayChipBalance') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Spieltagbericht');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.ChipsBalanceReport') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Chip Balance Bericht');
    T2.Enabled := True;
    end;

    if CheckMenu('Frame.CountModule') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Zählung');
    T.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountDropOperator') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Dropzählung Operator');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountDropControler') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Dropzählung Controller');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountTipsOperator') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Trinkgeldzählung Operator');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountTipsControler') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Trinkgeldzählung Controller');
    T2.Enabled := True;
    end;
    if CheckMenu('Frame.CdCountFunctionsSpec') then
    begin
    T2 := tvMenu.Items.AddChild(T, 'Andere Funktionen');
    T2.Enabled := True;
    end;


    if CheckMenu('Frame.ChangePassword') then
    begin
    T := tvMenu.Items.AddChild(Root, 'Change password');
    T.Enabled := True;
    end;

  // -------------------------Menu GERMANY END-------------------------
  // ========================MENU FRANCE================================
 { if CheckMenu('Menu.System') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Parameters du systeme');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.SystemParameters') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Parameters du systeme.');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Accounts') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptes');
    T2.Enabled := True;
  end;

  if CheckMenu('Menu.Security') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Securite');
    T.Enabled := True;
  end;

  if CheckMenu('Frame.Users') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Utilisateurs');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Groups') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Groupes');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Permissions') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Autorisations');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Objects') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Objets');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.UsersGroups') then
  begin

    T2 := tvMenu.Items.AddChild(T, 'Utilisateurs - groupes');
    T2.Enabled := True;
  end;

  if CheckMenu('Frame.GroupsPermissionsObjects') then
  begin

    T2 := tvMenu.Items.AddChild(T, 'Groupe autorisations');
    T2.Enabled := True;
  end;
  // Case
  if CheckMenu('Menu.CashDesksConfiguration') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Configuration caisse');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.Workstations') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Ordinateures');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CashDeskWorkstations') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Ordinateures & caisses');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CashDeskUsers') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Utilisateurs - caisses');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.PrintManager') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Imprimer gestionnaire');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Units') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Unites');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Categories') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Categories');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.Values') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Valeurs');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.DifferenceCategories') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Différence catégories');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CashDeskConfiguration') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Configuration caisses');
    T2.Enabled := True;
  end;

  if CheckMenu('Frame.CashDesks') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Configuration caisses');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CashShortCutManager') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Gestionnaire de raccourci');
    T2.Enabled := True;
  end;

  if CheckMenu('Frame.SystemParameters') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Configuration transactions');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.Transaktionen.') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Transactions.');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.MultipleTransactions') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Multiple opérations');
    T2.Enabled := True;
  end;

  if CheckMenu('Menu.CashDesks') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Caisses');
    T.Enabled := True;
  end;

  if CheckMenu('Frame.CashTransactions') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Caisses Transaction');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.uSpecialBooks') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptabilisation speciaux');
    T2.Enabled := True;
  end;

  // if CheckMenu('Frame.BalanceCategorisation') then
  // begin
  // T2 := tvMenu.Items.AddChild(T, 'Schichtkategorisierung'); T2.Enabled := True;
  // end;

  if CheckMenu('Menu.Reports') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Rapports');
    T.Enabled := True;
  end;
  // if CheckMenu('Frame.ShiftsTransactions') then
  // begin
  // T2 := tvMenu.Items.AddChild(T, 'Transaktionen und Schichten'); T2.Enabled := True;
  // end;
  if CheckMenu('Frame.Reports') then
  begin

    T2 := tvMenu.Items.AddChild(T, 'Rapports');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.AdvancedReports') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Reporting avancé');
    T2.Enabled := True;
  end;

  if CheckMenu('Menu.Statistics') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Statistiques');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.ListOfStatisticCategory') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Statistique Configuration');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.StatisticsEntry') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Entrée statistiques');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.ModifyEntries') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Modifier des entrées');
    T2.Enabled := True;
  end;

  if CheckMenu('Menu.ChipBalances') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Config. Chip Balance');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.ChipsBalanceConfig') then
  begin

    T2 := tvMenu.Items.AddChild(T, 'Config. Chip Balance');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.ChipsInitials') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Valeurs initiales');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.GamingDayChipBalance') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Chip Balance jour de jeux');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.ChipsBalanceReport') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Chip Balance Bericht');
    T2.Enabled := True;
  end;

  if CheckMenu('Frame.CountModule') then
  begin
    T := tvMenu.Items.AddChild(Root, 'Comptage');
    T.Enabled := True;
  end;
  if CheckMenu('Frame.CdCountDropOperator') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptage Drop Operateur');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CdCountDropControler') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptage Drop Controller');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CdCountTipsOperator') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptage Pourboire Operateur');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CdCountTipsControler') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Comptage Pourboire Controller');
    T2.Enabled := True;
  end;
  if CheckMenu('Frame.CdCountFunctionsSpec') then
  begin
    T2 := tvMenu.Items.AddChild(T, 'Controller menu');
    T2.Enabled := True;
  end;  }
  // ==================France End ================================
end;

procedure TfrmMain.DoLogout();
var
  FrameName: WideString;
  Frame: TBaseFrame;
begin

  while FrameStackTop(FrameName, Frame) do
  begin
    // FrameStackPop(FrameName, Frame);
    CloseFrame();
  end;

  CloseDBConnection();

  HideMainWindow();

  DefaultInstance.DebugLogToFile('gtt.log.txt');

  // Login table

  ExecSQL('delete from tbl_login where client_ip = ''' +
    IdIPWatch1.CurrentIP + '''');

  ExecSQL('insert into tbl_login (datetime, user_name, client_ip, client_name, info) '
    + 'values ' + '(' + '  now(), ' + '''' + CurrentUserName + ''', ' + '''' +
    IdIPWatch1.CurrentIP + ''', ' + '''' +
    ComputerInfo.Identification.LocalComputerName + ''', ' +
    '''logout''' + ')');

  ExecSQL('delete from tbl_cd_login where id_user = ' +
    frmMain.CurrentUserId());

end;

procedure TfrmMain.HideMainWindow();
begin

  Self.Hide;

end;

procedure TfrmMain.lbStackClick(Sender: TObject);
begin

end;

// ------------------------------------------------------------------------------
//
// End of login handler
//
// ------------------------------------------------------------------------------
// 0 idTransaction
// 1 id Account
// 2 name Account
function TfrmMain.GetAccount(AidCashDesk: Integer; Atype: byte): TArrayOfString;
var
  xIdDefaultTransaction: string;
  xFromCashDesk: string;
  xIdAccount: string;
  xAccountName: string;
begin
  Result := nil;
  xIdDefaultTransaction := GetFieldAsString
    ('Select idTransaction from tbl_parametres ', 'idTransaction');
  if trim(xIdDefaultTransaction) <> EmptyStr then
  begin
    SetLength(Result, 3);
    if Atype = cAccountFrom then
    begin
      xFromCashDesk := GetFieldAsString
        ('Select use_current_cashdesk_account_instead_of_from ' +
        ' from tbl_transactions where id=' + xIdDefaultTransaction,
        'use_current_cashdesk_account_instead_of_from');

    end
    else if Atype = cAccountTo then
    begin
      xFromCashDesk := GetFieldAsString
        ('Select use_current_cashdesk_account_instead_of_to ' +
        ' from tbl_transactions where id=' + xIdDefaultTransaction,
        'use_current_cashdesk_account_instead_of_to');
    end;

    if xFromCashDesk = '0' then
    begin
      if Atype = cAccountFrom then
      begin
        xIdAccount := GetFieldAsString
          ('Select account_id_from from tbl_transactions where id=' +
          xIdDefaultTransaction, 'account_id_from');
      end
      else
      begin
        xIdAccount := GetFieldAsString
          ('Select account_id_to from tbl_transactions where id=' +
          xIdDefaultTransaction, 'account_id_to');
      end;
    end
    else
    begin
      xIdAccount := GetFieldAsString('Select account_id from tbl_cd where id=' +
        IntToStr(AidCashDesk), 'account_id');

    end;
    xAccountName := GetFieldAsString('Select name from tbl_accounts where id=' +
      xIdAccount, 'name');
    Result[0] := xIdDefaultTransaction;
    Result[1] := xIdAccount;
    Result[2] := xAccountName;
  end;
end;

end.
