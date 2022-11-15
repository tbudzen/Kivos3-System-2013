inherited AddAmountChangeFrame: TAddAmountChangeFrame
  Width = 571
  Height = 467
  DoubleBuffered = True
  ParentDoubleBuffered = False
  ExplicitWidth = 571
  ExplicitHeight = 467
  object btnCancel: TcxButton
    Left = 258
    Top = 410
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAddAmount: TcxButton
    Left = 399
    Top = 410
    Width = 153
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add amount'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddAmountClick
  end
  object btnModifyAmount: TcxButton
    Left = 399
    Top = 371
    Width = 153
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify amount'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyAmountClick
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 18
    AutoSize = False
    Caption = 'Category name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 129
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 51
    AutoSize = False
    Caption = 'Value in category:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 129
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 85
    AutoSize = False
    Caption = 'Present amount:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 129
  end
  object edPresentAmount: TcxTextEdit
    Left = 151
    Top = 85
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
    Width = 185
  end
  object cbCategory: TcxDBComboBox
    Left = 151
    Top = 17
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
    Width = 185
  end
  object cbValue: TcxDBComboBox
    Left = 151
    Top = 51
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
    Width = 185
  end
  object cxButton2: TcxButton
    Left = 342
    Top = 19
    Width = 39
    Height = 25
    Caption = '...'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cxButton1: TcxButton
    Left = 342
    Top = 52
    Width = 39
    Height = 25
    Caption = '...'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 512
    Top = 160
  end
end
