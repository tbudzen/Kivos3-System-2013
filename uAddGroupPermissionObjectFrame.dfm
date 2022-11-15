inherited AddGroupPermissionObjectFrame: TAddGroupPermissionObjectFrame
  Width = 709
  Height = 374
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 709
  ExplicitHeight = 374
  object btnCancel: TcxButton
    Left = 261
    Top = 325
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAddGroupPermissionObject: TcxButton
    Left = 402
    Top = 325
    Width = 258
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
    OnClick = btnAddGroupPermissionObjectClick
  end
  object cxLabel6: TcxLabel
    Left = 16
    Top = 18
    AutoSize = False
    Caption = 'Group:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 97
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 119
    Top = 17
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        Width = 20
        FieldName = 'id'
      end
      item
        FieldName = 'group_name'
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
    TabOrder = 0
    Width = 185
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 52
    AutoSize = False
    Caption = 'Permission:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 97
  end
  object cxDBLookupComboBox2: TcxDBLookupComboBox
    Left = 119
    Top = 51
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource2
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        Width = 20
        FieldName = 'id'
      end
      item
        FieldName = 'permission_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource5
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
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
    TabOrder = 1
    Width = 185
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 86
    AutoSize = False
    Caption = 'Object:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 97
  end
  object cxDBLookupComboBox3: TcxDBLookupComboBox
    Left = 119
    Top = 85
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource3
    ParentFont = False
    Properties.DropDownListStyle = lsEditList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        Width = 20
        FieldName = 'id'
      end
      item
        FieldName = 'object_name'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource6
    Properties.PopupAlignment = taCenter
    Properties.ReadOnly = False
    Properties.ValidateOnEnter = False
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
    Width = 314
  end
  object btnModifyGroupPermissionObject: TcxButton
    Left = 435
    Top = 325
    Width = 258
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyGroupPermissionObjectClick
  end
  object edId: TcxTextEdit
    Left = 487
    Top = 3
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
    Width = 26
  end
  object cxLabel3: TcxLabel
    Left = 464
    Top = 3
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
    Left = 464
    Top = 200
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 512
    Top = 48
  end
  object PgTable1: TPgTable
    TableName = 'tbl_access_groups'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 448
    Top = 48
  end
  object PgTable2: TPgTable
    TableName = 'tbl_access_permissions'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 448
    Top = 88
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 512
    Top = 88
  end
  object PgTable3: TPgTable
    TableName = 'tbl_access_objects'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 448
    Top = 120
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 512
    Top = 120
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 648
    Top = 48
  end
  object PgTable4: TPgTable
    TableName = 'tbl_access_groups'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 584
    Top = 48
  end
  object PgTable5: TPgTable
    TableName = 'tbl_access_permissions'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 584
    Top = 88
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgTable5
    Left = 648
    Top = 88
  end
  object PgTable6: TPgTable
    TableName = 'tbl_access_objects'
    Connection = frmDatabase.KivosConnection
    Active = True
    Left = 584
    Top = 120
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgTable6
    Left = 648
    Top = 120
  end
end
