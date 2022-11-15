unit uGlobals;

//
//  Global constants
//
//
//

interface

uses
  Vcl.Forms, Windows, SysUtils;

const

  ckeyNILL = High(Integer);
  cAccountFrom = 0;
  cAccountTo   = 1;

  VERSION_TYPE_DEBUG_INTERNAL  = 1; // For developers
  VERSION_TYPE_DEBUG_RELEASE   = 2; // For external testing purposes
  VERSION_TYPE_RELEASE         = 3; // Official release

  SYSTEM_LOG_ENABLED = False;

  LOG_FILE_PATH = 'C:\kivos_30.system_log.txt';

  MAX_UNSUCCESSFUL_LOGIN_COUNT = 3;

  WITH_CLOSE_OF_PREVIOUS_FRAME = True;
  WITHOUT_CLOSING_PREVIOUS_FRAME = False;

  PREVIOUS_FRAME = 1;
  CURRENT_FRAME = 2;

  FLOAT_ZERO_MARGIN = 0.000001;

//
// Cash transactions types - must be synchronized with tbl_cd_cash_transactions_types
//

 
  cParam_CtNumber_Ticket = 'Ticket_ct_number';
  cPopMenu_eksport_toExcel = 'Export grid to excel';

const

  CT_UNKNOWN                      =   -1;

  CT_NORMAL                       =    0;
  CT_CLOSE_SHIFT                  =    1;
  CT_CLOSING                      =    2; // not used
  CT_OPEN_SHIFT                   =    3;
  CT_OPENING                      =    4; // not used
  CT_CHANGE_CASHIER               =    5;
  CT_INFO                         =    6;
  CT_DIFFERENCIES                 =    7;
  CT_CLOSE_MOVING                 =    8;
  CT_OPEN_MOVING                  =    9;
  CT_TRANSFER_REQUEST_START       =   10;
  CT_TRANSFER_REQUEST_ACCEPTANCE  =   11;
  CT_ACTUAL_TRANSFER_START        =   12;
  CT_ACTUAL_TRANSFER_ACCEPTANCE   =   13;
  CT_CHANGE_CURRENCY_RATE         =   14;
  CT_CONTINUOUS_BALANCE           =   16;

type

  TLoginResultType =
  (
    lrtLoginCancelled     = 1,
    lrtLoginUnsuccessful  = 2,
    lrtLoginSuccessful    = 3
  );

  TUnsuccessfulLoginCauseType =
  (
    ulcNoUsername = 1,
    ulcNoPassword = 2,
    ulcBadUsernameOrPassword = 3,
    ulcPermissionError = 4,
    ulcInternalError = 5,
    ulcIncorrectPassword = 6,
    ulcNoSuchUser = 7
  );



  Tid = class
  public
    index: integer;
    id: integer;
  end;

  TArrayOfString= array of string;

var

  InternalVersionType : Integer;
  InternalVersionCode : WideString;

  VersionString : WideString;

  AutomaticImport : Boolean;
  AutomaticTimeOut : Integer;
  AidWorkStation: string;
  SessionGuid : String;

  AlertExchangeRate : Double;
  Difference : Double;
  DefaultCurrency : Integer;



  procedure InitializeApplicationTitle;

implementation

procedure GetBuildInfo(var V1, V2, V3, V4 : Word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize > 0 then
  begin
      GetMem(VerInfo, VerInfoSize);
      try
        if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
        begin
          VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
          with VerValue^ do
          begin
            V1 := dwFileVersionMS shr 16;
            V2 := dwFileVersionMS and $FFFF;
            V3 := dwFileVersionLS shr 16;
            V4 := dwFileVersionLS and $FFFF;
          end;
        end;
      finally
        FreeMem(VerInfo, VerInfoSize);
      end;
  end;
end;

procedure InitializeApplicationTitle;
var
  V1, V2, V3, V4 : Word;
begin
  VersionString := 'Kivos 3.0';
  InternalVersionType := VERSION_TYPE_RELEASE;

  GetBuildInfo(V1, V2, V3, V4);

  InternalVersionCode :=
    IntToStr(V1) + '.' +
    IntToStr(V2) + '.' +
    IntToStr(V3) + '.' +
    IntToStr(V4);

  case InternalVersionType of
    VERSION_TYPE_DEBUG_INTERNAL :
      VersionString := VersionString;
    VERSION_TYPE_DEBUG_RELEASE :
      VersionString := VersionString + ' [Release debug version: ' + InternalVersionCode + ']';
    VERSION_TYPE_RELEASE :
      VersionString := VersionString + ' - [build ' + InternalVersionCode +']';
  end;
end;

end.
