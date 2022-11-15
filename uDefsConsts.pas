unit uDefsConsts;

interface

uses
  Vcl.Forms;

const
  VERSION_TYPE_DEBUG_INTERNAL = 1; // For developers
  VERSION_TYPE_DEBUG_RELEASE  = 2; // For external testing purposes
  VERSION_TYPE_RELEASE        = 3; // Commercial release

var
  InternalVersionType : Integer;
  InternalVersionCode : WideString;
  VersionString : WideString;

procedure InitializeApplicationTitle;

implementation

procedure InitializeApplicationTitle;
begin
  InternalVersionType := 1;
  InternalVersionCode := '';
  VersionString := 'Kivos 3';
  case InternalVersionType of
    VERSION_TYPE_DEBUG_INTERNAL :
      VersionString := VersionString + ' (Internal debug version: ' + InternalVersionCode + ')';
    VERSION_TYPE_DEBUG_RELEASE :
      VersionString := VersionString + ' (Release debug version: ' + InternalVersionCode + ')';
    VERSION_TYPE_RELEASE :
      VersionString := VersionString + ' (Release: ' + InternalVersionCode + ')';
  else
      VersionString := VersionString + ' (Release: ' ;
  end;

end;

end.
