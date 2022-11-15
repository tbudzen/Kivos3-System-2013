inherited AddCashDeskFrame: TAddCashDeskFrame
  Width = 957
  Height = 691
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 957
  ExplicitHeight = 691
  object btnCancel: TcxButton
    Left = 688
    Top = 13
    Width = 98
    Height = 31
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnAddCashDesk: TcxButton
    Left = 792
    Top = 13
    Width = 153
    Height = 31
    Anchors = [akTop, akRight]
    Caption = 'Add cash desk'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddCashDeskClick
  end
  object btnModifyCashDesk: TcxButton
    Left = 792
    Top = 13
    Width = 153
    Height = 31
    Anchors = [akTop, akRight]
    Caption = 'Modify cash desk'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyCashDeskClick
  end
  object edId: TcxTextEdit
    Left = 486
    Top = 17
    Enabled = False
    ParentFont = False
    Style.BorderColor = clNone
    Style.Color = clMedGray
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Springtime'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Springtime'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Springtime'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Springtime'
    TabOrder = 7
    Visible = False
    Width = 31
  end
  object lbValueName: TcxLabel
    Left = 464
    Top = 18
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.BorderColor = clMenuText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    Visible = False
    Height = 22
    Width = 28
  end
  object edName: TcxTextEdit
    Left = 121
    Top = 17
    ParentFont = False
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsUltraFlat
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 0
    OnExit = edNameExit
    Width = 208
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 17
    AutoSize = False
    Caption = 'Name:'
    ParentFont = False
    Style.BorderColor = clMenuText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    Height = 27
    Width = 99
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 46
    AutoSize = False
    Caption = 'Account:'
    ParentFont = False
    Style.BorderColor = clMenuText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    Height = 23
    Width = 99
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 75
    AutoSize = False
    Caption = 'Workstation:'
    ParentFont = False
    Style.BorderColor = clMenuText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    Visible = False
    Height = 28
    Width = 99
  end
  object cbAccount: TcxDBLookupComboBox
    Left = 121
    Top = 46
    DataBinding.DataField = 'account_id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.DropDownWidth = 400
    Properties.KeyFieldNames = 'name'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        Sorting = False
        Width = 100
        FieldName = 'account_id'
      end
      item
        MinWidth = 0
        SortOrder = soAscending
        Width = 300
        FieldName = 'name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = PgDataSource4
    Properties.PopupAlignment = taCenter
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsUltraFlat
    Style.Color = clWhite
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
    Width = 208
  end
  object cbWorkstation: TcxDBLookupComboBox
    Left = 121
    Top = 75
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
    Style.BorderColor = clSilver
    Style.BorderStyle = ebsUltraFlat
    Style.Color = clWhite
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
    Visible = False
    Width = 208
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 75
    AutoSize = False
    Caption = 'Description:'
    ParentFont = False
    Style.BorderColor = clMenuText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TextColor = clDefault
    Style.IsFontAssigned = True
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    Height = 22
    Width = 99
  end
  object edDescription: TcxMemo
    Left = 121
    Top = 75
    ParentFont = False
    Style.BorderColor = clSilver
    Style.Color = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Stardust'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Stardust'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Stardust'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Stardust'
    TabOrder = 3
    Height = 53
    Width = 208
  end
  object cbIsATable: TcxCheckBox
    Left = 16
    Top = 161
    Caption = 'Cash desk is a table ?'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.TextColor = clMenuText
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.BorderColor = clHotLight
    StyleFocused.Color = cl3DLight
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 13
    Transparent = True
    Width = 321
  end
  object cxPageControl1: TcxPageControl
    Left = 16
    Top = 188
    Width = 929
    Height = 482
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 14
    Visible = False
    Properties.ActivePage = cxTabSheet2
    Properties.Style = 11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ClientRectBottom = 477
    ClientRectLeft = 5
    ClientRectRight = 924
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = '    Shift configuration    '
      ExplicitTop = 29
      ExplicitHeight = 448
      object cxLabel4: TcxLabel
        Left = 16
        Top = 16
        AutoSize = False
        Caption = 'Cash desk properties'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 161
      end
      object cbAlwaysActive: TcxCheckBox
        Left = 16
        Top = 41
        Caption = 'Always active ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 1
        Transparent = True
        Width = 137
      end
      object cbMustOpenDaily: TcxCheckBox
        Left = 16
        Top = 66
        Caption = 'Must open daily ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        Transparent = True
        Width = 137
      end
      object cbAllowClose: TcxCheckBox
        Left = 16
        Top = 91
        Caption = 'Allow close ?'
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        Style.TextColor = clMenuText
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        Transparent = True
        Width = 137
      end
      object cbUsedInChipBalance: TcxCheckBox
        Left = 16
        Top = 116
        Caption = 'Used in chip balance ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 4
        Transparent = True
        Width = 145
      end
      object cbDefaultCarryover: TcxCheckBox
        Left = 16
        Top = 141
        Caption = 'Values are moved ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 5
        Transparent = True
        Width = 161
      end
      object cxLabel6: TcxLabel
        Left = 264
        Top = 42
        AutoSize = False
        Caption = 'Start amount:'
        Transparent = True
        Height = 19
        Width = 81
      end
      object cxTextEdit1: TcxTextEdit
        Left = 349
        Top = 41
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 7
        Width = 113
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '    Add values    '
      ImageIndex = 1
      OnShow = cxTabSheet2Show
      ExplicitTop = 29
      ExplicitHeight = 448
      DesignSize = (
        919
        449)
      object cxGrid10: TcxGrid
        Left = 3
        Top = 52
        Width = 351
        Height = 394
        Anchors = [akLeft, akTop, akBottom]
        PopupMenu = PopupMenu_Val
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 393
        object cxGridDBTableView8: TcxGridDBTableView
          DataController.DataSource = PgDataSource11
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView8id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableViewColumn_Ord: TcxGridDBColumn
            Caption = 'Sort order'
            DataBinding.FieldName = 'ord'
            SortIndex = 0
            SortOrder = soAscending
            Width = 60
          end
          object cxGridDBTableView8name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBTableView8id_category: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'id_category'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView8name_1: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'name_1'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBTableView8useinTblCout: TcxGridDBColumn
            Caption = 'Value use in TableCount'
            DataBinding.FieldName = 'is_table'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'false'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 64
          end
          object cxGridDBTableView8Column1: TcxGridDBColumn
            Caption = 'Values use in Drop'
            DataBinding.FieldName = 'is_drop'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 55
          end
          object cxGridDBTableView8Column2: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
      object cxGrid11: TcxGrid
        Left = 420
        Top = 52
        Width = 495
        Height = 394
        Anchors = [akLeft, akTop, akBottom]
        PopupMenu = PopupMenu_Posible
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 393
        object cxGridDBTableView9: TcxGridDBTableView
          DataController.DataSource = PgDataSource3
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView9id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView9id_category: TcxGridDBColumn
            DataBinding.FieldName = 'id_category'
            Visible = False
          end
          object cxGridDBTableView9name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 56
          end
          object cxGridDBTableView9multiplier: TcxGridDBColumn
            Caption = 'Multiplier'
            DataBinding.FieldName = 'multiplier'
            Width = 58
          end
          object cxGridDBTableView9name_1: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'name_1'
            Width = 89
          end
          object cxGridDBTableView9name_2: TcxGridDBColumn
            Caption = 'Unit'
            DataBinding.FieldName = 'name_2'
            Width = 43
          end
          object cxGridDBTableView9symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            Width = 43
          end
          object cxGridDBTableView9Column_Ord: TcxGridDBColumn
            Caption = 'Sort order'
            DataBinding.FieldName = 'sort_order'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView9Column1: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.MultiLine = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Sorting = False
            Width = 30
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = cxGridDBTableView9
        end
      end
      object cxButton3: TcxButton
        Left = 360
        Top = 83
        Width = 53
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 360
        Top = 52
        Width = 53
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        OnClick = cxButton4Click
      end
      object cxLabel46: TcxLabel
        Left = 419
        Top = 29
        AutoSize = False
        Caption = 'All possible values:'
        Transparent = True
        Height = 17
        Width = 121
      end
      object cxLabel45: TcxLabel
        Left = 3
        Top = 29
        AutoSize = False
        Caption = 'Values for transaction:'
        Transparent = True
        Height = 17
        Width = 121
      end
      object cxLabel44: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = 'Values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 20
        Width = 49
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = '    Move values    '
      ImageIndex = 4
      OnShow = cxTabSheet5Show
      ExplicitTop = 29
      ExplicitHeight = 448
      DesignSize = (
        919
        449)
      object cxLabel11: TcxLabel
        Left = 3
        Top = 373
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Cashdesk open account:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 150
      end
      object cxLabel12: TcxLabel
        Left = 3
        Top = 398
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Difference open account:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 150
      end
      object cxLabel13: TcxLabel
        Left = 333
        Top = 398
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Difference close account:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 145
      end
      object cxLabel14: TcxLabel
        Left = 333
        Top = 373
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Cashdesk close account:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 145
      end
      object cxLabel15: TcxLabel
        Left = 3
        Top = 348
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'On open'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 78
      end
      object cxLabel16: TcxLabel
        Left = 333
        Top = 348
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'On close'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 73
      end
      object cxLabel17: TcxLabel
        Left = 3
        Top = 323
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Category:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 129
      end
      object cbCarryOver: TcxCheckBox
        Left = 3
        Top = 291
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Carry over ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.TextColor = clMenuText
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 7
        Transparent = True
        ExplicitHeight = 0
        Width = 89
      end
      object cbAutomatic: TcxCheckBox
        Left = 130
        Top = 291
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Automatic ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 8
        Transparent = True
        ExplicitHeight = 0
        Width = 89
      end
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 184
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 9
        Transparent = True
        Height = 1
        Width = 617
      end
      object btnSaveChanges: TcxButton
        Left = 680
        Top = 275
        Width = 236
        Height = 46
        Anchors = [akTop, akRight]
        Caption = 'Save changes'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSaveChangesClick
      end
      object edFixedAmount: TcxTextEdit
        Left = 484
        Top = 427
        Anchors = [akLeft, akTop, akBottom]
        Style.BorderColor = clMenuText
        Style.Color = cl3DLight
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 11
        OnKeyPress = edFixedAmountKeyPress
        ExplicitHeight = 21
        Width = 141
      end
      object cxLabel18: TcxLabel
        Left = 333
        Top = 423
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = False
        Caption = 'Fixed amount:'
        Transparent = True
        ExplicitHeight = 18
        Height = 19
        Width = 81
      end
      object cbCategory: TcxDBLookupComboBox
        Left = 159
        Top = 319
        Anchors = [akLeft, akTop, akBottom]
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource12
        Enabled = False
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = PgDataSource13
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 13
        ExplicitHeight = 21
        Width = 138
      end
      object cbOpenAccount: TcxDBLookupComboBox
        Left = 159
        Top = 369
        Anchors = [akLeft, akTop, akBottom]
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource14
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = PgDataSource15
        Style.BorderColor = clMenuText
        Style.Color = cl3DLight
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 14
        ExplicitHeight = 21
        Width = 138
      end
      object cbDiffOpenAccount: TcxDBLookupComboBox
        Left = 159
        Top = 398
        Anchors = [akLeft, akTop, akBottom]
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource17
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = PgDataSource16
        Style.BorderColor = clMenuText
        Style.Color = cl3DLight
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 15
        ExplicitHeight = 21
        Width = 138
      end
      object cbCloseAccount: TcxDBLookupComboBox
        Left = 484
        Top = 369
        Anchors = [akLeft, akTop, akBottom]
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource19
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = PgDataSource18
        Style.BorderColor = clMenuText
        Style.Color = cl3DLight
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 16
        ExplicitHeight = 21
        Width = 141
      end
      object cbDiffCloseAccount: TcxDBLookupComboBox
        Left = 484
        Top = 398
        Anchors = [akLeft, akTop, akBottom]
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource21
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = PgDataSource20
        Style.BorderColor = clMenuText
        Style.Color = cl3DLight
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.BorderColor = clMenuText
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 17
        ExplicitHeight = 21
        Width = 141
      end
      object cxDBTreeList1: TcxDBTreeList
        Left = 3
        Top = 3
        Width = 913
        Height = 266
        Cursor = crHandPoint
        Anchors = [akLeft, akTop, akRight, akBottom]
        Bands = <
          item
          end>
        DataController.DataSource = PgDataSource22
        DataController.ParentField = 'parent_id'
        DataController.KeyField = 'id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.WaitForExpandNodeTime = 15
        OptionsCustomizing.StackedColumns = False
        OptionsData.Inserting = True
        OptionsData.AutoCalcKeyValue = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLineColor = clBtnFace
        OptionsView.GridLines = tlglBoth
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 24
        OptionsView.TreeLineColor = clMedGray
        OptionsView.UseImageIndexForSelected = False
        ParentFont = False
        PopupMenu = PopupMenu_Val
        RootValue = -1
        Styles.Selection = cxStyle14
        Styles.ContentEven = cxStyle1
        Styles.ContentOdd = cxStyle6
        TabOrder = 18
        OnFocusedNodeChanged = cxDBTreeList1FocusedNodeChanged
        ExplicitHeight = 265
        object cxDBTreeList1parent_id: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Category'
          DataBinding.FieldName = 'parent_id'
          Width = 152
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Category'
          DataBinding.FieldName = 'id'
          Width = 130
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1value_id: TcxDBTreeListColumn
          DataBinding.FieldName = 'value_id'
          Width = 100
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id_cashdesk: TcxDBTreeListColumn
          Visible = False
          Caption.Text = 'Cashdesk'
          DataBinding.FieldName = 'id_cashdesk'
          Width = 100
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id_account_open: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Open'
          DataBinding.FieldName = 'id_account_open'
          Width = 78
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id_account_diff_open: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Diff. open'
          DataBinding.FieldName = 'id_account_diff_open'
          Width = 80
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id_account_close: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Close'
          DataBinding.FieldName = 'id_account_close'
          Width = 82
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1id_account_diff_close: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Diff. close'
          DataBinding.FieldName = 'id_account_diff_close'
          Width = 76
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1carryover: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Carry over ?'
          DataBinding.FieldName = 'carryover'
          Width = 78
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1automatic: TcxDBTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Automatic ?'
          DataBinding.FieldName = 'automatic'
          Width = 80
          Position.ColIndex = 9
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1fixed_amount: TcxDBTreeListColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Caption.AlignHorz = taCenter
          Caption.GlyphAlignHorz = taCenter
          Caption.Text = 'Fixed amount'
          DataBinding.FieldName = 'fixed_amount'
          Width = 78
          Position.ColIndex = 10
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'id_move_category'
          Position.ColIndex = 11
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '    Add transactions    '
      ImageIndex = 2
      ExplicitTop = 29
      ExplicitHeight = 448
      DesignSize = (
        919
        449)
      object cxLabel7: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = 'Transactions for cash desk'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 18
        Width = 272
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 27
        Width = 431
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Val
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 418
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource10
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGrid1DBTableView1id_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_transaction'
            Visible = False
          end
          object cxGrid1DBTableView1order_id: TcxGridDBColumn
            Caption = 'Order id'
            DataBinding.FieldName = 'order_id'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object cxGrid1DBTableView1Column_Ord: TcxGridDBColumn
            Caption = 'Sort order'
            DataBinding.FieldName = 'ord'
            SortIndex = 0
            SortOrder = soAscending
            Width = 35
          end
          object cxGrid1DBTableView1name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1account_id_to: TcxGridDBColumn
            Caption = 'To account'
            DataBinding.FieldName = 'account_id_to'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 30
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton5: TcxButton
        Left = 440
        Top = 27
        Width = 56
        Height = 27
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton5Click
      end
      object cxButton6: TcxButton
        Left = 440
        Top = 60
        Width = 56
        Height = 27
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton6Click
      end
      object cxGrid2: TcxGrid
        Left = 502
        Top = 27
        Width = 425
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Posible
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 418
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource6
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView1order_id: TcxGridDBColumn
            Caption = 'Order id'
            DataBinding.FieldName = 'order_id'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
            Width = 40
          end
          object cxGridDBTableView1name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView1symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView1account_id_to: TcxGridDBColumn
            Caption = 'To account'
            DataBinding.FieldName = 'account_id_to'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 30
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxLabel8: TcxLabel
        Left = 502
        Top = 3
        AutoSize = False
        Caption = 'All possible transactions'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 18
        Width = 272
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = '    Add multiple transactions    '
      ImageIndex = 3
      ExplicitTop = 29
      ExplicitHeight = 448
      DesignSize = (
        919
        449)
      object cxGrid3: TcxGrid
        Left = 484
        Top = 27
        Width = 405
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Posible
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 418
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = PgDataSource7
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView2id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView2name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView2description: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'description'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView2must_be_balanced: TcxGridDBColumn
            Caption = 'Must be balanced ?'
            DataBinding.FieldName = 'must_be_balanced'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxLabel9: TcxLabel
        Left = 484
        Top = 3
        AutoSize = False
        Caption = 'All possible multiple transactions'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 18
        Width = 272
      end
      object cxButton7: TcxButton
        Left = 404
        Top = 27
        Width = 74
        Height = 27
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton7Click
      end
      object cxButton8: TcxButton
        Left = 404
        Top = 60
        Width = 74
        Height = 27
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton8Click
      end
      object cxGrid4: TcxGrid
        Left = 3
        Top = 27
        Width = 395
        Height = 419
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Val
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 418
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = PgDataSource9
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView3id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView3name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxLabel10: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = 'Multiple transactions for cash desk'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
        Height = 18
        Width = 272
      end
    end
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 496
    Top = 48
  end
  object PgTable2: TPgTable
    TableName = 'tbl_workstations'
    Connection = frmDatabase.KivosConnection
    Left = 440
    Top = 104
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 496
    Top = 104
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery2
    Left = 600
    Top = 72
  end
  object PgTable5: TPgTable
    TableName = 'tbl_workstations'
    Connection = frmDatabase.KivosConnection
    Left = 544
    Top = 104
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgTable5
    Left = 600
    Top = 104
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 368
    Top = 88
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 424
    Top = 64
  end
  object PgQuery2: TPgQuery
    KeyFields = 'name'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    IndexFieldNames = 'name'
    Left = 544
    Top = 72
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select v.*, cat.name, u.name, curr.symbol, active'
      
        'from tbl_values as v, tbl_categories as cat, tbl_units as u, tbl' +
        '_currencies as curr'
      
        'where v.id_category = cat.id and v.id_unit = u.id and v.id_curre' +
        'ncy = curr.id and'
      
        'v.id not in (Select id_value from tbl_cd_values where id_categor' +
        'y = v.id_category'
      'and id_cashDesk=:id_cashDesk_param) and is_system_value <> 1')
    Left = 784
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'id_cashDesk_param'
        Value = '0'
      end>
  end
  object PgQuery4: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select t.*, c.symbol '
      'from tbl_transactions as t, tbl_currencies as c'
      'where t.id_currency = c.id and t.id not in ( '
      
        'select id_transaction from tbl_cd_transactions where id_cashDesk' +
        '=:idcashdesk)'
      'Order by sort_order asc')
    Left = 688
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'idcashdesk'
        Value = '0'
      end>
  end
  object PgQuery5: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select mt.*'
      'from tbl_multiple_transactions as mt')
    Left = 288
    Top = 272
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 352
    Top = 128
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgQuery4
    Left = 416
    Top = 120
  end
  object PgDataSource7: TPgDataSource
    DataSet = PgQuery5
    Left = 360
    Top = 320
  end
  object PgQuery7: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  cdv.*, v.name, cat.name'
      'from '
      '  tbl_cd_values as cdv '
      '  left join tbl_values as v on cdv.id_value = v.id'
      '  left join tbl_categories as cat on cdv.id_category = cat.id'
      'order by '
      '  cdv.ord')
    Left = 696
    Top = 112
  end
  object PgQuery8: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.sort_order, t.name, t.account_id_to, c.symbol'
      
        'from tbl_cd_transactions as cdt, tbl_transactions as t, tbl_curr' +
        'encies as c'
      'where cdt.id_transaction = t.id and t.id_currency = c.id'
      'Order by cdt.ord asc')
    Left = 136
    Top = 504
  end
  object PgQuery9: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdmt.*, mt.name '
      
        'from tbl_cd_multiple_transactions as cdmt, tbl_multiple_transact' +
        'ions as mt'
      'where cdmt.id_multiple_transaction = mt.id')
    Left = 136
    Top = 272
  end
  object PgDataSource9: TPgDataSource
    DataSet = PgQuery9
    Left = 200
    Top = 280
  end
  object PgDataSource10: TPgDataSource
    DataSet = PgQuery8
    Left = 384
    Top = 192
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgQuery7
    Left = 144
    Top = 136
  end
  object PgQuery6: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    Left = 344
    Top = 24
  end
  object PgQuery11: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select c.* '
      'from tbl_categories as c, tbl_cd_values as cdv'
      'where cdv.id_category = c.id'
      'group by c.id')
    Left = 184
    Top = 16
  end
  object PgDataSource12: TPgDataSource
    DataSet = PgQuery11
    Left = 256
    Top = 16
  end
  object PgQuery12: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select c.* '
      'from tbl_categories as c, tbl_cd_values as cdv'
      'where cdv.id_category = c.id'
      'group by c.id')
    Left = 184
    Top = 64
  end
  object PgDataSource13: TPgDataSource
    DataSet = PgQuery12
    Left = 256
    Top = 56
  end
  object PgDataSource14: TPgDataSource
    DataSet = PgQuery13
    Left = 80
    Top = 320
  end
  object PgDataSource15: TPgDataSource
    DataSet = PgQuery14
    Left = 288
    Top = 384
  end
  object PgQuery13: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 24
    Top = 320
  end
  object PgQuery14: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 176
    Top = 320
  end
  object PgDataSource16: TPgDataSource
    DataSet = PgQuery15
    Left = 288
    Top = 416
  end
  object PgQuery15: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 208
    Top = 368
  end
  object PgDataSource17: TPgDataSource
    DataSet = PgQuery16
    Left = 80
    Top = 368
  end
  object PgQuery16: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 24
    Top = 368
  end
  object PgDataSource18: TPgDataSource
    DataSet = PgQuery17
    Left = 232
    Top = 432
  end
  object PgQuery17: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 152
    Top = 376
  end
  object PgDataSource19: TPgDataSource
    DataSet = PgQuery18
    Left = 112
    Top = 408
  end
  object PgQuery18: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 24
    Top = 416
  end
  object PgDataSource20: TPgDataSource
    DataSet = PgQuery19
    Left = 648
    Top = 224
  end
  object PgQuery19: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 576
    Top = 224
  end
  object PgDataSource21: TPgDataSource
    DataSet = PgQuery20
    Left = 504
    Top = 224
  end
  object PgQuery20: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_cd_configurable = 1')
    Left = 544
    Top = 136
  end
  object PgQuery22: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '          '#39#39' as parent_id, '
      '          c.name as id,'
      '          c.id as id_category, '
      '          -1 as value_id, '
      '          cdmc.id_cashdesk,'
      '          '#39#39' as id_account_open, '
      '          '#39#39' as id_account_diff_open, '
      '          '#39#39' as id_account_close, '
      '          '#39#39' as id_account_diff_close, '
      '          0 as carryover, '
      '          0 as automatic, '
      '          0 as fixed_amount,'
      '          cdmc.id as id_move_category '
      '        from'
      '          tbl_cd_move_categories as cdmc'
      
        '          left join tbl_categories as c on cdmc.id_category = c.' +
        'id '
      '      where exists'
      '      ( '
      
        '        select cdmcv.id_cd_move_category from tbl_cd_move_catego' +
        'ries_values as cdmcv'
      '        where '
      '          cdmcv.id_cd_move_category = id_category'
      '      )'
      '        group by c.name, c.id, cdmc.id_cashdesk, cdmc.id '
      '      '
      '      union '
      '      '
      '      select'
      '        c.name as parent_id, '
      '        v.name as id,'
      '       c.id as id_category, '
      '        cdmcv.id as value_id, '
      '        cdmcv.id_cashdesk,'
      '        cdmcv.id_account_open,'
      '        cdmcv.id_account_diff_open, '
      '        cdmcv.id_account_close, '
      '        cdmcv.id_account_diff_close,'
      '        cdmcv.carryover,'
      '        cdmcv.automatic,'
      '        cdmcv.fixed_amount, '
      '        cdmcv.id_cd_move_category as id_move_category'
      '      from '
      '        tbl_cd_move_categories_values as cdmcv,'
      
        '        tbl_categories as c left join tbl_values as v on v.id_ca' +
        'tegory = c.id '
      '      where '
      '        cdmcv.id_cd_move_category = c.id and '
      '       cdmcv.id_cd_value = v.id')
    Left = 376
    Top = 392
  end
  object PgDataSource22: TPgDataSource
    DataSet = PgQuery22
    Left = 504
    Top = 392
  end
  object PgQuery21: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_move_categories_values')
    Left = 576
    Top = 168
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 456
    Top = 336
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object TreeListStyleSheetDevExpress: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle6
      Styles.Inactive = cxStyle10
      Styles.Selection = cxStyle14
      Styles.BandBackground = cxStyle3
      Styles.BandHeader = cxStyle4
      Styles.ColumnHeader = cxStyle5
      Styles.ContentEven = cxStyle7
      Styles.ContentOdd = cxStyle8
      Styles.Footer = cxStyle9
      Styles.IncSearch = cxStyle11
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object PopupMenu_Val: TPopupMenu
    Left = 624
    Top = 328
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_Posible: TPopupMenu
    Left = 720
    Top = 328
    object exporttoexcel2: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel2Click
    end
  end
end
