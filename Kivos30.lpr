program Kivos30;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uUtilsStrings, uUtilsRegistry, uUtilsPermissions, uUtilsNetworking,
  uUtilsLocale, uUtilsFinancial, uUtilsDataValidation, uUtilsConfigurations,
  uFrmUserLogin, uFrmMain, uFrmLogin, uFrmDBAccess, uFrameMain, uExceptions,
  uExcelBridge, uDefsConsts, uDBAccess, uConstants
  { you can add units after this };

{$R *.res}

var
  Mutex : THandle;
begin
  Mutex := CreateMutex(nil, True, 'Kivos_30_Mutex');
  if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
  begin
    Exit;
  end
  else
  begin
    Application.Initialize;
    Application.Run;
    if Mutex <> 0 then
      CloseHandle(Mutex);
    end;
  end;
end.

