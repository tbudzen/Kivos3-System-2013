unit uExceptions;

//
//  Exceptions
//
//
//

interface

uses
  Forms, SysUtils, uFrmException, uSystem;

  type TStringException = class(Exception);
  type TDatabaseException = class(Exception);

  procedure HandleException(E : Exception; From : String);

  procedure ShowException(E : TStringException); overload;
  procedure ShowException(E : TDatabaseException); overload;

implementation

  procedure HandleException(E : Exception; From : String);
  begin
    SystemLog('Exception from %s: %s', [From, E.Message]);
    frmException.From := From;
    frmException.ExceptionMessage := E.Message;
    frmException.ShowModal();

    if Question('Would you like to terminate program now because of exception ?') then
    begin
      Application.Terminate;
    end;
  end;

  procedure ShowException(E : TStringException); overload;
  begin

  end;

  procedure ShowException(E : TDatabaseException); overload;
  begin

  end;

end.
