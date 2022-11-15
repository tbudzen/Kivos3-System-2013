unit uSystemLog;

interface

uses
  SysUtils, uGlobals;

var
  LogFile : TextFile;

  procedure OpenSystemLog();
  procedure CloseSystemLog();
  procedure SystemLog(S : WideString; Args : array of TVarRec);

implementation

  procedure OpenSystemLog();
  begin
    AssignFile(LogFile, LOG_FILE_PATH);
    if not FileExists(LOG_FILE_PATH) then
    begin
      ReWrite(LogFile);
    end
    else
    begin
      Append(LogFile);
    end;
    Write(LogFile, '[', Now(), '] ', 'System log opened for write.');
  end;

  procedure CloseSystemLog();
  begin
    CloseFile(LogFile);
  end;

  procedure SystemLog(S : WideString; Args : array of TVarRec);
  var
    FormattedS : WideString;
  begin
    FormattedS := WideFormat(S, Args);
    Write(LogFile, '[', Now(), '] ', FormattedS);
  end;

end.
