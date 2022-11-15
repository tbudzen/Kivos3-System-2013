unit uPermissions;

//
//  Permissions
//
//
//

interface

uses
  Vcl.Controls, SysUtils, uFrmUserLogin, uGlobals, uFrmDatabase, uSystem, PgAccess;

  function    CheckUserPasswordAction(Area, UserName, Password, Action : WideString) : Integer;
  function    CheckUserPassword(Area, UserName, Password : WideString) : Integer;
  function    GetPermissions(UserName, Area : WideString) : Boolean;
  function    GetLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean;
  function    UserLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean; overload;
  function    UserLogin(Area : WideString; var UserName : WideString; var Password : WideString; var Host : WideString; var DatabaseName : WideString) : Boolean; overload;

implementation

  function CheckUserPasswordAction(Area, UserName, Password, Action : WideString) : Integer;
  var
    Query, Query2 : PgAccess.TPgQuery;
    PasswordFromDatabase, QueryStr : WideString;
    IdUser, IdGroup, IdPermission, IdPermissionStar, IdObject, IdObjectStar : Integer;
  begin
    // tbl_users: (user_name, password)
    // tbl_users_groups_objects: (id_user, id_group, id_object)
    // group = 'Open' or 'FullAccess'

    if Area = 'Database' then
    begin
      Result := 1;
      Exit;
    end;

    Result := 4;

    Query  := frmDatabase.KivosQuery;
    Query2 := frmDatabase.KivosQuery2;

    Query.SQL.Clear();
    Query.SQL.Add
    (
      'SELECT id, password ' +
      'FROM tbl_users ' +
      'WHERE user_name = ''' + UserName + ''''
    );
    Query.Active := True;
    Query.Open();
    if (Query.RecordCount > 0) then
    begin
      Query.First();
      PasswordFromDatabase := Query.FieldByName('password').AsWideString;
      IdUser := Query.FieldByName('id').AsInteger;
      Query.Close();
      if Password = PasswordFromDatabase then // ... check permission
      begin
        Query.SQL.Clear();
        Query.SQL.Add
        (
          'SELECT id ' +
          'FROM tbl_access_permissions ' +
          'WHERE permission_name = ''' + Action + ''''
        );
        Query.Active := True;
        Query.Open();
        if (Query.RecordCount > 0) then
        begin
          Query.First();
          IdPermission := Query.FieldByName('id').AsInteger;
          Query.Close();

          IdPermissionStar := -1;
          Query.SQL.Clear();
          Query.SQL.Add
          (
            'SELECT id ' +
            'FROM tbl_access_permissions ' +
            'WHERE permission_name = ''*'''
          );
          Query.Active := True;
          Query.Open();
          if (Query.RecordCount > 0) then
          begin
            Query.First();
            IdPermissionStar := Query.FieldByName('id').AsInteger;
            Query.Close();


            IdObjectStar := -1;
            Query2.SQL.Clear();
            Query2.SQL.Add
            (
              'SELECT id ' +
              'FROM tbl_access_objects ' +
              'WHERE object_name = ''*'''
            );
            Query2.Active := True;
            Query2.Open();
            if (Query2.RecordCount > 0) then
            begin
              Query2.First();
              IdObjectStar := Query2.FieldByName('id').AsInteger;
              Query2.Close();
            end;

            Query.SQL.Clear();
            Query.SQL.Add
            (
              'SELECT id ' +
              'FROM tbl_access_objects ' +
              'WHERE object_name = ''' + Area + ''''
            );
            Query.Active := True;
            Query.Open();
            if (Query.RecordCount > 0) then
            begin
              Query.First();
              IdObject := Query.FieldByName('id').AsInteger;
              Query.Close();

              Query.SQL.Clear();

              QueryStr :=
                'SELECT id ' +
                'FROM tbl_groups_permissions_objects ' +
                'WHERE ' +
                '(' +
                '  id_permission = ' + IntToStr(IdPermission) + ' OR ' +
                '  id_permission = ' + IntToStr(IdPermissionStar) +
                ') ' +
                'AND ' +
                '(' +
                '  id_object = ' + IntToStr(IdObject) + ' OR ' +
                '  id_object = ' + IntToStr(IdObjectStar) +
                ') ' +
                'AND ' +
                '(' +
                '  id_group IN ' +
                '  (' +
                '    SELECT id_group ' +
                '    FROM tbl_users_access_groups ' +
                '    WHERE ' +
                '      id_user = ' + IntToStr(IdUser) +
                '  )' +
                ')';

              Query.SQL.Add(QueryStr);
              Query.Active := True;
              Query.Open();
              if (Query.RecordCount > 0) then
              begin
                Query.Close();
                Query.SQL.Clear();
                Result := 1; // We've found proper permission for given user and password
              end
              else
              begin
                Result := 4;
              end;
            end;
          end
          else
          begin
            //Information('Error', 'Internal error in tbl_access_objects.');
            Result := 5;
          end;
        end
        else
        begin
          //Information('Error', 'Internal error in tbl_access_groups.');
          Result := 5;
        end;
      end
      else
      begin
        //Information('Error', 'Incorrect password for user: [' + UserName + '].');
        Result := 3;
      end;
    end
    else
    begin
      //Information('Error', 'No such user in database: ' + UserName);
      Result := 2
    end;

  end;


  // 1 - OK
  // 2 - No user
  // 3 - Bad password
  // 4 - Permission error
  // 5 - Internal error
  function CheckUserPassword(Area, UserName, Password : WideString) : Integer;
  var
    Query, Query2 : PgAccess.TPgQuery;
    PasswordFromDatabase, QueryStr : WideString;
    IdUser, IdGroup, IdPermission, IdObject, IdObjectStar : Integer;
  begin
    // tbl_users: (user_name, password)
    // tbl_users_groups_objects: (id_user, id_group, id_object)
    // group = 'Open' or 'FullAccess'

    if Area = 'Database' then
    begin
      Result := 1;
      Exit;
    end;

    Result := 4;

    Query := frmDatabase.KivosQuery;
    Query2 := frmDatabase.KivosQuery2;

    Query.SQL.Clear();
    Query.SQL.Add
    (
      'SELECT id, password ' +
      'FROM tbl_users ' +
      'WHERE user_name = ''' + UserName + ''''
    );
    Query.Active := True;
    Query.Open();
    if (Query.RecordCount > 0) then
    begin
      Query.First();
      PasswordFromDatabase := Query.FieldByName('password').AsWideString;
      IdUser := Query.FieldByName('id').AsInteger;
      Query.Close();
      if Password = PasswordFromDatabase then // ... check permission
      begin
        Query.SQL.Clear();
        Query.SQL.Add
        (
          'SELECT id ' +
          'FROM tbl_access_permissions ' +
          'WHERE ' +
          '  permission_name = ''*'' OR ' +
          '  permission_name = ''Read'''
        );
        Query.Active := True;
        Query.Open();
        if (Query.RecordCount > 0) then
        begin
          Query.First();
          IdPermission := Query.FieldByName('id').AsInteger;
          Query.Close();

          IdObjectStar := -1;
          Query2.SQL.Clear();
          Query2.SQL.Add
          (
            'SELECT id ' +
            'FROM tbl_access_objects ' +
            'WHERE object_name = ''*'''
          );
          Query2.Active := True;
          Query2.Open();
          if (Query2.RecordCount > 0) then
          begin
            Query2.First();
            IdObjectStar := Query2.FieldByName('id').AsInteger;
            Query2.Close();
          end;

          Query.SQL.Clear();
          Query.SQL.Add
          (
            'SELECT id ' +
            'FROM tbl_access_objects ' +
            'WHERE object_name = ''' + Area + ''''
          );
          Query.Active := True;
          Query.Open();
          if (Query.RecordCount > 0) then
          begin
            Query.First();
            IdObject := Query.FieldByName('id').AsInteger;
            Query.Close();

            Query.SQL.Clear();

            QueryStr :=
              'SELECT id ' +
              'FROM tbl_groups_permissions_objects ' +
              'WHERE ' +
              'id_permission = ' + IntToStr(IdPermission) + ' AND ' +
              '(' +
              '  id_object = ' + IntToStr(IdObject) + ' OR ' +
              '  id_object = ' + IntToStr(IdObjectStar) +
              ') ' +
              'AND ' +
              '(' +
              '  id_group IN ' +
              '  (' +
              '    SELECT id_group ' +
              '    FROM tbl_users_access_groups ' +
              '    WHERE id_user = ' + IntToStr(IdUser) +
              '  )' +
              ')';

            Query.SQL.Add(QueryStr);
            Query.Active := True;
            Query.Open();
            if (Query.RecordCount > 0) then
            begin
              Query.Close();
              Query.SQL.Clear();
              Result := 1; // We've found proper permission for given user and password
            end
            else
            begin
              Result := 4;
            end;
          end
          else
          begin
            //Information('Error', 'Internal error in tbl_access_objects.');
            Result := 5;
          end;
        end
        else
        begin
          //Information('Error', 'Internal error in tbl_access_groups.');
          Result := 5;
        end;
      end
      else
      begin
        //Information('Error', 'Incorrect password for user: [' + UserName + '].');
        Result := 3;
      end;
    end
    else
    begin
      //Information('Error', 'No such user in database: ' + UserName);
      Result := 2
    end;

  end;

  function GetPermissions(UserName, Area : WideString) : Boolean;
  begin
    Result := True;
  end;

  function GetLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean;
  begin

    Result := False;

    frmUserLogin.LoginArea := Area;

    frmUserLogin.Image1.Show();
    frmUserLogin.Image2.Hide();
    // 88, 128, 168
    frmUserLogin.lbDatabase.Hide();
    frmUserLogin.cbDatabase.Hide();

    frmUserLogin.lbUser.Top := 88;
    frmUserLogin.edUser.Top := 88;
    frmUserLogin.lbPassword.Top := 128;
    frmUserLogin.edPassword.Top := 128;
    frmUserLogin.Height := 328;

    frmUserLogin.ShowModal();

    frmUserLogin.edUser.SetFocus();

    if frmUserLogin.ModalResult = mrOk then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;

    if frmUserLogin.ModalResult = mrCancel then
    begin
      frmUserLogin.LoginResult := lrtLoginCancelled;
    end
    else if (frmUserLogin.UserName = '') then
    begin
      frmUserLogin.LoginResult := lrtLoginUnsuccessful;
      frmUserLogin.UnsuccessfulLoginCause := ulcNoUsername;
    end
    else if (frmUserLogin.Password = '') then
    begin
      frmUserLogin.LoginResult := lrtLoginUnsuccessful;
      frmUserLogin.UnsuccessfulLoginCause := ulcNoPassword;
    end
    else
    begin
      frmUserLogin.LoginResult := lrtLoginSuccessful;
    end;

    UserName := frmUserLogin.UserName;
    Password := frmUserLogin.Password;

  end;

  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean;
  var
    __dummy__1__,
    __dummy__2__ : WideString;
  begin
    Result := UserLogin(Area, UserName, Password, __dummy__1__, __dummy__2__);
  end;

  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString; var Host : WideString; var DatabaseName : WideString) : Boolean;
  var
    bPermissionError : Boolean;
    CheckResult : Integer;
  begin

    bPermissionError := False;
    Result := False;

    frmUserLogin.LoginArea := Area;

    frmUserLogin.Image1.Visible := (Area <> 'Database');
    frmUserLogin.Image2.Visible := (Area =  'Database');
    // 88, 128, 168
    frmUserLogin.lbHost.Visible := (Area = 'Database');
    frmUserLogin.edHost.Visible := (Area = 'Database');
    frmUserLogin.lbDatabase.Visible := (Area = 'Database');
    frmUserLogin.cbDatabase.Visible := (Area = 'Database');
    //frmUserLogin.btnAddDataSource.Visible := (Area = 'database');

    if (Area = 'Program') or (Area <> 'Database') then
    begin

      frmUserLogin.lbUser.Top := 110;
      frmUserLogin.edUser.Top := 110;
      frmUserLogin.lbPassword.Top := 150;
      frmUserLogin.edPassword.Top := 150;

      frmUserLogin.Height := 280;

      frmUserLogin.ShowModal();

      if frmUserLogin.ModalResult = mrOk then
      begin
        if Area <> 'Database' then
        begin
          CheckResult := CheckUserPassword(Area, frmUserLogin.UserName, frmUserLogin.Password);
          if CheckResult = 1 then
          begin
            Result := True;
          end
          else
          begin
            Result := False;
          end;
        end
        else
        begin
          Result := True;
        end;
      end
      else
      begin
        Result := False;
      end;
    end
    else
    if (Area = 'Database') then
    begin

      frmUserLogin.lbHost.Top := 110;
      frmUserLogin.edHost.Top := 110;
      frmUserLogin.lbDatabase.Top := 150;
      frmUserLogin.cbDatabase.Top := 150;
      frmUserLogin.lbUser.Top := 190;
      frmUserLogin.edUser.Top := 190;
      frmUserLogin.lbPassword.Top := 230;
      frmUserLogin.edPassword.Top := 230;

      frmUserLogin.Height := 360;

      frmUserLogin.cbDatabase.ItemIndex := 0;
      frmUserLogin.edUser.Text := 'postgres';
      frmUserLogin.edPassword.Text := 'test';

      frmUserLogin.ShowModal();

      if frmUserLogin.ModalResult = mrOk then
      begin
        CheckResult := 1;
        if Area <> 'Database' then
        begin
          CheckResult := CheckUserPassword(Area, frmUserLogin.UserName, frmUserLogin.Password);
          if CheckResult = 1 then
          begin
            Result := True;
          end
          else
          begin
            Result := False;
          end;
        end
        else
        begin
          Result := True;
        end;
      end
      else
      begin
        Result := True; // False;
        CheckResult := 1;
      end;
    end
    else
    begin
      Information('Warning', 'Unknown login area. Please contact developer.');
      Exit;
    end;

      if frmUserLogin.ModalResult = mrCancel then
      begin
        frmUserLogin.LoginResult := lrtLoginCancelled;
      end
      else if (frmUserLogin.UserName = '') then
      begin
        frmUserLogin.LoginResult := lrtLoginUnsuccessful;
        frmUserLogin.UnsuccessfulLoginCause := ulcNoUsername;
      end
      else if (frmUserLogin.Password = '') then
      begin
        frmUserLogin.LoginResult := lrtLoginUnsuccessful;
        frmUserLogin.UnsuccessfulLoginCause := ulcNoPassword;
      end
      else if (CheckResult > 1) then
      begin
        case CheckResult of
          2 :
            begin
              frmUserLogin.LoginResult := lrtLoginUnsuccessful;
              frmUserLogin.UnsuccessfulLoginCause := ulcNoSuchUser;
            end;
          3 :
            begin
              frmUserLogin.LoginResult := lrtLoginUnsuccessful;
              frmUserLogin.UnsuccessfulLoginCause := ulcIncorrectPassword;

            end;
          4 :
            begin
              frmUserLogin.LoginResult := lrtLoginUnsuccessful;
              frmUserLogin.UnsuccessfulLoginCause := ulcPermissionError;

            end;
          5 :
            begin
              frmUserLogin.LoginResult := lrtLoginUnsuccessful;
              frmUserLogin.UnsuccessfulLoginCause := ulcInternalError;

            end;
        end;
      end
      else
      begin
        frmUserLogin.LoginResult := lrtLoginSuccessful;
      end;

    UserName      := frmUserLogin.UserName;
    Password      := frmUserLogin.Password;
    Host          := frmUserLogin.Host;
    DatabaseName  := frmUserLogin.Database;

  end;

end.
