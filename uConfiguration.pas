unit uConfiguration;

//
//  INI configurations
//
//
//

interface

  const
    INI_FILE_NAME = 'kivos_30.ini';

  type TConfiguration =
    record
      Version : WideString;
      VersionType : WideString;
      DataSources : WideString;
    end;

  var
    Configuration : TConfiguration;

  procedure ReadConfiguration();
  procedure SaveConfiguration();

implementation

uses
  INIFiles;

  procedure ReadConfiguration();
  begin
  end;

  procedure SaveConfiguration();
  begin
  end;

end.
