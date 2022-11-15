inherited ListofStatisticCategoryFrame: TListofStatisticCategoryFrame
  Width = 880
  Height = 786
  ExplicitWidth = 880
  ExplicitHeight = 786
  object cxPageControl_Category: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 874
    Height = 780
    Align = alClient
    Color = 16370111
    ParentColor = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet_ValuesCategories
    Properties.ScrollOpposite = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Stardust'
    ClientRectBottom = 776
    ClientRectLeft = 4
    ClientRectRight = 870
    ClientRectTop = 27
    object cxTabSheet_ListCategories: TcxTabSheet
      Caption = 'List categories'
      Color = clWhite
      ImageIndex = 0
      ParentColor = False
      object SCategoryGrid: TcxGrid
        Left = 0
        Top = 15
        Width = 398
        Height = 320
        BevelOuter = bvRaised
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnEnter = SCategoryGridEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object SCategoryGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.InfoPanel.Visible = True
          OnCellClick = SCategoryGridDBTableView1CellClick
          DataController.DataSource = PgDataSource1
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          Preview.Visible = True
          Styles.Header = cxStyle1
          object SCategoryGridDBTableViewID: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Width = 0
          end
          object SCategoryGridDBName: TcxGridDBColumn
            Caption = 'Category name'
            DataBinding.FieldName = 'name'
            Styles.Header = cxStyle11
            Width = 207
          end
          object SCategoryGridDBTable_iDGroups: TcxGridDBColumn
            DataBinding.FieldName = 'id_groups'
            Visible = False
            MinWidth = 0
            Width = 0
          end
          object SCategoryGridDBTable_UsersGroup: TcxGridDBColumn
            Caption = 'Users group'
            DataBinding.FieldName = 'group_name'
            Width = 115
          end
        end
        object SCategoryGridLevel1: TcxGridLevel
          GridView = SCategoryGridDBTableView1
        end
      end
      object cxGrid_Values: TcxGrid
        Left = 0
        Top = 357
        Width = 398
        Height = 320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 3
        OnEnter = SCategoryGridEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = PgDataSource7
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Width = 0
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Values name'
            DataBinding.FieldName = 'name'
            Width = 200
          end
          object cxGridDBTableView_TypeS: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'types'
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid_PosibleValuesCategry: TcxGrid
        Left = 499
        Top = 357
        Width = 398
        Height = 320
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu3
        TabOrder = 5
        OnEnter = SCategoryGridEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableViewPosibleValuescategory: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.InfoPanel.Visible = True
          OnCellClick = cxGridDBTableViewPosibleValuescategoryCellClick
          DataController.DataSource = PgDataSource6
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBColumn_ID: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.Focusing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Width = 0
          end
          object cxGridDBColumn_NAme: TcxGridDBColumn
            Caption = 'Posible values name'
            DataBinding.FieldName = 'name'
            Width = 200
          end
          object cxGridDBTableViewPosibleValuescategoryColumn1: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'types'
          end
          object cxGridDBTableViewPosibleValuescategoryColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'description'
            Visible = False
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableViewPosibleValuescategory
        end
      end
      object GroupBox_AddNewCategory: TGroupBox
        Left = 499
        Top = 12
        Width = 398
        Height = 99
        Caption = 'Add new category'
        TabOrder = 1
        DesignSize = (
          398
          99)
        object Label1: TLabel
          Left = 3
          Top = 35
          Width = 63
          Height = 13
          Caption = 'Users groups'
        end
        object cxButton_AddNewCategory: TcxButton
          Left = 5
          Top = 76
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Add'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_AddNewCategoryClick
        end
        object cxButton_ModifyNewCategory: TcxButton
          Left = 68
          Top = 76
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Modify'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_ModifyNewCategoryClick
        end
        object cxButton_DeleteNewcategory: TcxButton
          Left = 131
          Top = 76
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Delete'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_DeleteNewcategoryClick
        end
        object cxTextEdit_NewCategory: TcxTextEdit
          Left = 3
          Top = 14
          TabOrder = 0
          Width = 334
        end
        object cbGroupsUsers: TcxDBLookupComboBox
          Left = 3
          Top = 50
          AutoSize = False
          DataBinding.DataField = 'id'
          DataBinding.DataSource = PgDataSource8
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.HideSelection = False
          Properties.ImmediateDropDownWhenActivated = True
          Properties.ImmediatePost = True
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              MinWidth = 0
              Width = 0
              FieldName = 'id'
            end
            item
              FieldName = 'group_name'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = PgDataSource9
          Style.Color = clWhite
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = 'Caramel'
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = 'Caramel'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = 'Caramel'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = 'Caramel'
          TabOrder = 1
          Height = 23
          Width = 334
        end
      end
      object GroupBox_AddValues: TGroupBox
        Left = 499
        Top = 111
        Width = 398
        Height = 224
        Caption = 'Add new value'
        TabOrder = 2
        DesignSize = (
          398
          224)
        object cxButton_AddNewValue: TcxButton
          Left = 5
          Top = 201
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Add'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_AddNewValueClick
        end
        object cxButton_ModifyNewValue: TcxButton
          Left = 68
          Top = 201
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Modify'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_ModifyNewValueClick
        end
        object cxButton_DeleteNewValue: TcxButton
          Left = 131
          Top = 201
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Delete'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_DeleteNewValueClick
        end
        object cxTextEdit_Val_Name: TcxTextEdit
          Left = 3
          Top = 19
          TabOrder = 0
          Width = 334
        end
        object cxRadioGroup_ValueType: TcxRadioGroup
          Left = 3
          Top = 46
          Caption = 'Type'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Numeric'
            end
            item
              Caption = 'Result'
            end
            item
              Caption = 'Text'
            end>
          ItemIndex = 0
          TabOrder = 1
          Height = 47
          Width = 334
        end
        object cxMemo_Description: TcxMemo
          Left = 3
          Top = 106
          TabOrder = 2
          Height = 89
          Width = 334
        end
        object cxLabel_Description: TcxLabel
          Left = 3
          Top = 91
          Caption = 'Description'
        end
      end
      object Panel_ValuesCategory: TPanel
        Left = 0
        Top = 693
        Width = 101
        Height = 41
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 6
        DesignSize = (
          101
          41)
        object cxButton_valuesCategory: TcxButton
          Left = 0
          Top = 6
          Width = 93
          Height = 33
          Anchors = [akLeft, akBottom]
          Caption = 'Values category'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_valuesCategoryClick
        end
      end
      object Panel_LeftRight: TPanel
        Left = 404
        Top = 252
        Width = 89
        Height = 238
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        DesignSize = (
          89
          238)
        object Button_leftValuesCategory: TcxButton
          Left = 10
          Top = 107
          Width = 73
          Height = 36
          Anchors = [akLeft, akBottom]
          Caption = '<<'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = Button_leftValuesCategoryClick
        end
        object Button_RightValuesCategory: TcxButton
          Left = 10
          Top = 149
          Width = 73
          Height = 36
          Anchors = [akLeft, akBottom]
          Caption = '>>'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 1
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = Button_RightValuesCategoryClick
        end
      end
      object cxLabel5: TcxLabel
        Left = -1
        Top = 336
        Caption = 'Values'
        ParentColor = False
        ParentFont = False
        Style.Color = 16370111
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.IsFontAssigned = True
      end
      object cxLabel6: TcxLabel
        Left = 0
        Top = -4
        Caption = 'Category'
        ParentColor = False
        ParentFont = False
        Style.Color = 16370111
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.IsFontAssigned = True
      end
      object cxLabel7: TcxLabel
        Left = 499
        Top = 337
        Caption = 'Posible values'
        ParentColor = False
        ParentFont = False
        Style.Color = 16370111
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.IsFontAssigned = True
      end
    end
    object cxTabSheet_category: TcxTabSheet
      Caption = 'Category'
      Color = clWhite
      Enabled = False
      ImageIndex = 1
      ParentColor = False
      TabVisible = False
      DesignSize = (
        866
        749)
      object cxLabel_CName: TcxLabel
        Left = 24
        Top = 32
        Caption = 'Name'
      end
      object cxTextEdit_name: TcxTextEdit
        Left = 69
        Top = 31
        TabOrder = 1
        Width = 244
      end
      object btnAddSScategory: TcxButton
        Left = 713
        Top = 700
        Width = 137
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = 'Add category'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddSScategoryClick
      end
      object btnCancel: TcxButton
        Left = 572
        Top = 700
        Width = 135
        Height = 24
        Anchors = [akRight, akBottom]
        Caption = 'Cancel'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object cxLabel_Refresh: TcxLabel
        Left = 24
        Top = 61
        Caption = 'Refresh'
      end
      object cxMaskEdit_Refresh: TcxMaskEdit
        Left = 69
        Top = 60
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        TabOrder = 2
        Width = 121
      end
      object cxLabel_ms: TcxLabel
        Left = 193
        Top = 61
        Caption = '(msec)'
      end
    end
    object cxTabSheet_ValuesCategories: TcxTabSheet
      Caption = 'List values'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Label_category: TLabel
        Left = 3
        Top = 3
        Width = 106
        Height = 19
        Caption = 'Label_category'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxGrid_CategoryValues: TcxGrid
        Left = 0
        Top = 404
        Width = 398
        Height = 339
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu5
        TabOrder = 0
        OnEnter = SCategoryGridEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableCategoryValuesView: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.InfoPanel.Visible = True
          OnCellClick = cxGridDBTableCategoryValuesViewCellClick
          OnFocusedRecordChanged = cxGridDBTableCategoryValuesViewFocusedRecordChanged
          DataController.DataSource = PgDataSource2
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.NavigatorHints = True
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView_Id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Width = 0
          end
          object cxGridDBTableView_Name: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Options.Editing = False
          end
          object cxGridDBTableView_Type: TcxGridDBColumn
            DataBinding.FieldName = 'types'
            Width = 40
          end
          object cxGridDBTableCategoryValuesViewColumn_Check: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.FullFocusRect = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnChange = cxGridDBTableCategoryValuesViewColumn_CheckPropertiesChange
            MinWidth = 64
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Options.Sorting = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableCategoryValuesView
        end
      end
      object Panel_Bootom1: TPanel
        Left = 0
        Top = 698
        Width = 866
        Height = 51
        Align = alBottom
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          866
          51)
        object cxButton_BackListCategory: TcxButton
          Left = 3
          Top = 20
          Width = 112
          Height = 24
          Anchors = [akLeft, akBottom]
          Caption = 'List category'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_BackListCategoryClick
        end
      end
      object cxGrid_PosibleValues: TcxGrid
        Left = 450
        Top = 46
        Width = 398
        Height = 275
        PopupMenu = PopupMenu6
        TabOrder = 2
        OnEnter = cxGrid_PosibleValuesEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGrid_PosibleValuesDBTableView_PosibleValues: TcxGridDBTableView
          Navigator.Buttons.Append.Enabled = False
          OnFocusedRecordChanged = cxGrid_PosibleValuesDBTableView_PosibleValuesFocusedRecordChanged
          DataController.DataSource = PgDataSource3
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid_PosibleValuesDBTableView_PosibleValuesId: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Width = 0
          end
          object cxGrid_PosibleValuesDBTableView_PosibleValuesColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Width = 300
          end
          object cxGrid_PosibleValuesDBTableView_PosibleValuesCheck: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = '1'
            Properties.DisplayUnchecked = '0'
            Properties.ValueChecked = 1
            MinWidth = 64
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Options.Sorting = False
          end
        end
        object cxGrid_PosibleValuesLevel1: TcxGridLevel
          GridView = cxGrid_PosibleValuesDBTableView_PosibleValues
        end
      end
      object cxGrid_StringValues: TcxGrid
        Left = 0
        Top = 46
        Width = 398
        Height = 339
        PopupMenu = PopupMenu4
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableViewStringValues: TcxGridDBTableView
          Navigator.Buttons.Append.Enabled = False
          DataController.DataSource = PgDataSource4
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Width = 0
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Width = 300
          end
          object cxGridDBTableViewStringValues_Check: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = '1'
            Properties.DisplayUnchecked = '0'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            MinWidth = 64
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Options.Sorting = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableViewStringValues
        end
      end
      object cxGrid_StringValuesToValues: TcxGrid
        Left = 450
        Top = 404
        Width = 398
        Height = 339
        PopupMenu = PopupMenu7
        TabOrder = 4
        OnEnter = cxGrid_PosibleValuesEnter
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView_StringValuesToValues: TcxGridDBTableView
          Navigator.Buttons.Append.Enabled = False
          OnFocusedRecordChanged = cxGrid_PosibleValuesDBTableView_PosibleValuesFocusedRecordChanged
          DataController.DataSource = PgDataSource5
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            MinWidth = 0
            Width = 0
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Width = 300
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView_StringValuesToValues
        end
      end
      object GroupBox2: TGroupBox
        Left = 450
        Top = 322
        Width = 398
        Height = 65
        Caption = 'Add new result value'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 5
        DesignSize = (
          398
          65)
        object cxTextEdit_AddNewStringValues: TcxTextEdit
          Left = 3
          Top = 17
          TabOrder = 0
          Width = 382
        end
        object cxButton_AddNewStringValues: TcxButton
          Left = 3
          Top = 41
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Add'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_AddNewStringValuesClick
        end
        object cxButton_ModifyStringValues: TcxButton
          Left = 66
          Top = 41
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Modify'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_ModifyStringValuesClick
        end
        object cxButton_DeleteNewStringValues: TcxButton
          Left = 129
          Top = 41
          Width = 57
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Delete'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_DeleteNewStringValuesClick
        end
      end
      object Panel_LeftrightValues: TPanel
        Left = 404
        Top = 74
        Width = 41
        Height = 162
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 6
        DesignSize = (
          41
          162)
        object cxButton_Left: TcxButton
          Left = 4
          Top = 42
          Width = 34
          Height = 49
          Anchors = [akLeft, akBottom]
          Caption = '<<'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_LeftClick
        end
        object cxButton2: TcxButton
          Left = 4
          Top = 97
          Width = 34
          Height = 49
          Anchors = [akLeft, akBottom]
          Caption = '>>'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton2Click
        end
      end
      object cxLabel2: TcxLabel
        Left = 450
        Top = 27
        Caption = 'Posible result values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 0
        Top = 385
        Caption = 'Result category values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 450
        Top = 385
        Caption = 'Result category sub values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 28
        Caption = 'Result values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object PgQuery1: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_st_category  stcat'
      'left outer join tbl_access_groups acc on acc.id=stcat.id_groups')
    FetchRows = 30
    Active = True
    IndexFieldNames = 'name'
    Left = 120
    Top = 565
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 80
    Top = 589
  end
  object PgTable1: TPgTable
    TableName = 'tbl_st_category'
    KeyFields = 'id'
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 168
    Top = 589
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 589
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clDefault
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
    object cxStyle43: TcxStyle
    end
    object cxStyle101: TcxStyle
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
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 208
    Top = 589
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 56
    Top = 304
    PixelsPerInch = 96
    object cxStyle15: TcxStyle
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxTreeListStyleSheet1: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle16
      Styles.Content = cxStyle20
      Styles.Inactive = cxStyle24
      Styles.Selection = cxStyle28
      Styles.BandBackground = cxStyle17
      Styles.BandHeader = cxStyle18
      Styles.ColumnHeader = cxStyle19
      Styles.ContentEven = cxStyle21
      Styles.ContentOdd = cxStyle22
      Styles.Footer = cxStyle23
      Styles.IncSearch = cxStyle25
      Styles.Indicator = cxStyle26
      Styles.Preview = cxStyle27
      BuiltIn = True
    end
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 144
    Top = 288
  end
  object PgQuery2: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select *, case   when type=0 then '#39'numeric'#39' else '#39'string'#39'  end  ' +
        'as Types  '
      'from tbl_st_valuescategory  where type=1 order by id')
    FetchRows = 30
    Active = True
    IndexFieldNames = 'name'
    Left = 168
    Top = 272
  end
  object PgTable2: TPgTable
    TableName = 'tbl_st_category'
    KeyFields = 'id'
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 176
    Top = 352
  end
  object PgSQL2: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 248
    Top = 384
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 552
    Top = 493
    PixelsPerInch = 96
    object cxStyle29: TcxStyle
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxTreeListStyleSheet2: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle30
      Styles.Content = cxStyle34
      Styles.Inactive = cxStyle38
      Styles.Selection = cxStyle42
      Styles.BandBackground = cxStyle31
      Styles.BandHeader = cxStyle32
      Styles.ColumnHeader = cxStyle33
      Styles.ContentEven = cxStyle35
      Styles.ContentOdd = cxStyle36
      Styles.Footer = cxStyle37
      Styles.IncSearch = cxStyle39
      Styles.Indicator = cxStyle40
      Styles.Preview = cxStyle41
      BuiltIn = True
    end
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 608
    Top = 493
  end
  object PgQuery3: TPgQuery
    UpdatingTable = 'tbl_st_valuescategory'
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select *  from tbl_st_valuescategory where idValuesCategory is n' +
        'ull'
      ''
      'and idCategory is null')
    FetchRows = 30
    Active = True
    IndexFieldNames = 'name'
    Left = 656
    Top = 485
  end
  object PgTable3: TPgTable
    TableName = 'tbl_st_valuescategory'
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 704
    Top = 493
  end
  object PgSQL3: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 744
    Top = 493
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 64
    Top = 349
    PixelsPerInch = 96
    object cxStyle44: TcxStyle
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxTreeListStyleSheet3: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle45
      Styles.Content = cxStyle49
      Styles.Inactive = cxStyle53
      Styles.Selection = cxStyle57
      Styles.BandBackground = cxStyle46
      Styles.BandHeader = cxStyle47
      Styles.ColumnHeader = cxStyle48
      Styles.ContentEven = cxStyle50
      Styles.ContentOdd = cxStyle51
      Styles.Footer = cxStyle52
      Styles.IncSearch = cxStyle54
      Styles.Indicator = cxStyle55
      Styles.Preview = cxStyle56
      BuiltIn = True
    end
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery4
    Left = 176
    Top = 301
  end
  object PgQuery4: TPgQuery
    UpdatingTable = 'tbl_st_valuescategory'
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select *  from tbl_st_valuescategory where idValuesCategory =-21' +
        '47483647')
    FetchRows = 30
    IndexFieldNames = 'name'
    Left = 232
    Top = 325
  end
  object PgTable4: TPgTable
    TableName = 'tbl_st_valuescategory'
    KeyFields = 'id'
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 232
    Top = 349
  end
  object PgSQL4: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 296
    Top = 341
  end
  object PgSQL5: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 784
    Top = 32
  end
  object PgTable5: TPgTable
    TableName = 'tbl_st_valuescategory'
    KeyFields = 'id'
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    IndexFieldNames = 'name'
    Left = 800
    Top = 80
  end
  object PgQuery5: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select *  from tbl_st_valuescategory where idvaluesCategory in ('
      'Select min(id) from tbl_st_valuescategory )'
      'and idCategory=-1000')
    FetchRows = 30
    Active = True
    IndexFieldNames = 'name'
    Left = 784
    Top = 120
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgQuery5
    Left = 816
    Top = 176
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 816
    Top = 224
    PixelsPerInch = 96
    object cxStyle58: TcxStyle
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxTreeListStyleSheet4: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle59
      Styles.Content = cxStyle63
      Styles.Inactive = cxStyle67
      Styles.Selection = cxStyle71
      Styles.BandBackground = cxStyle60
      Styles.BandHeader = cxStyle61
      Styles.ColumnHeader = cxStyle62
      Styles.ContentEven = cxStyle64
      Styles.ContentOdd = cxStyle65
      Styles.Footer = cxStyle66
      Styles.IncSearch = cxStyle68
      Styles.Indicator = cxStyle69
      Styles.Preview = cxStyle70
      BuiltIn = True
    end
  end
  object PgSQL6: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 752
    Top = 549
  end
  object PgTable6: TPgTable
    TableName = 'tbl_st_valuescategory'
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 712
    Top = 549
  end
  object PgQuery6: TPgQuery
    UpdatingTable = 'tbl_st_valuescategory'
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select *, case   when type=0 then '#39'numeric'#39' when type=1 then '#39're' +
        'sult'#39' else '#39'string'#39'  end  as Types  '
      'from tbl_st_valuescategory where  idCategory=-2147483647')
    FetchRows = 30
    IndexFieldNames = 'name'
    Left = 656
    Top = 549
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgQuery6
    Left = 608
    Top = 549
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 552
    Top = 549
    PixelsPerInch = 96
    object cxStyle72: TcxStyle
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxTreeListStyleSheet5: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle73
      Styles.Content = cxStyle77
      Styles.Inactive = cxStyle81
      Styles.Selection = cxStyle85
      Styles.BandBackground = cxStyle74
      Styles.BandHeader = cxStyle75
      Styles.ColumnHeader = cxStyle76
      Styles.ContentEven = cxStyle78
      Styles.ContentOdd = cxStyle79
      Styles.Footer = cxStyle80
      Styles.IncSearch = cxStyle82
      Styles.Indicator = cxStyle83
      Styles.Preview = cxStyle84
      BuiltIn = True
    end
  end
  object PgSQL7: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 208
    Top = 504
  end
  object PgTable7: TPgTable
    TableName = 'tbl_st_category'
    KeyFields = 'id'
    DMLRefresh = True
    Connection = frmDatabase.KivosConnection
    Active = True
    IndexFieldNames = 'name'
    Left = 168
    Top = 504
  end
  object PgQuery7: TPgQuery
    KeyFields = 'id'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select *, case when type=0 then '#39'numeric'#39' when type=1 then '#39'resu' +
        'lt'#39' else '#39'string'#39'  end  as Types  '
      'from tbl_st_valuescategory  '
      'where idCategory=-1000'
      'order by id')
    FetchRows = 30
    Active = True
    IndexFieldNames = 'name'
    Left = 120
    Top = 504
  end
  object PgDataSource7: TPgDataSource
    DataSet = PgQuery7
    Left = 80
    Top = 504
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 32
    Top = 504
    PixelsPerInch = 96
    object cxStyle86: TcxStyle
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16445924
      TextColor = clBlack
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15850688
      TextColor = clBlack
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle95: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15463166
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 6600078
      TextColor = clWhite
    end
    object cxStyle100: TcxStyle
    end
    object cxTreeListStyleSheet6: TcxTreeListStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle87
      Styles.Content = cxStyle91
      Styles.Inactive = cxStyle95
      Styles.Selection = cxStyle99
      Styles.BandBackground = cxStyle88
      Styles.BandHeader = cxStyle89
      Styles.ColumnHeader = cxStyle90
      Styles.ContentEven = cxStyle92
      Styles.ContentOdd = cxStyle93
      Styles.Footer = cxStyle94
      Styles.IncSearch = cxStyle96
      Styles.Indicator = cxStyle97
      Styles.Preview = cxStyle98
      BuiltIn = True
    end
  end
  object PgQuery8: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select id, group_name from tbl_access_groups where id=-10000')
    Active = True
    Left = 448
    Top = 144
  end
  object PgDataSource8: TPgDataSource
    DataSet = PgQuery8
    Left = 464
    Top = 96
  end
  object PgDataSource9: TPgDataSource
    DataSet = PgQuery9
    Left = 368
    Top = 160
  end
  object PgQuery9: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select id, group_name from tbl_access_groups')
    Left = 368
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 56
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 24
    Top = 416
    object Exporttoexcel2: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 520
    Top = 408
    object Exporttoexcel3: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel3Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 368
    Top = 48
    object Exporttoexcel4: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel4Click
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 368
    Top = 456
    object Exporttoexcel5: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel5Click
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 832
    Top = 64
    object Exporttoexcel6: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel6Click
    end
  end
  object PopupMenu7: TPopupMenu
    Left = 816
    Top = 456
    object Exporttoexcel7: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel7Click
    end
  end
end
