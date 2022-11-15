inherited AddCurrencyFrame: TAddCurrencyFrame
  Width = 563
  Height = 381
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 563
  ExplicitHeight = 381
  object btnModifyCurrency: TcxButton
    Left = 394
    Top = 332
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyCurrencyClick
  end
  object btnAddCurrency: TcxButton
    Left = 394
    Top = 332
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddCurrencyClick
  end
  object btnCancel: TcxButton
    Left = 280
    Top = 332
    Width = 108
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object edCurrencyName: TcxTextEdit
    Left = 113
    Top = 49
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 1
    Width = 243
  end
  object cxLabel2: TcxLabel
    Left = 18
    Top = 50
    AutoSize = False
    Caption = 'Name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 89
  end
  object cxLabel3: TcxLabel
    Left = 18
    Top = 84
    AutoSize = False
    Caption = 'Description:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 89
  end
  object edCurrencyDescription: TcxMemo
    Left = 113
    Top = 83
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 2
    Height = 89
    Width = 243
  end
  object edCurrencySymbol: TcxTextEdit
    Left = 113
    Top = 15
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 0
    Width = 243
  end
  object cxLabel1: TcxLabel
    Left = 18
    Top = 16
    AutoSize = False
    Caption = 'Symbol:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 89
  end
  object edId: TcxTextEdit
    Left = 457
    Top = 22
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 9
    Visible = False
    Width = 42
  end
  object cxLabel4: TcxLabel
    Left = 434
    Top = 22
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
    Height = 28
    Width = 33
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 504
    Top = 184
  end
end
