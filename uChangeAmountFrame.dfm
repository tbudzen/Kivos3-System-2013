inherited ChangeAmountFrame: TChangeAmountFrame
  Width = 626
  Height = 491
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 626
  ExplicitHeight = 491
  object btnCancel: TcxButton
    Left = 316
    Top = 439
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
  object btnAddAmount: TcxButton
    Left = 457
    Top = 439
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add amount'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnModifyAmount: TcxButton
    Left = 457
    Top = 400
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify amount'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 18
    AutoSize = False
    Caption = 'Category:'
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
  object cbCategory: TcxComboBox
    Left = 175
    Top = 17
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
  object cxLabel1: TcxLabel
    Left = 16
    Top = 51
    AutoSize = False
    Caption = 'Value:'
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
  object cbValue: TcxComboBox
    Left = 175
    Top = 51
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 185
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
    Width = 153
  end
  object edPresentAmount: TcxTextEdit
    Left = 175
    Top = 85
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 8
    Width = 185
  end
end
