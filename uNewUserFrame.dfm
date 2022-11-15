inherited NewUserFrame: TNewUserFrame
  Width = 666
  Height = 482
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 666
  ExplicitHeight = 482
  object btnCancel: TcxButton
    Left = 368
    Top = 431
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAddUser: TcxButton
    Left = 509
    Top = 431
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add user'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edLogin: TcxTextEdit
    Left = 175
    Top = 15
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 185
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 16
    AutoSize = False
    Caption = 'Login:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object edFirstName: TcxTextEdit
    Left = 175
    Top = 73
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 185
  end
  object edLastName: TcxTextEdit
    Left = 175
    Top = 107
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 185
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 74
    AutoSize = False
    Caption = 'First name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 108
    AutoSize = False
    Caption = 'Last name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 166
    AutoSize = False
    Caption = 'Password:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 200
    AutoSize = False
    Caption = 'Confirm password:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 153
  end
  object edPassword: TcxMaskEdit
    Left = 175
    Top = 165
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    TabOrder = 10
    Width = 185
  end
  object edConfirmPassword: TcxMaskEdit
    Left = 175
    Top = 200
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    TabOrder = 11
    Width = 185
  end
  object cbUserHasToChangePassword: TcxCheckBox
    Left = 16
    Top = 256
    Caption = 'User has to change password at first login'
    ParentFont = False
    State = cbsChecked
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    TabOrder = 12
    Width = 305
  end
  object cbUseWindowsAuthentication: TcxCheckBox
    Left = 16
    Top = 290
    Caption = 'Use Windows authentication for this user'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 13
    Width = 305
  end
  object btnModifyUser: TcxButton
    Left = 509
    Top = 431
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify user'
    TabOrder = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyUserClick
  end
  object PgSQL1: TPgSQL
    Connection = PgConnection1
    Left = 504
    Top = 184
  end
  object PgConnection1: TPgConnection
    Username = 'postgres'
    Password = 'test'
    Server = 'localhost'
    Connected = false
    LoginPrompt = False
    Database = 'kivos_30'
    Options.UseUnicode = True
    SSLOptions.Mode = smPrefer
    Left = 504
    Top = 136
  end
end
