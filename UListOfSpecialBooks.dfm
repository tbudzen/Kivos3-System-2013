inherited ListOfSpecialBooks: TListOfSpecialBooks
  Width = 971
  Height = 692
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 971
  ExplicitHeight = 692
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 971
    Height = 643
    ActivePage = TabSheet_CashDeskTransaction
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    ScrollOpposite = True
    TabOrder = 0
    object TabSheet_CashDeskTransaction: TTabSheet
      Caption = 'Transaction'
      TabVisible = False
      object ScrollBox_All: TScrollBox
        Left = 0
        Top = 0
        Width = 963
        Height = 633
        VertScrollBar.Position = 8
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object TLabel
          Left = 72
          Top = 8
          Width = 3
          Height = 15
        end
        object cxGrid7: TcxGrid
          Left = 10
          Top = 423
          Width = 930
          Height = 197
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          object cxGridDBTableView6: TcxGridDBTableView
            DataController.DataSource = PgDataSource11
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'amount_chf'
                Column = cxGridDBTableView6amount_chf
              end
              item
                Kind = skSum
                Column = cxGridDBTableView6amount
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
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
          Left = -2
          Top = 3
          Width = 1122
          Height = 238
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
          LookAndFeel.SkinName = 'Caramel'
          OptionsBehavior.MultiSort = False
          OptionsBehavior.Sorting = False
          OptionsBehavior.WaitForExpandNodeTime = 0
          OptionsCustomizing.BandsQuickCustomization = True
          OptionsCustomizing.BandsQuickCustomizationMaxDropDownCount = 10
          OptionsCustomizing.ColumnMoving = False
          OptionsCustomizing.ColumnsQuickCustomization = True
          OptionsCustomizing.StackedColumns = False
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsData.SummaryNullIgnore = True
          OptionsData.SyncMode = False
          OptionsSelection.HideFocusRect = False
          OptionsView.Bands = True
          OptionsView.CheckGroups = True
          OptionsView.FixedSeparatorWidth = 24
          OptionsView.GridLines = tlglBoth
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.TreeLineStyle = tllsSolid
          PopupMenu = PopupMenu_trans
          RootValue = 1
          TabOrder = 1
          OnClick = cxDBTreeList_ReportsTransactionsClick
          OnCustomDrawDataCell = cxDBTreeList_ReportsTransactionsCustomDrawDataCell
          object cxDBTreeListColumn_cd_id: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id_cd_transaction'
            MinWidth = 0
            Options.Editing = False
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
            Options.Editing = False
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_DateTime: TcxDBTreeListColumn
            Caption.Text = 'Date'
            DataBinding.FieldName = 'datetime'
            Options.Editing = False
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
            Options.Editing = False
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
            Options.Editing = False
            Width = 80
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
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
            Summary.FooterSummaryItems = <>
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
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_CHF_OUT: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF out'
            DataBinding.FieldName = 'cchf_out'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeListColumn_Indicator: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'indicator'
            Options.Editing = False
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
            Visible = False
            DataBinding.FieldName = 'id'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransaction_Mp: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'mp'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactions_Type: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'type'
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsAccountFrom: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'account_id_from'
            Position.ColIndex = 7
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsAccoutTo: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'account_id_to'
            Position.ColIndex = 8
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsAccount_transfer: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'account_id_transfer'
            Position.ColIndex = 9
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDBTreeListColumn1: TcxDBTreeListColumn
            Caption.Text = 'Account From'
            DataBinding.FieldName = 'name_1'
            Position.ColIndex = 10
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDBTreeListColumn2: TcxDBTreeListColumn
            Caption.Text = 'Account_to'
            DataBinding.FieldName = 'name_2'
            Position.ColIndex = 11
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDBTreeListColumn3: TcxDBTreeListColumn
            Caption.Text = 'Gaming Date'
            DataBinding.FieldName = 'gaming_date'
            Position.ColIndex = 12
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsTransactionscxDBTreeListColumn4: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'is_modyfied'
            Position.ColIndex = 13
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object btnReverseTransaction: TcxButton
          Left = 10
          Top = 392
          Width = 199
          Height = 25
          Caption = 'Reverse transaction'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = btnReverseTransactionClick
        end
        object cxButton_SpecialBooks: TcxButton
          Left = 215
          Top = 392
          Width = 199
          Height = 25
          Caption = 'Modify transaction'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_SpecialBooksClick
        end
      end

      object cxGrid2: TcxGrid
        Left = 3
        Top = 284
        Width = 798
        Height = 104
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource2
          DataController.KeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'ct_number'
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'name'
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'name_1'
          end
          object cxGrid2DBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'datetime'
          end
          object cxGrid2DBTableView1Column5: TcxGridDBColumn
            DataBinding.FieldName = 'gaming_date'
          end
          object cxGrid2DBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'modification_datetime'
          end
          object cxGrid2DBTableView1Column7: TcxGridDBColumn
            DataBinding.FieldName = 'copied_from_ct_number'
            Width = 72
          end
          object cxGrid2DBTableView1Column8: TcxGridDBColumn
            DataBinding.FieldName = 'amount_in'
          end
          object cxGrid2DBTableView1Column9: TcxGridDBColumn
            DataBinding.FieldName = 'amount_out'
          end
          object cxGrid2DBTableView1Column10: TcxGridDBColumn
            DataBinding.FieldName = 'remarks'
          end
          object cxGrid2DBTableView1Column11: TcxGridDBColumn
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object StaticText1: TStaticText
        Left = 16
        Top = 256
        Width = 179
        Height = 19
        Caption = 'Transaction modification history:'
        TabOrder = 2
      end
    end
    object TabSheet_Shifts: TTabSheet
      Caption = 'Shifts'
      ImageIndex = 1
      TabVisible = False
      OnContextPopup = TabSheet_ShiftsContextPopup
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 963
        Height = 633
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object cxDBTreeList_ReportsShifts: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 959
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
          DataController.ParentField = 'id_cd_transaction'
          DataController.KeyField = 'id'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Caramel'
          OptionsBehavior.MultiSort = False
          OptionsBehavior.Sorting = False
          OptionsBehavior.WaitForExpandNodeTime = 0
          OptionsCustomizing.BandsQuickCustomizationMaxDropDownCount = 10
          OptionsCustomizing.ColumnMoving = False
          OptionsCustomizing.StackedColumns = False
          OptionsData.Editing = False
          OptionsData.SmartRefresh = True
          OptionsData.SyncMode = False
          OptionsView.Bands = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.CheckGroups = True
          OptionsView.FixedSeparatorWidth = 24
          OptionsView.GridLines = tlglBoth
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.TreeLineStyle = tllsSolid
          RootValue = 1
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = -2
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
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsAmountCHF: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF'
            DataBinding.FieldName = 'amountchf'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
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
            Summary.FooterSummaryItems = <>
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
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_Diferewnce: TcxDBTreeListColumn
            DataBinding.FieldName = 'difference'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
    object TabSheet_Cd_Transaction: TTabSheet
      Caption = 'TabSheet_Cd_Transaction'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = False
      TabVisible = False
      object Label_Date: TLabel
        Left = 424
        Top = 16
        Width = 24
        Height = 15
        Caption = 'Date'
      end
      object Label6: TLabel
        Left = 424
        Top = 40
        Width = 21
        Height = 15
        Caption = 'Doc'
      end
      object ScrollBox2: TScrollBox
        Left = 3
        Top = 0
        Width = 958
        Height = 612
        BorderStyle = bsNone
        Color = cl3DLight
        ParentColor = False
        TabOrder = 13
        object Label_Status: TLabel
          Left = 51
          Top = 40
          Width = 28
          Height = 15
          Caption = 'Satus'
        end
        object Label_cashDesk: TLabel
          Left = 38
          Top = 16
          Width = 51
          Height = 15
          Caption = 'CashDesk'
        end
        object Label_transaction: TLabel
          Left = 38
          Top = 66
          Width = 62
          Height = 15
          Caption = 'Transaction'
        end
        object Label_Category: TLabel
          Left = 38
          Top = 91
          Width = 48
          Height = 15
          Caption = 'Category'
        end
        object Label_Description: TLabel
          Left = 38
          Top = 137
          Width = 60
          Height = 15
          Caption = 'Description'
        end
        object Label1: TLabel
          Left = 38
          Top = 210
          Width = 57
          Height = 15
          Caption = 'Amount in'
        end
        object Label2: TLabel
          Left = 30
          Top = 238
          Width = 65
          Height = 15
          Caption = 'Amount out'
        end
        object Label_Curr: TLabel
          Left = 58
          Top = 264
          Width = 26
          Height = 15
          Caption = 'Curr.'
        end
        object Label3: TLabel
          Left = 55
          Top = 294
          Width = 35
          Height = 15
          Caption = 'Selling'
        end
        object Label4: TLabel
          Left = 15
          Top = 325
          Width = 83
          Height = 15
          Caption = 'Amount in CHF'
        end
        object Label5: TLabel
          Left = 12
          Top = 344
          Width = 91
          Height = 15
          Caption = 'Amount out CHF'
        end
        object Label_AccountFrom: TLabel
          Left = 453
          Top = 210
          Width = 74
          Height = 15
          Caption = 'Account from'
        end
        object Label_AccountTo: TLabel
          Left = 453
          Top = 238
          Width = 59
          Height = 15
          Caption = 'Account to'
        end
        object Label_Transfer: TLabel
          Left = 436
          Top = 266
          Width = 88
          Height = 15
          Caption = 'Account transfer'
        end
        object Panel1: TPanel
          Left = 712
          Top = 3
          Width = 240
          Height = 51
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            240
            51)
          object cxButton_Save: TcxButton
            Left = 3
            Top = 4
            Width = 99
            Height = 40
            Anchors = [akLeft, akBottom]
            Caption = 'Save'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton_SaveClick
          end
          object cxButton_Cancel: TcxButton
            Left = 108
            Top = 10
            Width = 99
            Height = 28
            Anchors = [akLeft, akBottom]
            Caption = 'Cancel'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton_CancelClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 450
          Top = 69
          Width = 297
          Height = 99
          Caption = 'Gaming day'
          Color = 16370111
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Label7: TLabel
            Left = 8
            Top = 45
            Width = 74
            Height = 15
            Caption = 'Account from'
          end
          object Label8: TLabel
            Left = 8
            Top = 72
            Width = 59
            Height = 15
            Caption = 'Account to'
          end
          object Label9: TLabel
            Left = 3
            Top = 17
            Width = 89
            Height = 15
            Caption = 'Main transaction'
          end
          object GD_main: TcxDateEdit
            Left = 104
            Top = 16
            EditValue = 40909d
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.InputKind = ikRegExpr
            Properties.MinDate = 40909.000000000000000000
            TabOrder = 0
            Width = 145
          end
          object GD_acc_from: TcxDateEdit
            Left = 104
            Top = 43
            EditValue = 40909d
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.InputKind = ikRegExpr
            Properties.MinDate = 40909.000000000000000000
            TabOrder = 1
            Width = 145
          end
          object GD_acc_to: TcxDateEdit
            Left = 104
            Top = 70
            EditValue = 40909d
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.InputKind = ikRegExpr
            Properties.MinDate = 40909.000000000000000000
            TabOrder = 2
            Width = 145
          end
        end
        object ComboBox_AccountFrom: TComboBox
          Left = 530
          Top = 205
          Width = 217
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ComboBox_AccountTo: TComboBox
          Left = 530
          Top = 233
          Width = 217
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object JvValidateEdit_AmountOut: TJvValidateEdit
          Left = 107
          Top = 234
          Width = 121
          Height = 23
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloat
          DecimalPlaces = 2
          HideSelection = False
          TabOrder = 4
        end
        object ComboBox_AccountTransfer: TComboBox
          Left = 530
          Top = 263
          Width = 217
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object ComboBox_Transaction: TComboBox
        Left = 110
        Top = 61
        Width = 291
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit_CashDesk: TEdit
        Left = 110
        Top = 13
        Width = 291
        Height = 23
        Color = clBtnFace
        Enabled = False
        TabOrder = 1
      end
      object Edit_Date: TEdit
        Left = 453
        Top = 13
        Width = 228
        Height = 23
        Color = clBtnFace
        TabOrder = 2
      end
      object Edit_status: TEdit
        Left = 110
        Top = 37
        Width = 139
        Height = 23
        Color = clBtnFace
        Enabled = False
        TabOrder = 3
      end
      object ComboBox_Category: TComboBox
        Left = 110
        Top = 86
        Width = 291
        Height = 24
        Style = csDropDownList
        Color = clBtnFace
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Edit_NDoc: TEdit
        Left = 453
        Top = 40
        Width = 176
        Height = 23
        Color = clBtnFace
        TabOrder = 5
      end
      object Memo_Description: TMemo
        Left = 110
        Top = 116
        Width = 291
        Height = 69
        HideSelection = False
        ScrollBars = ssBoth
        TabOrder = 6
        WordWrap = False
      end
      object JvValidateEdit_AmountIn: TJvValidateEdit
        Left = 110
        Top = 205
        Width = 121
        Height = 23
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        HideSelection = False
        TabOrder = 7
      end
      object ComboBox_Curr: TComboBox
        Left = 110
        Top = 261
        Width = 121
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object JvValidateEdit_seling: TJvValidateEdit
        Left = 110
        Top = 291
        Width = 121
        Height = 23
        Color = clBtnFace
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        Enabled = False
        HideSelection = False
        TabOrder = 9
      end
      object JvValidateEdit_AmountInChf: TJvValidateEdit
        Left = 110
        Top = 317
        Width = 121
        Height = 23
        Color = clBtnFace
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        Enabled = False
        HideSelection = False
        TabOrder = 10
      end
      object JvValidateEdit_amountOutCHF: TJvValidateEdit
        Left = 110
        Top = 344
        Width = 121
        Height = 23
        Color = clBtnFace
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        Enabled = False
        HideSelection = False
        TabOrder = 11
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 380
        Width = 930
        Height = 197
        TabOrder = 12
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource11
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'amount_chf'
              Column = cxGridDBColumn14
            end
            item
              Kind = skSum
              Column = cxGridDBColumn12
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_sub_transaction'
            Visible = False
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_transaction'
            Visible = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_value'
            Visible = False
            Width = 44
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
            Visible = False
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_category'
            Visible = False
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'ct_number'
            Visible = False
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'category'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 106
          end
          object cxGridDBColumn9: TcxGridDBColumn
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
          object cxGridDBColumn10: TcxGridDBColumn
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
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Multiplier'
            DataBinding.FieldName = 'multiplier_1'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn12: TcxGridDBColumn
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
          object cxGridDBColumn13: TcxGridDBColumn
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
          object cxGridDBColumn14: TcxGridDBColumn
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
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'ord'
            Visible = False
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel_: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      971
      49)
    object cxDateEdit_from: TcxDateEdit
      Left = 16
      Top = 15
      EditValue = 40909d
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.InputKind = ikRegExpr
      Properties.MinDate = 40909.000000000000000000
      TabOrder = 0
      Width = 121
    end
    object cxTimeEdit_From: TcxTimeEdit
      Left = 143
      Top = 15
      EditValue = 0d
      TabOrder = 1
      Width = 121
    end
    object cxButton_Refresh: TcxButton
      Left = 534
      Top = 11
      Width = 99
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Refresh'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_RefreshClick
    end
    object cxDateEdit_To: TcxDateEdit
      Left = 276
      Top = 15
      EditValue = 40909d
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.InputKind = ikRegExpr
      Properties.MinDate = 40909.000000000000000000
      TabOrder = 3
      Width = 121
    end
    object cxTimeEdit_To: TcxTimeEdit
      Left = 399
      Top = 15
      EditValue = 0d
      TabOrder = 4
      Width = 121
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
    Left = 256
    Top = 192
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 360
    Top = 184
  end
  object PgQuery22: TPgQuery
    SQLUpdate.Strings = (
      'UPDATE tbl_cd_cash_transactions'
      'SET'
      
        '  id = :id, id_cashdesk = :id_cashdesk, id_cd_transaction = :id_' +
        'cd_transaction, confirmed = :confirmed, confirmation_id_user = :' +
        'confirmation_id_user, id_user = :id_user, type = :type, datetime' +
        ' = :datetime, ct_number = :ct_number, is_multiple_cd_transaction' +
        ' = :is_multiple_cd_transaction, direction = :direction, base_ct_' +
        'number = :base_ct_number, remarks = :remarks, amount_in = :amoun' +
        't_in, amount_out = :amount_out, account_id_from = :account_id_fr' +
        'om, account_id_to = :account_id_to, account_id_transfer = :accou' +
        'nt_id_transfer, difference = :difference, copied_from_ct_number ' +
        '= :copied_from_ct_number, confirmed_from_other_transaction = :co' +
        'nfirmed_from_other_transaction, confirms = :confirms, gaming_dat' +
        'e = :gaming_date, allow_change_gd = :allow_change_gd, main_trans' +
        'action_gd = :main_transaction_gd, account_from_gd = :account_fro' +
        'm_gd, account_to_gd = :account_to_gd, acc_from_gd = :acc_from_gd' +
        ', acc_to_gd = :acc_to_gd, id_category_diff_s = :id_category_diff' +
        '_s, explanation_supervisor = :explanation_supervisor, id_explana' +
        'tion_supervisor = :id_explanation_supervisor, confirmation_id_us' +
        'er_controller = :confirmation_id_user_controller'
      'WHERE'
      '  id = :Old_id')
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
      '  cd.cd_name as cashDeskName,'
      
        '  t.name as transName,cdt.gaming_date, case when cdt.confirmed=1' +
        ' then '#39'accounted'#39' else '#39#39' end as Status,'
      '  cat.name as transCatName,cdt.remarks as description'
      '  ,curr.symbol as currSymbol, currRate.selling, t.id_currency '
      '  ,subt.amount_in * currRate.Selling as Cchf_in,'
      
        '  subt.amount_out * currRate.Selling as Cchf_out , cdt.type, cdt' +
        '.account_id_from, cdt.account_id_to,'
      '  cdt.account_id_transfer,cdt.is_modyfied'
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
        'e,'
      
        '  t.name as transName, cdt.gaming_date, case when cdt.confirmed=' +
        '1 then '#39'accounted'#39' else '#39#39' end as Status,'
      '  cat.name as transCatName,cdt.remarks as description'
      '  ,curr.symbol as currSymbol, currRate.selling , t.id_currency'
      '  ,cdt.amount_in * currRate.Selling as Cchf_in,'
      
        '  cdt.amount_out * currRate.Selling as Cchf_out, cdt.type, cdt.a' +
        'ccount_id_from, cdt.account_id_to,'
      '  cdt.account_id_transfer,cdt.is_modyfied'
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
    Left = 824
    Top = 144
  end
  object PgDataSource19: TPgDataSource
    DataSet = PgQuery22
    Left = 688
    Top = 144
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgQuery12
    Left = 424
    Top = 560
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
    Left = 504
    Top = 560
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '       cdt.id as id, 0 as id_cd_transaction,  cd.cd_name,'
      '       cdt.base_ct_Number, 0 as exchange_rate, cdt.ct_number,'
      '      cdt.difference as difference,'
      
        '        (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_' +
        'rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      '          where cdt.id = ctv.id_cd_transaction)as totalamount,'
      '       cdt.DateTime  as date,'
      '       '
      '       '#39' '#39' as catName,'
      '       cdt.Gaming_date, '
      '       case when substr(cdt.ct_number,1,2)='#39'OP'#39' then '#39'open'#39' '
      
        '            when substr(cdt.ct_number,1,2)='#39'CL'#39' then '#39'close'#39' end' +
        ' as operation,'
      '       us.first_name ||'#39' '#39'|| us.last_name as user,'
      '       '#39'CHF'#39' as currSymbol,  '
      '       '
      
        '       case when cdt.difference < 0 then sum(cdt.difference +  (' +
        '  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      
        '          where cdt.id = ctv.id_cd_transaction))  else 0 end as ' +
        'balance ,  '
      '       0 as currrate, '
      '       0 as amountchf  '
      'from tbl_cd_cash_transactions cdt'
      'left join tbl_cd cd on cd.id=cdt.id_cashDesk'
      'left join tbl_users us on cdt.id_user=us.id'
      'where  cdt.type = 3 and cdt.id=-1000'
      'group by cdt.id,cd.cd_name ,us.first_name,us.last_name'
      'Union'
      'select ctv.id,  ctv.id_cd_transaction,  '#39' '#39' as cd_name,'
      '       ctv.ct_number,  ctv.exchange_rate , ctr.ct_number,'
      '       0 as difference,'
      '       sum(ctv.nr * tbval.multiplier) as totalamount,'
      '      ctr.dateTime  as date,'
      '       cat.name as catName,'
      '       NULL as Gaming_date,'
      '       '#39#39' as operation,'
      '       '#39#39' as user,'
      '      curr.symbol as currSymbol,'
      '      0 as balance,'
      #9' currRate.buying as currrate,  '
      #9' sum(ctv.nr * tbval.multiplier)* currRate.buying as amountchf'
      #9
      'from tbl_cd_cash_transactions_subt_categories_values as ctv'
      
        'left join tbl_cd_cash_transactions as ctr on ctr.id= ctv.id_cd_t' +
        'ransaction '
      'left join tbl_values as tbval on ctv.id_cd_value = tbval.id'
      'left  join tbl_cd cd on cd.id = ctv.id_cashdesk'
      'left join tbl_categories  cat on ctv.id_cd_category= cat.id'
      '--left join tbl_transactions t on t.id=ctr.id_cd_transaction'
      ''
      'left join tbl_currencies curr on curr.id=tbval.id_currency'
      
        'left join tbl_currencies_exchange_rates currRate on  currRate.id' +
        '_currency=curr.id '
      
        '            and  currRate.valid_from <= cast(now() as date) and ' +
        ' '
      '              currRate.valid_to>= cast(now() as date) '
      ''
      'where '
      'ctr.type in (1,3,5,6,7,8,9)  and nr <> 0 and ctv.id=-1000'
      'group by ctv.id, cd.cd_name ,ctv.ct_number, '
      
        ' ctv.exchange_rate ,ctr.ct_number ,ctr.difference, ctv.id_cd_tra' +
        'nsaction ,ctr.dateTime,'
      ' cat.name,curr.symbol, ctr.id_cd_transaction ,  currRate.buying')
    Left = 744
    Top = 472
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 832
    Top = 464
  end
  object PgTable1: TPgTable
    TableName = 'tbl_access_permissions'
    Connection = frmDatabase.KivosConnection
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 560
    Top = 136
  end
  object PgQuery_Execute: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '       cdt.id as id, 0 as id_cd_transaction,  cd.cd_name,'
      '       cdt.base_ct_Number, 0 as exchange_rate, cdt.ct_number,'
      '      cdt.difference as difference,'
      
        '        (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_' +
        'rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      '          where cdt.id = ctv.id_cd_transaction)as totalamount,'
      '       cdt.DateTime  as date,'
      '       '
      '       '#39' '#39' as catName,'
      '       cdt.Gaming_date, '
      '       case when substr(cdt.ct_number,1,2)='#39'OP'#39' then '#39'open'#39' '
      
        '            when substr(cdt.ct_number,1,2)='#39'CL'#39' then '#39'close'#39' end' +
        ' as operation,'
      '       us.first_name ||'#39' '#39'|| us.last_name as user,'
      '       '#39'CHF'#39' as currSymbol,  '
      '       '
      
        '       case when cdt.difference < 0 then sum(cdt.difference +  (' +
        '  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      
        '          where cdt.id = ctv.id_cd_transaction))  else 0 end as ' +
        'balance ,  '
      '       0 as currrate, '
      '       0 as amountchf  '
      'from tbl_cd_cash_transactions cdt'
      'left join tbl_cd cd on cd.id=cdt.id_cashDesk'
      'left join tbl_users us on cdt.id_user=us.id'
      'where  cdt.type = 3 and cdt.id=-1000'
      'group by cdt.id,cd.cd_name ,us.first_name,us.last_name'
      'Union'
      'select ctv.id,  ctv.id_cd_transaction,  '#39' '#39' as cd_name,'
      '       ctv.ct_number,  ctv.exchange_rate , ctr.ct_number,'
      '       0 as difference,'
      '       sum(ctv.nr * tbval.multiplier) as totalamount,'
      '      ctr.dateTime  as date,'
      '       cat.name as catName,'
      '       NULL as Gaming_date,'
      '       '#39#39' as operation,'
      '       '#39#39' as user,'
      '      curr.symbol as currSymbol,'
      '      0 as balance,'
      #9' currRate.buying as currrate,  '
      #9' sum(ctv.nr * tbval.multiplier)* currRate.buying as amountchf'
      #9
      'from tbl_cd_cash_transactions_subt_categories_values as ctv'
      
        'left join tbl_cd_cash_transactions as ctr on ctr.id= ctv.id_cd_t' +
        'ransaction '
      'left join tbl_values as tbval on ctv.id_cd_value = tbval.id'
      'left  join tbl_cd cd on cd.id = ctv.id_cashdesk'
      'left join tbl_categories  cat on ctv.id_cd_category= cat.id'
      '--left join tbl_transactions t on t.id=ctr.id_cd_transaction'
      ''
      'left join tbl_currencies curr on curr.id=tbval.id_currency'
      
        'left join tbl_currencies_exchange_rates currRate on  currRate.id' +
        '_currency=curr.id '
      
        '            and  currRate.valid_from <= cast(now() as date) and ' +
        ' '
      '              currRate.valid_to>= cast(now() as date) '
      ''
      'where '
      'ctr.type in (1,3,5,6,7,8,9)  and nr <> 0 and ctv.id=-1000'
      'group by ctv.id, cd.cd_name ,ctv.ct_number, '
      
        ' ctv.exchange_rate ,ctr.ct_number ,ctr.difference, ctv.id_cd_tra' +
        'nsaction ,ctr.dateTime,'
      ' cat.name,curr.symbol, ctr.id_cd_transaction ,  currRate.buying')
    Left = 872
    Top = 264
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions')

    Left = 456
    Top = 192
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select cc.*,acc.name,acc1.name from tbl_cd_cash_transactions_his' +
        't cc '
      
        '             left join tbl_accounts acc on  acc.account_id = cc.' +
        'account_id_from'
      
        '             left join tbl_accounts acc1 on  acc1.account_id = c' +
        'c.account_id_to'
      '          where   cc.ct_number = '#39'0'#39)
    Left = 384
    Top = 360
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery3
    Left = 464
    Top = 368
  end
  object PopupMenu_trans: TPopupMenu
    Left = 184
    Top = 112
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_Hist: TPopupMenu
    Left = 280
    Top = 384
    object exporttoexcel2: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 560
    object MenuItem1: TMenuItem
      Caption = 'export to excel'
      OnClick = MenuItem1Click
    end

  end
end
