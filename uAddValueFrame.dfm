inherited AddValueFrame: TAddValueFrame
  Width = 711
  Height = 417
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 711
  ExplicitHeight = 417
  object btnAddValue: TcxButton
    Left = 547
    Top = 367
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddValueClick
  end
  object btnCancel: TcxButton
    Left = 406
    Top = 367
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnModifyValue: TcxButton
    Left = 547
    Top = 367
    Width = 137
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyValueClick
  end
  object edValueName: TcxTextEdit
    Left = 119
    Top = 17
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 0
    Width = 253
  end
  object edValueMultiplier: TcxTextEdit
    Left = 119
    Top = 46
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 1
    OnKeyPress = edValueMultiplierKeyPress
    Width = 253
  end
  object lbValueName: TcxLabel
    Left = 16
    Top = 16
    AutoSize = False
    Caption = 'Name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 24
    Width = 97
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 45
    AutoSize = False
    Caption = 'Multiplier:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 24
    Width = 97
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 75
    AutoSize = False
    Caption = 'Category:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 23
    Width = 97
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 103
    AutoSize = False
    Caption = 'Unit:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 24
    Width = 97
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 132
    AutoSize = False
    Caption = 'Currency:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 23
    Width = 97
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 161
    AutoSize = False
    Caption = 'Description:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 32
    Width = 97
  end
  object edValueDescription: TcxMemo
    Left = 119
    Top = 162
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Height = 89
    Width = 253
  end
  object cbCategory: TcxDBLookupComboBox
    Left = 119
    Top = 75
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        FieldName = 'name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.TextStyle = []
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 2
    Width = 253
  end
  object cbUnit: TcxDBLookupComboBox
    Left = 119
    Top = 104
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource2
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        FieldName = 'name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource5
    Properties.PopupAlignment = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.TextStyle = []
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Width = 253
  end
  object cbCurrency: TcxDBLookupComboBox
    Left = 119
    Top = 133
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource3
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        MinWidth = 0
        Width = 0
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        FieldName = 'symbol'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource6
    Properties.PopupAlignment = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.TextStyle = []
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 4
    Width = 130
  end
  object edId: TcxTextEdit
    Left = 429
    Top = 16
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 15
    Visible = False
    Width = 42
  end
  object cxLabel6: TcxLabel
    Left = 398
    Top = 17
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Visible = False
    Height = 22
    Width = 57
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 496
    Top = 224
  end
  object PgTable1: TPgTable
    TableName = 'tbl_categories'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 496
    Top = 112
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 552
    Top = 112
  end
  object PgTable2: TPgTable
    TableName = 'tbl_units'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 496
    Top = 144
  end
  object PgTable3: TPgTable
    TableName = 'tbl_currencies'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 496
    Top = 176
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 552
    Top = 144
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 552
    Top = 176
  end
  object PgTable4: TPgTable
    TableName = 'tbl_categories'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 600
    Top = 112
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 656
    Top = 112
  end
  object PgTable5: TPgTable
    TableName = 'tbl_units'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 600
    Top = 144
  end
  object PgTable6: TPgTable
    TableName = 'tbl_currencies'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 600
    Top = 176
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgTable5
    Left = 656
    Top = 144
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgTable6
    Left = 656
    Top = 176
  end
end
