inherited ReportsFrame: TReportsFrame
  Width = 1019
  Height = 734
  AutoScroll = True
  ExplicitWidth = 1019
  ExplicitHeight = 734
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1019
    Height = 685
    ActivePage = TabSheet_Shifts
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    ScrollOpposite = True
    TabOrder = 1
    object TabSheet_CashDeskTransaction: TTabSheet
      Caption = 'Transaction'
      object ScrollBox_All: TScrollBox
        Left = 0
        Top = 0
        Width = 1011
        Height = 655
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid7: TcxGrid
          Left = 0
          Top = 383
          Width = 1007
          Height = 239
          Align = alTop
          PopupMenu = PopupMenu_values
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          object cxGridDBTableView6: TcxGridDBTableView
            DataController.DataSource = PgDataSource11
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView6change_chf
              end
              item
                Kind = skSum
                Column = cxGridDBTableView6change_chf
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'amount_chf'
                Column = cxGridDBTableView6amount_chf
              end
              item
                Kind = skSum
                Column = cxGridDBTableView6amount
              end
              item
                Kind = skSum
                Column = cxGridDBTableView6change_chf
              end
              item
                Kind = skCount
                Column = cxGridDBTableView6ct_number
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 24
            object cxGridDBTableView6id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxGridDBTableView6id_cd_sub_transaction: TcxGridDBColumn
              DataBinding.FieldName = 'id_cd_sub_transaction'
              Visible = False
            end
            object cxGridDBTableView6id_cd_transaction: TcxGridDBColumn
              DataBinding.FieldName = 'id_cd_transaction'
              Visible = False
            end
            object cxGridDBTableView6id_cd_value: TcxGridDBColumn
              DataBinding.FieldName = 'id_cd_value'
              Visible = False
              Width = 44
            end
            object cxGridDBTableView6id_cashdesk: TcxGridDBColumn
              DataBinding.FieldName = 'id_cashdesk'
              Visible = False
            end
            object cxGridDBTableView6id_cd_category: TcxGridDBColumn
              DataBinding.FieldName = 'id_cd_category'
              Visible = False
            end
            object cxGridDBTableView6ct_number: TcxGridDBColumn
              DataBinding.FieldName = 'ct_number'
              Visible = False
            end
            object cxGridDBTableView6category: TcxGridDBColumn
              Caption = 'Category'
              DataBinding.FieldName = 'category'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 106
            end
            object cxGridDBTableView6value: TcxGridDBColumn
              Caption = 'Value'
              DataBinding.FieldName = 'value'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 56
            end
            object cxGridDBTableView6nr: TcxGridDBColumn
              Caption = 'Nr'
              DataBinding.FieldName = 'nr'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Properties.UseThousandSeparator = True
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 67
            end
            object cxGridDBTableView6multiplier_1: TcxGridDBColumn
              Caption = 'Multiplier'
              DataBinding.FieldName = 'multiplier_1'
              Visible = False
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
            end
            object cxGridDBTableView6amount: TcxGridDBColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'amount'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Properties.UseThousandSeparator = True
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 68
            end
            object cxGridDBTableView6change_chf: TcxGridDBColumn
              Caption = 'Change CHF'
              DataBinding.FieldName = 'change_chf'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Properties.UseThousandSeparator = True
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 66
            end
            object cxGridDBTableView6amount_chf: TcxGridDBColumn
              Caption = 'Amount CHF'
              DataBinding.FieldName = 'amount_chf'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Properties.UseThousandSeparator = True
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 68
            end
            object cxGridDBTableView6Column_ord: TcxGridDBColumn
              DataBinding.FieldName = 'ord'
              Visible = False
              SortIndex = 0
              SortOrder = soAscending
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView6
          end
        end
        object cxDBTreeList_ReportsTransactions: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 1007
          Height = 383
          Align = alTop
          Bands = <
            item
              Caption.MultiLine = True
              Caption.Text = 'Where'
            end
            item
              Caption.Text = 'Dates'
            end
            item
              Caption.Text = 'Transactions'
            end
            item
              Caption.Text = 'Balance'
            end>
          DataController.DataSource = PgDataSource19
          DataController.ParentField = 'id_cd_transaction'
          DataController.KeyField = 'id'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          OptionsBehavior.MultiSort = False
          OptionsBehavior.Sorting = False
          OptionsBehavior.WaitForExpandNodeTime = 0
          OptionsCustomizing.BandsQuickCustomization = True
          OptionsCustomizing.BandsQuickCustomizationMaxDropDownCount = 10
          OptionsCustomizing.ColumnMoving = False
          OptionsCustomizing.ColumnsQuickCustomization = True
          OptionsCustomizing.StackedColumns = False
          OptionsData.Editing = False
          OptionsData.SmartRefresh = True
          OptionsData.SyncMode = False
          OptionsSelection.HideFocusRect = False
          OptionsView.Bands = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.CheckGroups = True
          OptionsView.FixedSeparatorWidth = 24
          OptionsView.Footer = True
          OptionsView.GridLines = tlglBoth
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.TreeLineStyle = tllsSolid
          PopupMenu = PopupMenu_Transactions
          RootValue = 1
          TabOrder = 0
          OnClick = cxDBTreeList_ReportsShiftsClick
          object cxDBTreeListColumn_cd_id: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id_cd_transaction'
            MinWidth = 0
            Width = 36
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CashName: TcxDBTreeListColumn
            Caption.Text = 'Cashdesk'
            DataBinding.FieldName = 'cashdeskname'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_DateTime: TcxDBTreeListColumn
            Caption.Text = 'Date'
            DataBinding.FieldName = 'datetime'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 1
            SortOrder = soDescending
            SortIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Status: TcxDBTreeListColumn
            Caption.Text = 'Status'
            DataBinding.FieldName = 'status'
            Width = 50
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_TransName: TcxDBTreeListColumn
            Caption.Text = 'Transaction'
            DataBinding.FieldName = 'transname'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CatName: TcxDBTreeListColumn
            Caption.Text = 'Category'
            DataBinding.FieldName = 'transcatname'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CtNumber: TcxDBTreeListColumn
            Caption.Text = 'Doc'
            DataBinding.FieldName = 'ct_number'
            Width = 80
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skCount
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Desciption: TcxDBTreeListColumn
            Caption.Text = 'Description'
            DataBinding.FieldName = 'description'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Amount_IN: TcxDBTreeListColumn
            Caption.Text = 'Amount in'
            DataBinding.FieldName = 'amount_in'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Amount_Out: TcxDBTreeListColumn
            Caption.Text = 'Amount out'
            DataBinding.FieldName = 'amount_out'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
          end
          object cxDBTreeListColumn_CurrSymbol: TcxDBTreeListColumn
            Caption.Text = 'Curr'
            DataBinding.FieldName = 'currsymbol'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Selling: TcxDBTreeListColumn
            DataBinding.FieldName = 'selling'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CHFIn: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF in'
            DataBinding.FieldName = 'cchf_in'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CHF_OUT: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF out'
            DataBinding.FieldName = 'cchf_out'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Indicator: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'indicator'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_trans: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'trans'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_id: TcxDBTreeListColumn
            DataBinding.FieldName = 'id'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDBTreeListGamingdate: TcxDBTreeListColumn
            Caption.Text = 'Gaming Date'
            DataBinding.FieldName = 'gaming_date'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDB_idCashDesk: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'idcaskdesk'
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransaction_idReport: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id_report'
            Position.ColIndex = 7
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactions_How_Many_Copies: TcxDBTreeListColumn
            DataBinding.FieldName = 'how_many_copies'
            Position.ColIndex = 8
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
    object TabSheet_Shifts: TTabSheet
      Caption = 'Shifts'
      ImageIndex = 1
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1011
        Height = 655
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object cxDBTreeList_ReportsShifts: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 1007
          Height = 609
          Align = alTop
          Bands = <
            item
              Caption.MultiLine = True
              Caption.Text = 'Where'
            end
            item
              Caption.Text = 'Shift'
            end
            item
              Caption.Text = 'Expected values'
            end
            item
              Caption.Text = 'Balance'
            end>
          DataController.DataSource = PgDataSource1
          DataController.ParentField = 'id_cd_transaction'
          DataController.KeyField = 'id'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          OptionsBehavior.MultiSort = False
          OptionsBehavior.Sorting = False
          OptionsBehavior.WaitForExpandNodeTime = 0
          OptionsCustomizing.BandsQuickCustomization = True
          OptionsCustomizing.BandsQuickCustomizationMaxDropDownCount = 10
          OptionsCustomizing.ColumnMoving = False
          OptionsCustomizing.ColumnsQuickCustomization = True
          OptionsCustomizing.StackedColumns = False
          OptionsData.Editing = False
          OptionsData.SmartRefresh = True
          OptionsData.SyncMode = False
          OptionsView.Bands = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.CheckGroups = True
          OptionsView.FixedSeparatorWidth = 24
          OptionsView.Footer = True
          OptionsView.GridLines = tlglBoth
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.TreeLineStyle = tllsSolid
          PopupMenu = PopupMenu_Shifts
          PopupMenus.FooterMenu.PopupMenu = PopupMenu_Transactions
          RootValue = 1
          TabOrder = 0
          OnClick = cxDBTreeList_ReportsShiftsClick
          object cxDBTreeList_ReportsShiftscxDB_id: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_id_cd_transaction: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id_cd_transaction'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShift_cd_cashDeskName: TcxDBTreeListColumn
            Caption.Text = 'Cash desk'
            DataBinding.FieldName = 'cd_name'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_Operation: TcxDBTreeListColumn
            Caption.Text = 'Operation'
            DataBinding.FieldName = 'operation'
            Width = 30
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDB_User: TcxDBTreeListColumn
            Caption.Text = 'User'
            DataBinding.FieldName = 'user'
            Width = 80
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsData: TcxDBTreeListColumn
            Caption.Text = 'Data'
            DataBinding.FieldName = 'date'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsCategory: TcxDBTreeListColumn
            Caption.Text = 'Category'
            DataBinding.FieldName = 'catname'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_CURR: TcxDBTreeListColumn
            Caption.Text = 'Curr.'
            DataBinding.FieldName = 'currsymbol'
            Width = 20
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_CurrRate: TcxDBTreeListColumn
            Caption.Text = 'Curr. rate'
            DataBinding.FieldName = 'currrate'
            Width = 30
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_Amount: TcxDBTreeListColumn
            Caption.Text = 'Amount'
            DataBinding.FieldName = 'totalamount'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsAmountCHF: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF'
            DataBinding.FieldName = 'amountchf'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_gamingdate: TcxDBTreeListColumn
            Caption.Text = 'Gaming date'
            DataBinding.FieldName = 'gaming_date'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_CtNumber: TcxDBTreeListColumn
            Caption.Text = 'Number'
            DataBinding.FieldName = 'ct_number'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skCount
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_baseNumber: TcxDBTreeListColumn
            Caption.Text = 'Base number'
            DataBinding.FieldName = 'base_ct_number'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_Balance: TcxDBTreeListColumn
            DataBinding.FieldName = 'balance'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_Diferewnce: TcxDBTreeListColumn
            DataBinding.FieldName = 'difference'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <
              item
                AlignHorz = taLeftJustify
                AlignVert = vaTop
                Kind = skSum
              end>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShits_idCaskDesk: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'cd_id'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDB_IDNICATOR: TcxDBTreeListColumn
            DataBinding.FieldName = 'indicator'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
  end
  object Panel_: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 49
    Align = alTop
    Color = 15329769
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1019
      49)
    object cxButton_Refresh: TcxButton
      Left = 546
      Top = 11
      Width = 99
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Refresh'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_RefreshClick
    end
    object cxButton_EksportExcel: TcxButton
      Left = 651
      Top = 11
      Width = 130
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Export to Excel'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 4
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_EksportExcelClick
    end
    object cxButton_Print: TcxButton
      Left = 787
      Top = 11
      Width = 82
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Print'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 5
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_PrintClick
    end
    object cxButton1: TcxButton
      Left = 875
      Top = 11
      Width = 82
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Print quietly'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 6
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 259
      Height = 47
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      OnExit = Panel1Exit
      object cxTimeEdit_From: TcxTimeEdit
        Left = 132
        Top = 14
        EditValue = 0d
        TabOrder = 1
        Width = 121
      end
      object cxDateEdit_from: TcxDateEdit
        Left = 5
        Top = 14
        EditValue = 40909d
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DateOnError = deToday
        Properties.ImmediatePost = True
        Properties.InputKind = ikRegExpr
        Properties.MinDate = 40909.000000000000000000
        TabOrder = 0
        Width = 121
      end
    end
    object cxDateEdit_To: TcxDateEdit
      Left = 287
      Top = 15
      EditValue = 40909d
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.InputKind = ikRegExpr
      Properties.MinDate = 40909.000000000000000000
      TabOrder = 1
      Width = 121
    end
    object cxTimeEdit_To: TcxTimeEdit
      Left = 415
      Top = 15
      EditValue = 0d
      TabOrder = 2
      Width = 121
    end
  end
  object PgQuery22: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  subt.id_cd_transaction,'
      '  subt.id,'
      '  '#39#39', '
      '  '#39'---->'#39' as indicator,'
      '  cdt.ct_number, '
      '  t.name, '
      '  case when subt.direction = '#39'1'#39' then '#39'In'#39' else '#39'Out'#39' end,'
      '  a1.name, a2.name, a3.name,'
      '  subt.amount_in,'
      '  subt.amount_out,'
      '  cdt.datetime,0 as trans,0 as Mp,'
      '  cd.cd_name as cashDeskName,cd.id as idCaskDesk,'
      
        '  t.name as transName,cdt.gaming_date, case when cdt.confirmed=1' +
        ' then '#39'accounted'#39' else '#39#39' end as Status,'
      '  cat.name as transCatName,cdt.remarks as description'
      '  ,curr.symbol as currSymbol, currRate.selling, t.id_currency '
      '  ,subt.amount_in * currRate.Selling as Cchf_in,'
      
        '  subt.amount_out * currRate.Selling as Cchf_out, t.id_report , ' +
        't.how_many_copies'
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_numb' +
        'er = subt.ct_number'
      
        '  left join tbl_transactions as t on subt.multiple_subtransactio' +
        'n_id = t.id'
      '  left join tbl_cd cd on cd.id=cdt.id_cashdesk'
      '  left join tbl_categories cat on t.id_category=cat.id'
      '  left join tbl_currencies curr on t.id_currency=curr.id'
      
        '  left join tbl_accounts  a1 on cdt.account_id_from = a1.account' +
        '_id '
      
        '  left join tbl_accounts  a2 on cdt.account_id_to = a2.account_i' +
        'd '
      
        '  left join tbl_accounts a3 on cdt.account_id_transfer = a3.acco' +
        'unt_id'
      
        '  left join tbl_currencies_exchange_rates currRate on  currRate.' +
        'id_currency=curr.id '
      
        '            and  currRate.valid_from <= cast(now() as date) and ' +
        ' '
      '              currRate.valid_to>= cast(now() as date) '
      '  where '
      '    cdt.is_multiple_cd_transaction = 1 '
      '    and cdt.id=-10000'
      'union'
      ' select  0,'
      '  subt.id_cd_transaction,'
      '  '#39#39','
      '  cdt.ct_number as indicator, '
      '  cdt.ct_number, '
      
        '  case when cdt.is_multiple_cd_transaction = '#39'1'#39' then mt.name el' +
        'se t.name end, '
      '  case when cdt.direction = '#39'1'#39' then '#39'In'#39' else '#39'Out'#39' end,'
      '  a1.name, a2.name, a3.name ,'
      '  cdt.amount_in,'
      '  cdt.amount_out,'
      '  cdt.datetime,'
      '  cdt.id_cd_transaction as trans,'
      
        '  cdt.is_multiple_cd_transaction as Mp,cd.cd_name as cashDeskNam' +
        'e,cd.id as idCaskDesk,'
      
        '  t.name as transName, cdt.gaming_date, case when cdt.confirmed=' +
        '1 then '#39'accounted'#39' else '#39#39' end as Status,'
      '  cat.name as transCatName,cdt.remarks as description'
      '  ,curr.symbol as currSymbol, currRate.selling , t.id_currency'
      '  ,cdt.amount_in * currRate.Selling as Cchf_in,'
      
        '  cdt.amount_out * currRate.Selling as Cchf_out,t.id_report, t.h' +
        'ow_many_copies'
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_numb' +
        'er = subt.ct_number'
      
        '  left join tbl_transactions as t on cdt.id_cd_transaction = t.i' +
        'd'
      
        '  left join tbl_multiple_transactions as mt on cdt.id_cd_transac' +
        'tion = mt.id'
      '  left join tbl_cd cd on cd.id=cdt.id_cashdesk'
      '  left join tbl_categories cat on t.id_category=cat.id'
      '  left join tbl_currencies curr on t.id_currency=curr.id'
      
        '  left join tbl_accounts as a1 on cdt.account_id_from = a1.accou' +
        'nt_id'
      
        '  left join tbl_accounts as a2 on cdt.account_id_to = a2.account' +
        '_id'
      
        '  left join tbl_accounts as a3 on cdt.account_id_transfer = a3.a' +
        'ccount_id'
      
        '  left join tbl_currencies_exchange_rates currRate on  currRate.' +
        'id_currency=curr.id '
      
        '            and  currRate.valid_from <= cast(now() as date) and ' +
        ' '
      '              currRate.valid_to>= cast(now() as date)'
      'where      cdt.id=-10000')
    Left = 32
    Top = 600
  end
  object PgDataSource19: TPgDataSource
    DataSet = PgQuery22
    Left = 104
    Top = 608
  end
  object PgQuery12: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  c.*, '
      '  v.multiplier,'
      '  c.nr * v.multiplier as amount,'
      '  cer.buying as change_chf,'
      '  c.nr * v.multiplier * cer.buying as amount_chf,'
      '  cat.name as category,'
      '  v.name as value,cdv as ord'
      'from'
      '  tbl_cd_cash_transactions_subt_categories_values as c,'
      '  tbl_values as v,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr,'
      '  tbl_transactions_values as cdv '
      'where'
      '  c.ct_number = '#39'-1'#39' and'
      '  c.id_cd_category = cat.id and'
      '  c.id_cd_value = v.id and'
      '  cer.valid_from <= now() and'
      '  cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and'
      '  v.id_currency = curr.id'
      'order by  '
      '  v.sort_order asc')
    Left = 448
    Top = 632
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgQuery12
    Left = 392
    Top = 632
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select   subt.id_cd_transaction,  subt.id,  '#39' '#39' , '#39'---->'#39' as ind' +
        'icator, cdt.ct_number,  t.name, case when subt.direction = '#39'1'#39' t' +
        'hen '#39'In'#39' else '#39'Out'#39' end, '
      
        '         a1.name, a2.name, a3.name,cdt.gaming_date as gamingdate' +
        ',  subt.amount_in,  subt.amount_out,  cdt.datetime,0 as trans,0 ' +
        'as Mp,  cd.cd_name as cashDeskName,cd.id as idCaskDesk,  '
      
        '         t.name as transName,cdt.gaming_date, case when cdt.conf' +
        'irmed=1  then '#39'accounted'#39' else '#39#39' end as Status,  cat.name as tr' +
        'ansCatName,cdt.remarks as description,  '
      
        '         curr.symbol as currSymbol, currRate.selling, t.id_curre' +
        'ncy,  subt.amount_in * currRate.Selling as Cchf_in,  subt.amount' +
        '_out * currRate.Selling as Cchf_out,t.id_report, '
      
        '         t.how_many_copies  from  tbl_cd_cash_transactions as cd' +
        't  '
      
        '         left join tbl_cd_cash_transactions_subt as subt on cdt.' +
        'ct_number = subt.ct_number  '
      
        '         left join tbl_transactions as t on subt.multiple_subtra' +
        'nsaction_id = t.id  '
      '         left join tbl_cd cd on cd.id=cdt.id_cashdesk  '
      '         left join tbl_categories cat on t.id_category=cat.id  '
      
        '         left join tbl_currencies curr on t.id_currency=curr.id ' +
        ' '
      
        '         left join tbl_accounts  a1 on cdt.account_id_from = a1.' +
        'account_id  left join tbl_accounts  a2 on cdt.account_id_to = a2' +
        '.account_id  '
      
        '         left join tbl_accounts a3 on cdt.account_id_transfer = ' +
        'a3.account_id  '
      
        '         left join tbl_currencies_exchange_rates currRate on  cu' +
        'rrRate.id_currency=curr.id        '
      
        '              and  currRate.valid_from <= cast(now() as date) an' +
        'd             currRate.valid_to>= cast(now() as date)  '
      
        '         where    cdt.is_multiple_cd_transaction = 1  and  cast(' +
        'cdt.DateTime as date) between  '#39'1800-12-01'#39'  and  '#39'1800-12-01'#39'  '
      '         union    '
      
        '         select  0,   subt.id_cd_transaction,   '#39' '#39',   cdt.ct_nu' +
        'mber as indicator,   cdt.ct_number,   '
      
        '         case when cdt.is_multiple_cd_transaction = 1 then mt.na' +
        'me else t.name end,   case when cdt.direction = 1 then '#39'In'#39' else' +
        ' '#39'Out'#39' end,    '
      
        '            a1.name, a2.name, a3.name ,cdt.gaming_date as gaming' +
        'date,  cdt.amount_in,   cdt.amount_out,   cdt.datetime,  cdt.id_' +
        'cd_transaction as trans,    '
      
        '            cdt.is_multiple_cd_transaction as Mp,cd.cd_name as c' +
        'ashDeskName,cd.id as idCaskDesk,  t.name as transName, cdt.gamin' +
        'g_date, case when cdt.confirmed=1  '
      
        '            then '#39'accounted'#39' else '#39' '#39' end as Status,   cat.name ' +
        'as transCatName, cdt.remarks as description,   curr.symbol as cu' +
        'rrSymbol, currRate.selling , '
      
        '            t.id_currency,  cdt.amount_in * currRate.Selling as ' +
        'Cchf_in,  cdt.amount_out * currRate.Selling as Cchf_out, t.id_re' +
        'port, t.how_many_copies  '
      
        '            from  tbl_cd_cash_transactions as cdt   left join tb' +
        'l_cd_cash_transactions_subt as subt on cdt.ct_number = subt.ct_n' +
        'umber   '
      
        '            left join tbl_transactions as t on cdt.id_cd_transac' +
        'tion = t.id  left join tbl_multiple_transactions as mt on cdt.id' +
        '_cd_transaction = mt.id  '
      '            left join tbl_cd cd on cd.id=cdt.id_cashdesk  '
      
        '            left join tbl_categories cat on t.id_category=cat.id' +
        '  '
      
        '            left join tbl_currencies curr on t.id_currency=curr.' +
        'id  '
      
        '            left join tbl_accounts as a1 on cdt.account_id_from ' +
        '= a1.account_id  left join tbl_accounts as a2 on cdt.account_id_' +
        'to = a2.account_id  '
      
        '            left join tbl_accounts as a3 on cdt.account_id_trans' +
        'fer = a3.account_id  '
      
        '            left join tbl_currencies_exchange_rates currRate on ' +
        ' currRate.id_currency=curr.id           '
      
        '            and  currRate.valid_from <= cast(now() as date) and ' +
        '            '
      
        '            currRate.valid_to>= cast(now() as date) where    cas' +
        't(cdt.DateTime as date) between  '#39'1800-12-01'#39'  and  '#39'1800-12-01'#39)
    Left = 712
    Top = 544
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 776
    Top = 544
  end
  object frxReport1: TfrxReport
    Version = '4.12.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41188.436799942130000000
    ReportOptions.LastChange = 41188.436799942130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 888
    Top = 96
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object GenericQuery: TPgQuery
    Connection = frmDatabase.KivosConnection
    ParamCheck = False
    SQL.Strings = (
      'select * from tbl_cd')
    FetchRows = 1
    AutoCommit = False
    Options.SetFieldsReadOnly = False
    Options.RequiredFields = False
    Options.StrictUpdate = False
    Options.TrimFixedChar = False
    Options.LongStrings = False
    Options.RemoveOnRefresh = False
    Options.ExtendedFieldsInfo = False
    Options.CacheBlobs = False
    Options.AutoDeleteBlob = False
    LocalConstraints = False
    AutoCalcFields = False
    Left = 248
    Top = 400
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 320
    Top = 400
  end
  object PopupMenu_Transactions: TPopupMenu
    Left = 272
    Top = 176
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_Shifts: TPopupMenu
    Left = 448
    Top = 176
    object Print2: TMenuItem
      Caption = 'Print'
      OnClick = Print2Click
    end
    object Exporttoexcel2: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel2Click
    end
  end
  object PopupMenu_values: TPopupMenu
    Left = 544
    Top = 552
    object Exporttoexcel3: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel3Click
    end
  end
end
