unit uUtilsConfigurations;

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
  var
    INI : TINIFile;
  begin
    INI := TINIFile.Create(INI_FILE_NAME);
    // Entry is:
    // driver|server|port|database|user|password|...
    Configuration.DataSources := INI.ReadString('DataSources', 'Sources', '');
    INI.Free();
  end;

  procedure SaveConfiguration();
  var
    INI : TINIFile;
  begin
    INI := TINIFile.Create(INI_FILE_NAME);
    INI.WriteString('DataSources', 'Sources', Configuration.DataSources);
    INI.Free();
  end;

end.
