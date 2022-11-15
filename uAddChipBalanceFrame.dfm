inherited AddChipBalanceFrame: TAddChipBalanceFrame
  Width = 724
  Height = 430
  ExplicitWidth = 724
  ExplicitHeight = 430
  object btnCancel: TcxButton
    Left = 399
    Top = 382
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAddAmount: TcxButton
    Left = 540
    Top = 382
    Width = 153
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add chip balance'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddAmountClick
  end
  object btnModifyAmount: TcxButton
    Left = 540
    Top = 382
    Width = 153
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify chip balance'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 6
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
    Top = 50
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
  object cxLabel1: TcxLabel
    Left = 16
    Top = 83
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
  object cxLabel3: TcxLabel
    Left = 16
    Top = 117
    AutoSize = False
    Caption = 'Initial amount:'
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
  object edInitialAmount: TcxTextEdit
    Left = 175
    Top = 117
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
    OnKeyPress = edInitialAmountKeyPress
    Width = 185
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 151
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
    Top = 151
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
    TabOrder = 3
    OnKeyPress = edPresentAmountKeyPress
    Width = 185
  end
  object cbCategory: TcxDBLookupComboBox
    Left = 175
    Top = 50
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        FieldName = 'name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.Shadow = False
    Style.TextStyle = []
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
  object cbValue: TcxDBLookupComboBox
    Left = 175
    Top = 83
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource2
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        FieldName = 'name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource3
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.Shadow = False
    Style.TextStyle = []
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
  object cxLabel5: TcxLabel
    Left = 16
    Top = 16
    AutoSize = False
    Caption = 'Id:'
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
  object edId: TcxTextEdit
    Left = 175
    Top = 16
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
    TabOrder = 12
    OnKeyPress = edPresentAmountKeyPress
    Width = 98
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 464
    Top = 248
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 488
    Top = 41
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery2
    Left = 624
    Top = 41
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 488
    Top = 89
  end
  object PgTable2: TPgTable
    TableName = 'tbl_values'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 424
    Top = 89
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 624
    Top = 89
  end
  object PgTable3: TPgTable
    TableName = 'tbl_values'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 560
    Top = 89
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_categories where used_in_chip_balance = 1')
    Active = True
    Left = 424
    Top = 40
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_categories where used_in_chip_balance = 1')
    Left = 560
    Top = 40
  end
end
