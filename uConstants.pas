unit uConstants;

//
//  Global constants
//
//
//

interface

uses
  Vcl.Forms, Windows, SysUtils, uSystemLog;

const
  VERSION_TYPE_DEBUG_INTERNAL = 1; // For developers
  VERSION_TYPE_DEBUG_RELEASE  = 2; // For external testing purposes
  VERSION_TYPE_RELEASE        = 3; // Official release

  LOG_FILE_PATH = 'C:\kivos_30.system_log.txt';

var
  InternalVersionType : Integer;
  InternalVersionCode : WideString;
  VersionString : WideString;

  procedure CloseProgram();

  procedure InitializeApplicationTitle;

implementation

  procedure CloseProgram();
  begin
    CloseSystemLog();
    Application.Terminate;
  end;

procedure GetVersionInformation;
const
  InfoNum = 11;
  InfoStr : array [1 .. InfoNum] of String =
  (
    'CompanyName',
    'FileDescription',
    'FileVersion',
    'InternalName',
    'LegalCopyright',
    'LegalTradeMarks',
    'OriginalFilename',
    'ProductName',
    'ProductVersion',
    'Comments',
    'Author'
  );
var
  S : WideString;
  N, Len : Cardinal;
  j : Integer;
  Buf, Value : PWideChar;
begin
  try
    InternalVersionCode := '';
    S := Application.ExeName;
    N := GetFileVersionInfoSize(PWideChar(S), N);
    if (N > 0) then
    begin
      Buf := AllocMem(N);
      if GetFileVersionInfo(PChar(S), Cardinal(0), N, Buf) then
      begin
      for j := 1 to InfoNum do begin
        if VerQueryValue
        (
          Buf,
          PWideChar('StringFileInfo\040904E4\' + InfoStr[j]),
          Pointer(Value),
          Len
        )
        then
        begin
          Value := PWideChar(Trim(Value));
          if (Length(Value) > 0) and (j = 3) then
          begin
            InternalVersionCode := Value;
          end;
        end;
      end;
      end;
      FreeMem(Buf, n);
    end;
  except
  end;
end;

procedure InitializeApplicationTitle;
begin
  InternalVersionType := 1;
  GetVersionInformation();
  VersionString := 'Kivos 3.0';
  case InternalVersionType of
    VERSION_TYPE_DEBUG_INTERNAL :
      VersionString := VersionString + ' (Internal debug version: ' + InternalVersionCode + ')';
    VERSION_TYPE_DEBUG_RELEASE :
      VersionString := VersionString + ' (Release debug version: ' + InternalVersionCode + ')';
    VERSION_TYPE_RELEASE :
      VersionString := VersionString + ' (Release: ' + InternalVersionCode + ')';
  end;
end;

end.
