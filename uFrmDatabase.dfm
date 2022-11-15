object frmDatabase: TfrmDatabase
  Left = 0
  Top = 0
  Cursor = crArrow
  Caption = 'Kivos Database Access'
  ClientHeight = 354
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object KivosConnection: TPgConnection
    PoolingOptions.MaxPoolSize = 500
    Pooling = True
    Username = 'postgres'
    Password = 'test'
    Server = 'localhost'
    LoginPrompt = False
    OnError = KivosConnectionError
    Database = 'kivos_300'
    Options.UseUnicode = True
    Options.EnablePgTimeStamps = True
    Schema = 'public'
    SSLOptions.Mode = smPrefer
    Left = 48
    Top = 32
  end
  object KivosSQL: TPgSQL
    Connection = KivosConnection
    Left = 48
    Top = 96
  end
  object KivosQuery: TPgQuery
    Connection = KivosConnection
    SQL.Strings = (
      'select * from tbl_users')
    Left = 112
    Top = 96
  end
  object KivosQuery2: TPgQuery
    Connection = KivosConnection
    SQL.Strings = (
      'select * from tbl_users')
    Left = 176
    Top = 96
  end
  object ImportCoonnection: TPgConnection
    PoolingOptions.MaxPoolSize = 500
    Pooling = True
    Username = 'postgres'
    Password = 'test'
    Server = 'localhost'
    LoginPrompt = False
    OnError = KivosConnectionError
    Database = 'kivos_300'
    Options.UseUnicode = True
    Options.EnableGeometrics = False
    Options.EnableComposites = False
    Schema = 'public'
    ConnectionTimeout = 100000
    SSLOptions.Mode = smPrefer
    Left = 144
    Top = 32
  end
end
