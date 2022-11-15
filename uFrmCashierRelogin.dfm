object frmCashierRelogin: TfrmCashierRelogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 360
  ClientWidth = 572
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    572
    360)
  PixelsPerInch = 96
  TextHeight = 13
  object lbLogin: TLabel
    Left = 25
    Top = 23
    Width = 510
    Height = 122
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 'Cashier login:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object lbUser: TcxLabel
    Left = 191
    Top = 173
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Cashier:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.TextColor = clBlack
    Style.TextStyle = []
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 36
    Width = 113
    AnchorY = 191
  end
  object lbPassword: TcxLabel
    Left = 191
    Top = 215
    Anchors = [akRight, akBottom]
    AutoSize = False
    Caption = 'Password:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.TextColor = clBlack
    Style.TextStyle = []
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 36
    Width = 113
    AnchorY = 233
  end
  object edPassword: TcxMaskEdit
    Left = 310
    Top = 215
    Anchors = [akRight, akBottom]
    BeepOnEnter = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.BorderStyle = ebsUltraFlat
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 2
    Width = 230
  end
  object btnCancel: TcxButton
    Left = 246
    Top = 288
    Width = 113
    Height = 36
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ModalResult = 2
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnLogin: TcxButton
    Left = 365
    Top = 281
    Width = 175
    Height = 43
    Anchors = [akRight, akBottom]
    Caption = 'Confirm'
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ModalResult = 1
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbCashier: TcxDBLookupComboBox
    Left = 310
    Top = 173
    DataBinding.DataField = 'id_user'
    DataBinding.DataSource = PgDataSource8
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.KeyFieldNames = 'id_user'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id_user'
      end
      item
        Width = 200
        FieldName = 'user_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = PgDataSource1
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 230
  end
  object PgQuery6: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdu.id_user, u.user_name '
      
        'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user' +
        ' = u.id')
    Active = True
    Left = 144
    Top = 104
  end
  object PgDataSource8: TPgDataSource
    DataSet = PgQuery6
    Left = 216
    Top = 104
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 352
    Top = 104
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdu.id_user, u.user_name '
      
        'from tbl_cd_users as cdu left join tbl_users as u on cdu.id_user' +
        ' = u.id')
    Active = True
    Left = 288
    Top = 104
  end
end
