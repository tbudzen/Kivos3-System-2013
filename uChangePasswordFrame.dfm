inherited ChangePasswordFrame: TChangePasswordFrame
  Width = 520
  Height = 333
  Anchors = []
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 520
  ExplicitHeight = 333
  object edCurrentPassword: TcxTextEdit
    Left = 187
    Top = 12
    AutoSize = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 28
    Width = 253
  end
  object edNewPassword: TcxTextEdit
    Left = 187
    Top = 45
    AutoSize = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 28
    Width = 253
  end
  object edNewPassword2: TcxTextEdit
    Left = 187
    Top = 79
    AutoSize = False
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 28
    Width = 253
  end
  object btnCancel: TcxButton
    Left = 114
    Top = 138
    Width = 132
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnChangePassword: TcxButton
    Left = 252
    Top = 138
    Width = 188
    Height = 37
    Anchors = [akLeft, akBottom]
    Caption = 'Change password'
    ModalResult = 1
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnChangePasswordClick
  end
  object cxLabel1: TcxLabel
    Left = 11
    Top = 13
    AutoSize = False
    Caption = 'Current password:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 27
    Width = 178
  end
  object cxLabel2: TcxLabel
    Left = 11
    Top = 46
    AutoSize = False
    Caption = 'New password:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 178
  end
  object cxLabel3: TcxLabel
    Left = 11
    Top = 80
    AutoSize = False
    Caption = 'New password (retype):'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 29
    Width = 178
  end
end
