object frmDBAccess: TfrmDBAccess
  Left = 0
  Top = 0
  Caption = 'Kivos Database Access'
  ClientHeight = 337
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object KivosDatabase: TDatabase
    AliasName = 'PostgreSQL35W'
    DatabaseName = 'Kivos'
    HandleShared = True
    LoginPrompt = False
    Params.Strings = (
      'SERVER=localhost'
      'PORT=5432'
      'LOCATION=bern_2'
      'PASSWORD=test'
      'USER NAME=postgres'
      'EXTENDED PROPERTIES=""')
    SessionName = 'Default'
    Left = 56
    Top = 32
  end
  object KivosConnection: TSQLConnection
    ConnectionName = 'KivosConnection'
    DriverName = 'ODBC'
    LoginPrompt = False
    Params.Strings = (
      'drivername=ODBC'
      'Database=PostgreSQL35W'
      'HostName=localhost'
      'User_Name=postgres'
      'Password=test')
    Connected = false
    Left = 53
    Top = 101
  end
end
