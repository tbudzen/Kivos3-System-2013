unit uDBAccess;

//
//  Database access
//
//
//

interface

uses
  Forms, SysUtils, uFrmDatabase, uFrameUserManager, uExceptions, uSystem;

  // Connection management

  function  OpenDBConnection(DatabaseName : WideString; UserName : WideString; Password : WideString) : Boolean;
  procedure CloseDBConnection();

  // Common operations

  procedure DBLog();

  // Main getters

  procedure DBCheckPermission();
  procedure DBGetConfirmation();

  procedure DBGetOperationalFlowEntry();
  procedure DBGetOperationalUnit();
  procedure DBGetOperationalUnitDetails();
  procedure DBGetAccount();

  // Main adders

  procedure DBAddOperationalFlowEntry();
  procedure DBAddOperationalUnit();
  procedure DBAddOperationalUnitDetails();
  procedure DBAddAccount();

  // Other

implementation

  // Connection management

  function OpenDBConnection(DatabaseName : WideString; UserName : WideString; Password : WideString) : Boolean;
  begin

    Result := False;

    frmDatabase.KivosDatabase.Connected := False;
    frmDatabase.KivosDatabase.LoginPrompt := False;
    frmDatabase.KivosDatabase.KeepConnection := True;

    //SERVER=localhost
    //LOCATION=bern_2
    //PASSWORD=test
    //USER NAME=postgres

    frmDatabase.KivosDatabase.Params.Clear();
    frmDatabase.KivosDatabase.Params.Add('SERVER=localhost');
    frmDatabase.KivosDatabase.Params.Add('PORT=5432');
    frmDatabase.KivosDatabase.Params.Add('LOCATION=' + DatabaseName);
    frmDatabase.KivosDatabase.Params.Add('USER NAME=' + UserName);
    frmDatabase.KivosDatabase.Params.Add('PASSWORD=' + Password);
    frmDatabase.KivosDatabase.Params.Add('EXTENDED PROPERTIES=""');

    // For ADO access
    {
      //Provider=PostgreSQL OLE DB Provider;Password=123;User ID=admin;
      //Data Source=localhost;Location=bern_2;Extended Properties=""
      //frmDatabase.ADOConnection.ConnectionString :=
      //  'Provider=PostgreSQL OLE DB Provider;' +
      //  'Password=' + Password + ';' +
      //  'User ID=' + UserName + ';' +
      //  'Data Source=localhost;' +
      //  'Location=' + DatabaseName + ';' +
      //  'Extended Properties=""';
    }

    try
      frmDatabase.KivosDatabase.Connected := True; // Try to connect ...
      Result := True;
    except
      on E : Exception do
      begin
        HandleException(E, 'OpenDBConnection()');
      end;
    end;

  end;

  procedure CloseDBConnection();
  begin
    if frmDatabase.KivosDatabase.Connected then frmDatabase.KivosDatabase.Connected := False;
  end;


  // Common operations

  procedure DBLog();
  begin

  end;


  // Main getters

  procedure DBCheckPermission();
  begin

  end;

  procedure DBGetConfirmation();
  begin

  end;

  procedure DBGetOperationalFlowEntry();
  begin

  end;

  procedure DBGetOperationalUnit();
  begin

  end;

  procedure DBGetOperationalUnitDetails();
  begin

  end;

  procedure DBGetAccount();
  begin

  end;


  // Main adders

  procedure DBAddOperationalFlowEntry();
  begin

  end;

  procedure DBAddOperationalUnit();
  begin

  end;

  procedure DBAddOperationalUnitDetails();
  begin

  end;

  procedure DBAddAccount();
  begin

  end;


  // Other

end.
