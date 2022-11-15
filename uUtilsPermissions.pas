unit uUtilsPermissions;

//
//  Permissions
//
//
//

interface

uses
  Vcl.Controls, uFrmUserLogin, uGlobals, uSystem;

  function CheckUserPassword(Area, UserName, Password : WideString) : Boolean;
  function GetPermissions(UserName, Area : WideString) : Boolean;
  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean; overload;
  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString; var DatabaseName : WideString) : Boolean; overload;

implementation

  function CheckUserPassword(Area, UserName, Password : WideString) : Boolean;
  begin
    Result :=
      ((UserName = 'admin') and (Password = '123')) or
      ((UserName = 'test') and (Password = 'test')) or
      ((UserName = 'postgres') and (Password = 'test'));
  end;

  function GetPermissions(UserName, Area : WideString) : Boolean;
  begin
    Result := True;
  end;

  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString) : Boolean;
  var
    __dummy__ : WideString;
  begin
    Result := UserLogin(Area, UserName, Password, __dummy__);
  end;

  function UserLogin(Area : WideString; var UserName : WideString; var Password : WideString; var DatabaseName : WideString) : Boolean;
  begin

    Result := False;

    frmUserLogin.LoginArea := Area;

    frmUserLogin.Image1.Visible := (Area <> 'Database');
    frmUserLogin.Image2.Visible := (Area = 'Database');
    // 88, 128, 168
    frmUserLogin.lbDatabase.Visible := (Area = 'Database');
    frmUserLogin.cbDatabase.Visible := (Area = 'Database');
    //frmUserLogin.btnAddDataSource.Visible := (Area = 'database');

    if (Area = 'Program') then
    begin

      frmUserLogin.btnWindowsAuthenticate.Top := 224;
      frmUserLogin.btnCancel.Top := 256;
      frmUserLogin.btnLogin.Top := 256;
      frmUserLogin.lbUser.Top := 88;
      frmUserLogin.edUser.Top := 88;
      frmUserLogin.lbPassword.Top := 128;
      frmUserLogin.edPassword.Top := 128;
      frmUserLogin.Height := 328;

      frmUserLogin.ShowModal();

      frmUserLogin.edUser.SetFocus();

      Result :=
        (frmUserLogin.ModalResult = mrOk) and
        (CheckUserPassword(Area, frmUserLogin.UserName, frmUserLogin.Password) = True);
        //(GetPermissions(frmUserLogin.UserName, Area) = True);

    end
    else
    if (Area = 'Database') then
    begin

      frmUserLogin.btnWindowsAuthenticate.Top := 264;
      frmUserLogin.btnCancel.Top := 296;
      frmUserLogin.btnLogin.Top := 296;
      frmUserLogin.lbDatabase.Top := 128;
      frmUserLogin.cbDatabase.Top := 128;
      frmUserLogin.lbUser.Top := 168;
      frmUserLogin.edUser.Top := 168;
      frmUserLogin.lbPassword.Top := 208;
      frmUserLogin.edPassword.Top := 208;
      frmUserLogin.Height := 368;

      frmUserLogin.ShowModal();

      frmUserLogin.edUser.SetFocus();

      Result :=
        (frmUserLogin.ModalResult = mrOk) and
        (CheckUserPassword(Area, frmUserLogin.UserName, frmUserLogin.Password) = True);
        //(GetPermissions(frmUserLogin.UserName, Area) = True);

    end
    else
    begin
      Information('Error', 'Unknown login area. Please contact developer.');
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
      else if not CheckUserPassword(Area, frmUserLogin.UserName, frmUserLogin.Password) then
      begin
        frmUserLogin.LoginResult := lrtLoginUnsuccessful;
        frmUserLogin.UnsuccessfulLoginCause := ulcBadUsernameOrPassword;
      end
      else
      begin
        frmUserLogin.LoginResult := lrtLoginSuccessful;
      end;

    UserName := frmUserLogin.UserName;
    Password := frmUserLogin.Password;
    DatabaseName := frmUserLogin.Database;

  end;

end.
