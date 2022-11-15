unit uDatabase;

//
//  Database access
//
//
//

interface
uses
  Forms,
  SysUtils,
  uFrmDatabase,
  uExceptions,
  uSystem,
  uFrmMain,
  PgClasses,
  PgAccess;

  // Connection management

  function  OpenDBConnection(Host : WideString; DatabaseName : WideString; UserName : WideString; Password : WideString) : Boolean;
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


  type TResultHandle = class(TObject)
  public
   Query : TPgQuery;
   DataSource : TPgDataSource;
   constructor Create(); overload;
   constructor CreateImport; overload;
   destructor Destroy(); override;
   procedure ClearResult;
   procedure Add(Aquery:string);
   procedure InvokeSQL();
   procedure First;
   procedure Next;
   function ExecuteSQL : Boolean;
   function Count : Integer;
  end;


implementation

  // Connection management

  function OpenDBConnection(Host : WideString; DatabaseName : WideString; UserName : WideString; Password : WideString) : Boolean;
  begin
    Result := False;
    try
      with frmDatabase.KivosConnection do
      begin
        Connected := False;
        LoginPrompt := False;
        Server := Host;
        Database := DatabaseName;
        UserName := UserName;
        Password := Password;
        Schema := 'public';
        Port := 5432;
        Connected := True;
      end;
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
    //frmDatabase.KivosConnection.Connected := False;
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

{ TResultHandle }

procedure TResultHandle.Add(Aquery: string);
begin
  Query.SQL.Add(Aquery);
end;

procedure TResultHandle.ClearResult;
begin
  if Self.Query.Active then Self.Query.Close;
  Query.sql.Clear;
end;

function TResultHandle.count: integer;
begin
  Result := Query.RecordCount;
end;

constructor TResultHandle.create;
begin
  Query := TPgQuery.Create(frmMain);
  Self.Query.Connection := frmDatabase.KivosConnection;
  DataSource := TPgDataSource.Create(frmMain);
  DataSource.DataSet := Query;
end;

constructor TResultHandle.CreateImport;
begin
  Query := TPgQuery.Create(frmMain);
  Self.Query.Connection := frmDatabase.ImportCoonnection;
  DataSource:= TPgDataSource.Create(frmMain);
  DataSource.DataSet := Query;
end;

destructor TResultHandle.Destroy;
begin
  DataSource.DataSet := nil;
  FreeAndNil(Query);
  FreeAndNil(DataSource);
  inherited;
end;

function TResultHandle.ExecuteSQL : Boolean;
begin
  Result := True;
  try
    Query.ExecSQL;
  except
    Result := False;
  end;
end;

procedure TResultHandle.First;
begin
  Query.First;
end;

procedure TResultHandle.InvokeSQL;
begin
  Query.Open;
end;

procedure TResultHandle.Next;
begin
  Query.Next;
end;

end.
