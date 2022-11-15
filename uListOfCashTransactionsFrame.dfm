inherited ListOfCashTransactionsFrame: TListOfCashTransactionsFrame
  Width = 1174
  Height = 773
  VertScrollBar.Color = clBtnText
  VertScrollBar.ParentColor = False
  AutoScroll = True
  DockSite = True
  ParentColor = True
  ExplicitWidth = 1174
  ExplicitHeight = 773
  object JvLinkLabel2: TJvLinkLabel
    Left = 387
    Top = 395
    Height = 13
  end
  object MainTabs: TcxPageControl
    Left = 3
    Top = 2
    Width = 1168
    Height = 768
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.Options = [pcoRedrawOnResize]
    Properties.Style = 11
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ClientRectBottom = 763
    ClientRectLeft = 5
    ClientRectRight = 1163
    ClientRectTop = 26
    object cxTabSheet2: TcxTabSheet
      Caption = '    List of cash transactions    '
      ImageIndex = 1
      OnShow = cxTabSheet2Show
      DesignSize = (
        1158
        737)
      object cxGroupBox1: TcxGroupBox
        Left = 26
        Top = 328
        Caption = 'cxGroupBox1'
        TabOrder = 9
        Height = 50
        Width = 703
      end
      object cxLabel9: TcxLabel
        Left = 11
        Top = 10
        AutoSize = False
        Caption = 'Select cashdesk:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 33
        Width = 158
      end
      object cbCashdesk: TcxDBLookupComboBox
        Left = 175
        Top = 3
        AutoSize = False
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource8
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            MinWidth = 0
            Width = 0
            FieldName = 'id'
          end
          item
            SortOrder = soAscending
            FieldName = 'cd_name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ColumnSorting = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource9
        Properties.ReadOnly = False
        Properties.OnEditValueChanged = cbCashdeskPropertiesEditValueChanged
        Style.BorderStyle = ebsOffice11
        Style.Color = clBtnFace
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        Style.Shadow = False
        Style.ButtonStyle = btsDefault
        Style.ButtonTransparency = ebtNone
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 0
        Height = 40
        Width = 288
      end
      object cxLabel10: TcxLabel
        Left = 469
        Top = 3
        AutoSize = False
        Caption = ' Pending transaction ... '
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clYellow
        Style.Font.Height = -17
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        Style.TextColor = 883442
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 40
        Width = 220
        AnchorX = 579
        AnchorY = 23
      end
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 49
        Width = 1152
        Height = 685
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Properties.ActivePage = cxTabSheet5
        Properties.Style = 11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ClientRectBottom = 680
        ClientRectLeft = 5
        ClientRectRight = 1147
        ClientRectTop = 26
        object cxTabSheet4: TcxTabSheet
          Caption = '    Confirmed cash transactions    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          DesignSize = (
            1142
            654)
          object Shape1: TShape
            Left = 547
            Top = 304
            Width = 592
            Height = 33
            Anchors = [akLeft, akTop, akRight]
            Brush.Color = clGray
            Pen.Color = clSilver
          end
          object cxGrid6: TcxGrid
            Left = 547
            Top = 336
            Width = 592
            Height = 315
            Anchors = [akLeft, akTop, akRight, akBottom]
            PopupMenu = PopupMenu_Balance
            TabOrder = 8
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            object cxGridDBTableView5: TcxGridDBTableView
              Navigator.Visible = True
              DataController.DataSource = PgDataSource15
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '### ### ### ### ##0.00'
                  Kind = skSum
                  FieldName = 'amount_base'
                  Column = cxGridDBTableView5amount_base
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.Editing = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 24
              object cxGridDBTableView5category_name: TcxGridDBColumn
                Caption = 'Category name'
                DataBinding.FieldName = 'category_name'
                HeaderAlignmentHorz = taCenter
                SortIndex = 0
                SortOrder = soAscending
                Width = 104
              end
              object cxGridDBTableView5currency_symbol: TcxGridDBColumn
                Caption = 'Curr.'
                DataBinding.FieldName = 'currency_symbol'
                HeaderAlignmentHorz = taCenter
                SortIndex = 1
                SortOrder = soAscending
                Width = 61
              end
              object cxGridDBTableView5amount_foreign: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'amount_foreign'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = '### ### ### ### ##0.00'
                HeaderAlignmentHorz = taCenter
                Width = 61
              end
              object cxGridDBTableView5exchange_rate: TcxGridDBColumn
                Caption = 'Ex. rate'
                DataBinding.FieldName = 'exchange_rate'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = '### ### ### ### ##0.00'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Width = 61
              end
              object cxGridDBTableView5amount_base: TcxGridDBColumn
                Caption = 'Amount CHF'
                DataBinding.FieldName = 'amount_base'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = '### ### ### ### ##0.00'
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView5
            end
          end
          object cxLabel62: TcxLabel
            Left = 7
            Top = 3
            AutoSize = False
            Caption = 'Current cash transactions from the last shift:'
            ParentFont = False
            Style.BorderColor = clSilver
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -20
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
            Height = 29
            Width = 660
          end
          object cxGrid7: TcxGrid
            Left = 3
            Top = 304
            Width = 538
            Height = 347
            Anchors = [akLeft, akTop, akBottom]
            PopupMenu = PopupMenu_Values
            TabOrder = 5
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            LookAndFeel.SkinName = 'Foggy'
            object cxGridDBTableView6: TcxGridDBTableView
              Navigator.Visible = True
              DataController.DataSource = PgDataSource11
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '### ### ### ### ##0.00'
                  Kind = skSum
                  FieldName = 'amount_chf'
                  Column = cxGridDBTableView6amount_chf
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
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
                DataBinding.FieldName = 'value_name'
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
                DataBinding.FieldName = 'amount_base'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.Alignment.Vert = taVCenter
                Properties.DisplayFormat = '### ### ### ### ##0.00'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 68
              end
              object cxGridDBTableView6change_chf: TcxGridDBColumn
                Caption = 'Ex. rate'
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
          object cxLabel67: TcxLabel
            Left = 547
            Top = 309
            AutoSize = False
            Caption = 'Current balance'
            ParentFont = False
            Style.BorderColor = clSilver
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -15
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.TextColor = clWhite
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Properties.Alignment.Horz = taCenter
            Transparent = True
            Height = 23
            Width = 585
            AnchorX = 840
          end
          object cxDBTreeList1: TcxDBTreeList
            Left = 3
            Top = 2
            Width = 1136
            Height = 240
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Bands = <
              item
              end>
            DataController.DataSource = PgDataSource19
            DataController.ParentField = 'id_cd_transaction'
            DataController.KeyField = 'id'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsBehavior.MultiSort = False
            OptionsBehavior.Sorting = False
            OptionsBehavior.WaitForExpandNodeTime = 0
            OptionsCustomizing.ColumnMoving = False
            OptionsCustomizing.StackedColumns = False
            OptionsData.Editing = False
            OptionsData.SmartRefresh = True
            OptionsData.SyncMode = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.CheckGroups = True
            OptionsView.FixedSeparatorWidth = 24
            OptionsView.Footer = True
            OptionsView.GridLines = tlglBoth
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 24
            OptionsView.TreeLineStyle = tllsSolid
            PopupMenu = PopupMenu_Trans
            RootValue = 1
            TabOrder = 0
            OnCustomDrawDataCell = cxDBTreeList1CustomDrawDataCell
            OnFocusedNodeChanged = cxDBTreeList1FocusedNodeChanged
            object cxDBTreeList1column: TcxDBTreeListColumn
              Caption.Text = ' '
              DataBinding.FieldName = '?column?'
              Width = 56
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1id: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'id'
              Width = 100
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1ct_number: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = 'CTNr'
              DataBinding.FieldName = 'ct_number'
              Width = 100
              Position.ColIndex = 10
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1name: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = 'Transaction'
              DataBinding.FieldName = 't_name'
              Width = 100
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1name_1: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = 'Account From'
              DataBinding.FieldName = 'name_1'
              Width = 100
              Position.ColIndex = 5
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1name_2: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = 'Account To'
              DataBinding.FieldName = 'name_2'
              Width = 100
              Position.ColIndex = 6
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1name_3: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'name_3'
              Width = 100
              Position.ColIndex = 11
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1case: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Caption.AlignHorz = taCenter
              Caption.GlyphAlignHorz = taCenter
              Caption.Text = 'Direction'
              DataBinding.FieldName = 't_direction'
              Width = 100
              Position.ColIndex = 9
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1amount_in: TcxDBTreeListColumn
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Caption.AlignHorz = taCenter
              Caption.Text = 'Amount In'
              DataBinding.FieldName = 'amount_in'
              Width = 100
              Position.ColIndex = 7
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1amount_out: TcxDBTreeListColumn
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '### ### ### ### ##0.00'
              Caption.AlignHorz = taCenter
              Caption.Text = 'Amount Out'
              DataBinding.FieldName = 'amount_out'
              Width = 100
              Position.ColIndex = 8
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1datetime: TcxDBTreeListColumn
              PropertiesClassName = 'TcxTextEditProperties'
              Caption.AlignHorz = taCenter
              Caption.Text = 'Datetime'
              DataBinding.FieldName = 'datetime'
              Width = 100
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1indicator: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'indicator'
              Width = 100
              Position.ColIndex = 13
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1id_cd_transaction: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'id_cd_transaction'
              Width = 100
              Position.ColIndex = 12
              Position.RowIndex = 0
              Position.BandIndex = 0
              SortOrder = soDescending
              SortIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'trans'
              Position.ColIndex = 14
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1gaming_date: TcxDBTreeListColumn
              Caption.AlignHorz = taCenter
              Caption.Text = 'Gaming Date'
              DataBinding.FieldName = 'gaming_date'
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object btnAddCashTransaction: TcxButton
            Left = 3
            Top = 248
            Width = 167
            Height = 50
            Cursor = crHandPoint
            Spacing = 12
            Caption = 'Transaction'
            Colors.DefaultText = clBlack
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = ImageList1
            OptionsImage.Spacing = 12
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnAddCashTransactionClick
          end
          object btnAddMultipleCashTransaction: TcxButton
            Left = 176
            Top = 248
            Width = 220
            Height = 50
            Cursor = crHandPoint
            Spacing = 12
            Caption = 'Multiple transaction'
            Colors.DefaultText = clBlack
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsImage.ImageIndex = 2
            OptionsImage.Images = ImageList1
            OptionsImage.Spacing = 12
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnAddMultipleCashTransactionClick
          end
          object btnStartTransfer: TcxButton
            Left = 412
            Top = 248
            Width = 183
            Height = 50
            Cursor = crHandPoint
            Spacing = 12
            Caption = 'Start transfer'
            Colors.DefaultText = clBlack
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = ImageList1
            OptionsImage.Spacing = 12
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnStartTransferClick
          end
          object btnTransferRequest: TcxButton
            Left = 601
            Top = 248
            Width = 183
            Height = 50
            Cursor = crHandPoint
            Spacing = 12
            Caption = 'Request transfer'
            Colors.DefaultText = clBlack
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsImage.ImageIndex = 3
            OptionsImage.Images = ImageList1
            OptionsImage.Spacing = 12
            TabOrder = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnTransferRequestClick
          end
          object btnContinuousInfo: TcxButton
            Left = 952
            Top = 248
            Width = 187
            Height = 50
            Cursor = crHandPoint
            Spacing = 12
            Anchors = [akTop, akRight]
            Caption = 'Continuous info'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            OptionsImage.ImageIndex = 5
            OptionsImage.Spacing = 12
            TabOrder = 9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnContinuousInfoClick
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = '    Unconfirmed cash transactions    '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          OnShow = cxTabSheet5Show
          DesignSize = (
            1142
            654)
          object cxGrid8: TcxGrid
            Left = 3
            Top = 27
            Width = 1136
            Height = 246
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu_uncorfirmed
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            object cxGridDBTableView7: TcxGridDBTableView
              Navigator.Visible = True
              OnCustomDrawCell = cxGridDBTableView7CustomDrawCell
              OnFocusedRecordChanged = cxGridDBTableView7FocusedRecordChanged
              DataController.DataSource = PgDataSource10
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'amount_in'
                  Column = cxGridDBTableView7amount_in
                  DisplayText = 'Total'
                end
                item
                  Kind = skSum
                  FieldName = 'amount_out'
                  Column = cxGridDBTableView7amount_out
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnMoving = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.Editing = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 24
              object cxGridDBTableView7id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGridDBTableView7id_cashdesk: TcxGridDBColumn
                DataBinding.FieldName = 'id_cashdesk'
                Visible = False
              end
              object cxGridDBTableView7ct_number: TcxGridDBColumn
                Caption = 'Number'
                DataBinding.FieldName = 'ct_number'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 203
              end
              object cxGridDBTableView7name: TcxGridDBColumn
                Caption = 'Name'
                DataBinding.FieldName = 'name'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 92
              end
              object cxGridDBTableView7direction: TcxGridDBColumn
                Caption = 'Direction'
                DataBinding.FieldName = 'direction'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 57
              end
              object cxGridDBTableView7is_multiple_cd_transaction: TcxGridDBColumn
                Caption = 'Multiple ?'
                DataBinding.FieldName = 'is_multiple_cd_transaction'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ReadOnly = True
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 59
              end
              object cxGridDBTableView7confirmed: TcxGridDBColumn
                DataBinding.FieldName = 'confirmed'
                Visible = False
                IsCaptionAssigned = True
              end
              object cxGridDBTableView7confirmation_id_user: TcxGridDBColumn
                DataBinding.FieldName = 'confirmation_id_user'
                Visible = False
              end
              object cxGridDBTableView7id_user: TcxGridDBColumn
                DataBinding.FieldName = 'id_user'
                Visible = False
              end
              object cxGridDBTableView7name_1: TcxGridDBColumn
                Caption = 'Account 1'
                DataBinding.FieldName = 'name_1'
              end
              object cxGridDBTableView7name_2: TcxGridDBColumn
                Caption = 'Account 2'
                DataBinding.FieldName = 'name_2'
              end
              object cxGridDBTableView7name_3: TcxGridDBColumn
                DataBinding.FieldName = 'name_3'
                Visible = False
              end
              object cxGridDBTableView7datetime: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'datetime'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                SortIndex = 0
                SortOrder = soDescending
              end
              object cxGridDBTableView7type: TcxGridDBColumn
                DataBinding.FieldName = 'type'
                Visible = False
              end
              object cxGridDBTableView7account_id_from: TcxGridDBColumn
                DataBinding.FieldName = 'account_id_from'
                Visible = False
              end
              object cxGridDBTableView7account_id_to: TcxGridDBColumn
                DataBinding.FieldName = 'account_id_to'
                Visible = False
              end
              object cxGridDBTableView7confirmed_from_other_transaction: TcxGridDBColumn
                DataBinding.FieldName = 'confirmed_from_other_transaction'
                Visible = False
              end
              object cxGridDBTableView7confirms: TcxGridDBColumn
                DataBinding.FieldName = 'confirms'
                Visible = False
              end
              object cxGridDBTableView7amount_in: TcxGridDBColumn
                Caption = 'Amount IN'
                DataBinding.FieldName = 'amount_in'
              end
              object cxGridDBTableView7amount_out: TcxGridDBColumn
                Caption = 'Amount OUT'
                DataBinding.FieldName = 'amount_out'
              end
            end
            object cxGridLevel7: TcxGridLevel
              GridView = cxGridDBTableView7
            end
          end
          object cxLabel63: TcxLabel
            Left = 3
            Top = 3
            AutoSize = False
            Caption = 'Unconfirmed cash transactions'
            ParentFont = False
            Style.BorderColor = clSilver
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
            Height = 19
            Width = 488
          end
          object btnConfirmPendingTransaction: TcxButton
            Left = 891
            Top = 279
            Width = 248
            Height = 28
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Confirm transaction'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnConfirmPendingTransactionClick
          end
          object cxGrid2: TcxGrid
            Left = 3
            Top = 328
            Width = 1136
            Height = 321
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 5
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Visible = True
              DataController.DataSource = PgDataSource13
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 24
              object cxGridDBTableView1id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGridDBTableView1id_cd_sub_transaction: TcxGridDBColumn
                DataBinding.FieldName = 'id_cd_sub_transaction'
                Visible = False
              end
              object cxGridDBTableView1id_cd_transaction: TcxGridDBColumn
                DataBinding.FieldName = 'id_cd_transaction'
                Visible = False
              end
              object cxGridDBTableView1id_cd_value: TcxGridDBColumn
                DataBinding.FieldName = 'id_cd_value'
                Visible = False
              end
              object cxGridDBTableView1id_cashdesk: TcxGridDBColumn
                DataBinding.FieldName = 'id_cashdesk'
                Visible = False
              end
              object cxGridDBTableView1id_cd_category: TcxGridDBColumn
                DataBinding.FieldName = 'id_cd_category'
                Visible = False
              end
              object cxGridDBTableView1category: TcxGridDBColumn
                Caption = 'Category'
                DataBinding.FieldName = 'category'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1value: TcxGridDBColumn
                Caption = 'Value'
                DataBinding.FieldName = 'value'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1nr: TcxGridDBColumn
                Caption = 'Nr'
                DataBinding.FieldName = 'nr'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1ct_number: TcxGridDBColumn
                DataBinding.FieldName = 'ct_number'
                Visible = False
              end
              object cxGridDBTableView1multiplier_1: TcxGridDBColumn
                Caption = 'Multiplier'
                DataBinding.FieldName = 'multiplier_1'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1amount: TcxGridDBColumn
                Caption = 'Amount '
                DataBinding.FieldName = 'amount'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = '0.00'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1change_chf: TcxGridDBColumn
                Caption = 'Change CHF'
                DataBinding.FieldName = 'change_chf'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
              object cxGridDBTableView1amount_chf: TcxGridDBColumn
                Caption = 'Amount CHF'
                DataBinding.FieldName = 'amount_chf'
                PropertiesClassName = 'TcxCalcEditProperties'
                Properties.DisplayFormat = '0.00'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxLabel70: TcxLabel
            Left = 3
            Top = 303
            AutoSize = False
            Caption = 'Values details'
            ParentFont = False
            Style.BorderColor = clSilver
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Transparent = True
            Height = 19
            Width = 281
          end
          object btnCancelPendingTransaction: TcxButton
            Left = 715
            Top = 279
            Width = 170
            Height = 28
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Cancel transaction'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnCancelPendingTransactionClick
          end
        end
      end
      object btnClearCashdesk: TcxButton
        Left = 1088
        Top = 135
        Width = 46
        Height = 40
        Anchors = [akTop, akRight]
        Caption = 'DEBUG: Clear all'
        Colors.DefaultText = clBlack
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 3
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsItalic]
        ParentFont = False
        WordWrap = True
        OnClick = btnClearCashdeskClick
      end
      object btnOpenCashdesk: TcxButton
        Left = 710
        Top = 1
        Width = 183
        Height = 29
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Open cashdesk'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnOpenCashdeskClick
      end
      object btnCloseCashDesk: TcxButton
        Left = 710
        Top = 36
        Width = 183
        Height = 29
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Close cashdesk'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnCloseCashDeskClick
      end
      object btnChangeCashier: TcxButton
        Left = 899
        Top = 1
        Width = 167
        Height = 29
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Change cashier'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 4
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnChangeCashierClick
      end
      object btnIntermediate: TcxButton
        Left = 899
        Top = 36
        Width = 167
        Height = 29
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Intermediate'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnIntermediateClick
      end
      object btnRefresh: TcxButton
        Left = 1072
        Top = 1
        Width = 83
        Height = 64
        Cursor = crHandPoint
        Layout = blGlyphTop
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = ImageList1
        OptionsImage.Layout = blGlyphTop
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnRefreshClick
      end
      object btnBufferShift: TcxButton
        Left = 521
        Top = 36
        Width = 183
        Height = 29
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Shift from buffer'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnBufferShiftClick
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '    Cash transaction    '
      Enabled = False
      OnShow = cxTabSheet1Show
      DesignSize = (
        1158
        737)
      object cxLabel8: TcxLabel
        Left = 3
        Top = 236
        AutoSize = False
        Caption = 'Amount OUT:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 31
        Width = 102
      end
      object cxGrid1: TcxGrid
        Left = 535
        Top = 181
        Width = 619
        Height = 261
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Right
        TabOrder = 12
        Visible = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = PgDataSource1
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '### ### ### ### ##0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1amount
            end
            item
              Format = '### ### ### ### ##0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1amount_chf
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1id_cd_sub_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_sub_transaction'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1id_cd_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_transaction'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1id_cd_value: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_value'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1id_cashdesk: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1count: TcxGridDBColumn
            DataBinding.FieldName = 'count'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1amount_in: TcxGridDBColumn
            DataBinding.FieldName = 'amount_in'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1amount_out: TcxGridDBColumn
            DataBinding.FieldName = 'amount_out'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1id_cd_category: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_category'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1ct_number: TcxGridDBColumn
            DataBinding.FieldName = 'ct_number'
            Visible = False
            Options.Editing = False
          end
          object cxGrid1DBTableView1category: TcxGridDBColumn
            Caption = 'Category name'
            DataBinding.FieldName = 'category'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 96
          end
          object cxGrid1DBTableView1value: TcxGridDBColumn
            Caption = 'Value name'
            DataBinding.FieldName = 'value_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 83
          end
          object cxGrid1DBTableView1nr: TcxGridDBColumn
            Caption = 'Nr'
            DataBinding.FieldName = 'nr'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ' #####'
            Properties.Precision = 0
            Properties.UseThousandSeparator = True
            Properties.OnEditValueChanged = cxGrid1DBTableView1nrPropertiesEditValueChanged
            Properties.OnValidate = cxGrid1DBTableView1nrPropertiesValidate
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Styles.Content = cxStyle5
            Width = 83
          end
          object cxGrid1DBTableView1multiplier: TcxGridDBColumn
            Caption = 'Multiplier'
            DataBinding.FieldName = 'multiplier'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1amount: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'amount_0'
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
            Options.Editing = False
            Options.Focusing = False
            Width = 79
          end
          object cxGrid1DBTableView1change_chf: TcxGridDBColumn
            Caption = 'Change CHF'
            DataBinding.FieldName = 'change_chf'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ' ### ### ### ####0.0000'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 83
          end
          object cxGrid1DBTableView1amount_chf: TcxGridDBColumn
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
            Options.Editing = False
            Options.Focusing = False
            Width = 80
          end
          object cxGrid1DBTableView1Column_Ord: TcxGridDBColumn
            DataBinding.FieldName = 'ord'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
          end
          object cxGrid1DBTableView1exchange_rate: TcxGridDBColumn
            Caption = 'Ex. rate'
            DataBinding.FieldName = 'exchange_rate'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 89
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 3
        Top = 558
        Width = 1150
        Height = 176
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 33
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = PgDataSource18
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView2id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView2id_cashdesk: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
            Visible = False
          end
          object cxGridDBTableView2id_cd_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_transaction'
            Visible = False
          end
          object cxGridDBTableView2account_id: TcxGridDBColumn
            DataBinding.FieldName = 'account_id'
            Visible = False
          end
          object cxGridDBTableView2confirmed: TcxGridDBColumn
            DataBinding.FieldName = 'confirmed'
            Visible = False
          end
          object cxGridDBTableView2confirmation_id_user: TcxGridDBColumn
            DataBinding.FieldName = 'confirmation_id_user'
            Visible = False
          end
          object cxGridDBTableView2id_user: TcxGridDBColumn
            DataBinding.FieldName = 'id_user'
            Visible = False
          end
          object cxGridDBTableView2ct_number: TcxGridDBColumn
            Caption = 'Number'
            DataBinding.FieldName = 'ct_number'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 133
          end
          object cxGridDBTableView2datetime: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'datetime'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soDescending
            Width = 133
          end
          object cxGridDBTableView2name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBTableView2is_multiple_cd_transaction: TcxGridDBColumn
            Caption = 'Multiple ?'
            DataBinding.FieldName = 'is_multiple_cd_transaction'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBTableView2account_id_debit: TcxGridDBColumn
            Caption = 'Debit'
            DataBinding.FieldName = 'account_id_debit'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBTableView2account_id_credit: TcxGridDBColumn
            Caption = 'Credit'
            DataBinding.FieldName = 'account_id_credit'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBTableView2type: TcxGridDBColumn
            DataBinding.FieldName = 'type'
            Visible = False
          end
          object cxGridDBTableView2direction: TcxGridDBColumn
            Caption = 'Direction'
            DataBinding.FieldName = 'direction'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 76
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object edPreviousTransactionNo: TcxTextEdit
        Left = 124
        Top = 531
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 17
        Text = 'edTransactionNo'
        Visible = False
        Width = 205
      end
      object cxLabel11: TcxLabel
        Left = 3
        Top = 533
        AutoSize = False
        Caption = 'Previous transaction no:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 155
      end
      object btnSave: TcxButton
        Left = 3
        Top = 470
        Width = 195
        Height = 57
        Cursor = crHandPoint
        Spacing = 12
        Caption = 'Save'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = ImageList1
        OptionsImage.Spacing = 12
        TabOrder = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSaveClick
      end
      object cxLabel7: TcxLabel
        Left = 3
        Top = 200
        AutoSize = False
        Caption = 'Amount IN:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 42
        Width = 102
      end
      object edAmountIN: TcxTextEdit
        Left = 111
        Top = 199
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 10
        Visible = False
        Width = 102
      end
      object cxGrid5: TcxGrid
        Left = 872
        Top = 33
        Width = 283
        Height = 120
        Anchors = [akTop, akRight]
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Visible = True
          DataController.DataSource = PgDataSource4
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView4id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView4id_currency: TcxGridDBColumn
            DataBinding.FieldName = 'id_currency'
            Visible = False
          end
          object cxGridDBTableView4symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView4buying: TcxGridDBColumn
            Caption = 'Buying'
            DataBinding.FieldName = 'buying'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '### ### ### ### ####0.0000'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView4selling: TcxGridDBColumn
            Caption = 'Selling'
            DataBinding.FieldName = 'selling'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '### ### ### ### ####0.0000'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object mTransactionExplanation: TcxMemo
        Left = 531
        Top = 470
        ParentFont = False
        Style.BorderColor = clSilver
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 14
        Visible = False
        Height = 57
        Width = 308
      end
      object edTransactionNo: TcxTextEdit
        Left = 111
        Top = 89
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.Color = 16381119
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 7
        Width = 290
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 89
        AutoSize = False
        Caption = 'Number:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 102
      end
      object cxLabel6: TcxLabel
        Left = 531
        Top = 452
        AutoSize = False
        Caption = 'Remarks:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.WordWrap = True
        Transparent = True
        Height = 21
        Width = 67
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 111
        AutoSize = False
        Caption = 'Select cashdesk:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 19
        Width = 102
      end
      object cxLabel4: TcxLabel
        Left = 3
        Top = 39
        AutoSize = False
        Caption = 'Transaction:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 102
      end
      object cxLabel2: TcxLabel
        Left = 585
        Top = 3
        AutoSize = False
        Caption = 'Cashdesk:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 19
        Width = 64
      end
      object edCashDesk: TcxTextEdit
        Left = 642
        Top = 3
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 3
        Visible = False
        Width = 38
      end
      object cxLabel1: TcxLabel
        Left = 420
        Top = 3
        AutoSize = False
        Caption = ' Pending transaction'
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextColor = clRed
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Height = 26
        Width = 159
        AnchorX = 500
        AnchorY = 16
      end
      object lbCashier: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = 'Cashier:'
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsNone
        Style.Color = 15000804
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 27
        Width = 162
        AnchorY = 17
      end
      object lbLoginTime: TcxLabel
        Left = 171
        Top = 3
        AutoSize = False
        Caption = 'Login time:'
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsNone
        Style.Color = 15000804
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 26
        Width = 243
        AnchorY = 16
      end
      object cxGrid9: TcxGrid
        Left = 3
        Top = 181
        Width = 526
        Height = 260
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_left
        TabOrder = 11
        Visible = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        RootLevelStyles.TabsBackground = cxStyle9
        object cxGridDBTableView8: TcxGridDBTableView
          Navigator.Visible = True
          OnCustomDrawCell = cxGridDBTableView8CustomDrawCell
          OnEditing = cxGridDBTableView8Editing
          OnFocusedRecordChanged = cxGridDBTableView8FocusedRecordChanged
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = PgDataSource7
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '### ### ### ##0.00'
              Kind = skSum
              FieldName = 'amount_in'
              Column = cxGridDBTableView8amount_IN
            end
            item
              Format = '### ### ### ##0.00'
              Kind = skSum
              FieldName = 'amount_out'
              Column = cxGridDBTableView8amount_OUT
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soNullIgnore]
          OptionsBehavior.PullFocusing = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView8id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView8id_cd_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_transaction'
            Visible = False
          end
          object cxGridDBTableView8id_cashdesk: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
            Visible = False
          end
          object cxGridDBTableView8ct_number: TcxGridDBColumn
            DataBinding.FieldName = 'ct_number'
            Visible = False
          end
          object cxGridDBTableView8multiple_subtransaction_id: TcxGridDBColumn
            Caption = 'Subtransaction'
            DataBinding.FieldName = 'multiple_subtransaction_id'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView8name: TcxGridDBColumn
            Caption = 'Category name'
            DataBinding.FieldName = 'name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 86
          end
          object cxGridDBTableView8direction: TcxGridDBColumn
            Caption = 'Direction'
            DataBinding.FieldName = 'direction'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.ReadOnly = True
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
          end
          object cxGridDBTableView8amount_IN: TcxGridDBColumn
            Caption = 'In'
            DataBinding.FieldName = 'amount_in'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '### ### ### ### ##0.00'
            Properties.OnEditValueChanged = cxGridDBTableView8amount_INPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 39
          end
          object cxGridDBTableView8amount_OUT: TcxGridDBColumn
            Caption = 'Out'
            DataBinding.FieldName = 'amount_out'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '### ### ### ### ##0.00'
            Properties.OnEditValueChanged = cxGridDBTableView8amount_OUTPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 39
          end
          object cxGridDBTableView8is_for_change: TcxGridDBColumn
            DataBinding.FieldName = 'is_for_change'
            Visible = False
          end
          object cxGridDBTableView8id_currency: TcxGridDBColumn
            DataBinding.FieldName = 'id_currency'
            Visible = False
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
      object cxLabel64: TcxLabel
        Left = 535
        Top = 159
        AutoSize = False
        Caption = 'Values:'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Visible = False
        Height = 19
        Width = 620
      end
      object cxLabel65: TcxLabel
        Left = 3
        Top = 159
        AutoSize = False
        Caption = 'Multiple cash transaction(s):'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Visible = False
        Height = 19
        Width = 526
      end
      object cxLabel68: TcxLabel
        Left = 872
        Top = 15
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'Current exchange rates:'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 148
      end
      object cxLabel72: TcxLabel
        Left = 686
        Top = 3
        AutoSize = False
        Caption = 'Id:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 19
        Width = 58
      end
      object edId: TcxTextEdit
        Left = 706
        Top = 2
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 4
        Visible = False
        Width = 55
      end
      object btnCancel: TcxButton
        Left = 204
        Top = 488
        Width = 157
        Height = 39
        Cursor = crHandPoint
        Caption = 'Cancel'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object lbTransactionDirection: TcxLabel
        Left = 112
        Top = 68
        AutoSize = False
        Caption = 'In <-> Out'
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.TextColor = clBlack
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 19
        Width = 150
        AnchorX = 187
        AnchorY = 78
      end
      object cbDirection: TcxComboBox
        Left = 263
        Top = 67
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'In'
          'Out')
        Properties.OnEditValueChanged = cbDirectionPropertiesEditValueChanged
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 6
        Text = 'In'
        Height = 21
        Width = 138
      end
      object cbTransaction: TcxLookupComboBox
        Left = 111
        Top = 35
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 250
        Properties.ImmediateDropDownWhenActivated = True
        Properties.KeyFieldNames = 'id_transaction'
        Properties.ListColumns = <
          item
            MinWidth = 0
            Width = 0
            FieldName = 'id_transaction'
          end
          item
            Width = 200
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource14
        Properties.OnEditValueChanged = cbTransactionPropertiesEditValueChanged
        Style.Color = 16381119
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -17
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
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
        Width = 290
      end
      object edAmountOUT: TcxTextEdit
        Left = 111
        Top = 236
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 13
        Visible = False
        Width = 102
      end
      object GroupBox_Gaming_Day_GD: TGroupBox
        Left = 845
        Top = 447
        Width = 310
        Height = 105
        Caption = '  Gaming day  '
        TabOrder = 1
        object Label_Account_from: TLabel
          Left = 9
          Top = 50
          Width = 64
          Height = 13
          Caption = 'Account from'
        end
        object Label_Account_to: TLabel
          Left = 9
          Top = 77
          Width = 52
          Height = 13
          Caption = 'Account to'
        end
        object Label_MainTransaction: TLabel
          Left = 9
          Top = 23
          Width = 79
          Height = 13
          Caption = 'Main transaction'
        end
        object ComboBox_Account_From_gd: TComboBox
          Left = 113
          Top = 46
          Width = 185
          Height = 21
          Style = csDropDownList
          TabOrder = 1
        end
        object ComboBox_Account_To_GD: TComboBox
          Left = 113
          Top = 73
          Width = 185
          Height = 21
          Style = csDropDownList
          TabOrder = 2
        end
        object ComboBox_MainGD: TComboBox
          Left = 113
          Top = 19
          Width = 185
          Height = 21
          Style = csDropDownList
          TabOrder = 0
        end
      end
      object cbAccount: TcxLookupComboBox
        Left = 111
        Top = 111
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 250
        Properties.GridMode = True
        Properties.ImmediateDropDownWhenActivated = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource5
        Properties.OnEditValueChanged = cbAccountPropertiesEditValueChanged
        Style.Color = 16381119
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 8
        Width = 290
      end
      object btnTITO: TcxButton
        Left = 268
        Top = 140
        Width = 133
        Height = 28
        Cursor = crHandPoint
        Caption = 'Get TITO data ...'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnTITOClick
      end
      object ScrollBox1: TScrollBox
        Left = 420
        Top = 33
        Width = 269
        Height = 120
        BorderStyle = bsNone
        Color = clBackground
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 34
      end
    end
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select  '
      'cd.Multiple_subtransaction_id, c.*,   '
      'v.multiplier,   c.nr * v.multiplier as amount_0,'
      'c.exchange_rate as change_chf,'
      '           c.nr * v.multiplier * c.exchange_rate as amount_chf, '
      
        '           cat.name as category,   v.name as value_name, cdv.ord' +
        ' from '
      '           tbl_cd_cash_transactions_subt_categories_values as c '
      '            left join tbl_cd_cash_transactions_subt as cd '
      'on cd.id=c.id_cd_sub_transaction '
      '           left join tbl_values as v on c.id_cd_value =v.id '
      
        '           left join  tbl_categories as cat on  c.id_cd_category' +
        ' = cat.id '
      
        '           left join  tbl_transactions_values cdv on c.id_cd_val' +
        'ue = cdv.id_value and '
      '            v.is_system_value <> '#39'1'#39' and   '
      
        '            c.id_cd_value = v.id where 0 = 1 order by  cdv.ord a' +
        'sc')
    Left = 480
    Top = 224
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 704
    Top = 232
  end
  object PgTable5: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 408
    Top = 528
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgQuery20
    Left = 416
    Top = 480
  end
  object PgTable6: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 472
    Top = 528
  end
  object PgDataSource6: TPgDataSource
    Left = 704
    Top = 592
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 704
    Top = 536
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 232
    Top = 96
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.name, a1.name, a2.name, a3.name '
      'from tbl_cd_cash_transactions as cdt '
      
        '  left join tbl_transactions as t on cdt.id_cd_transaction = t.i' +
        'd,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and '
      '  is_multiple_cd_transaction = 0 and '
      '  cdt.confirmed = 1 and '
      '  cdt.type in (0, 10, 11, 12, 13) and'
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id'
      ''
      'union'
      ''
      'select cdt.*, t.name, a1.name, a2.name, a3.name '
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_multiple_transactions as t on cdt.id_cd_transact' +
        'ion = t.id,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and'
      '  is_multiple_cd_transaction = 1 and '
      '  cdt.confirmed = 1 and '
      '  cdt.type in (0, 10, 11, 12, 13) and'
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id')
    Left = 488
    Top = 464
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from ( '
      'select 0 as id_transaction, '#39'Select transaction'#39' as name'
      'union '
      'select cdt.id_transaction, t.name'
      'from tbl_cd_transactions as cdt'
      'left join tbl_transactions as t on cdt.id_transaction = t.id'
      ') as t where 0=1 order by id_transaction asc')
    Left = 40
    Top = 152
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 696
    Top = 176
  end
  object PgQuery4: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cer.*, c.symbol'
      'from tbl_currencies_exchange_rates as cer, tbl_currencies as c'
      
        'where cer.id_currency = c.id and cer.valid_from <= now() and now' +
        '() <= cer.valid_to')
    Left = 536
    Top = 424
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgQuery4
    Left = 688
    Top = 480
  end
  object PgQuery5: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      #9'subt.*, t.name, t.is_for_change, t.id_currency '
      'from '
      #9'tbl_cd_cash_transactions_subt as subt '
      ''
      'left join tbl_transactions as t '
      #9'on subt.multiple_subtransaction_id = t.id'
      ''
      'where'
      #9'0 = 1 and'
      '        subt.multiple_subtransaction_id > 0'
      ''
      'order by'
      '        t.sort_order asc')
    Left = 32
    Top = 264
  end
  object PgDataSource7: TPgDataSource
    DataSet = PgQuery5
    Left = 144
    Top = 200
  end
  object PgQuery6: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  id, cd_name, id_workstation, description, account_id'
      'from '
      '  tbl_cd'
      'where'
      '  0 = 1')
    Left = 536
    Top = 136
  end
  object PgDataSource8: TPgDataSource
    DataSet = PgQuery6
    Left = 472
    Top = 136
  end
  object PgQuery7: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd where 0 = 1')
    Left = 352
    Top = 200
  end
  object PgDataSource9: TPgDataSource
    DataSet = PgQuery7
    Left = 424
    Top = 200
  end
  object PgQuery9: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.name, a1.name, a2.name, a3.name '
      'from tbl_cd_cash_transactions as cdt '
      
        '  left join tbl_transactions as t on cdt.id_cd_transaction = t.i' +
        'd,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and'
      '  is_multiple_cd_transaction = 0 and '
      '  cdt.confirmed = 0 and '
      '  cdt.type in (0, 10, 11, 12, 13) and'
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id'
      ''
      'union'
      ''
      'select cdt.*, t.name, a1.name, a2.name, a3.name '
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_multiple_transactions as t on cdt.id_cd_transact' +
        'ion = t.id,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and'
      '  is_multiple_cd_transaction = 1 and '
      '  cdt.confirmed = 0 and '
      '  cdt.type in (0, 10, 11, 12, 13) and'
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id')
    Options.AutoPrepare = True
    Left = 80
    Top = 192
  end
  object PgDataSource10: TPgDataSource
    DataSet = PgQuery9
    Left = 224
    Top = 200
  end
  object PgQuery11: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select * from tbl_cd_cash_transactions_subt_categories_values wh' +
        'ere 0 = 1')
    Left = 464
    Top = 304
  end
  object PgDataSource12: TPgDataSource
    DataSet = PgQuery11
    Left = 408
    Top = 280
  end
  object PgQuery10: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions where 0 = 1')
    Left = 384
    Top = 96
  end
  object PgQuery12: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  c.*, '
      '  v.multiplier,'
      '  c.nr * v.multiplier as amount_base,'
      '  cer.buying as change_chf,'
      '  c.nr * v.multiplier * cer.buying as amount_chf,'
      '  cat.name as category,'
      '  v.name as value_name,'
      '  cdv as ord'
      'from'
      '  tbl_cd_cash_transactions_subt_categories_values as c,'
      '  tbl_values as v,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr,'
      '  tbl_transactions_values as cdv '
      'where'
      '  0 = 1 and '
      '  c.ct_number = '#39'-1'#39' and'
      '  c.id_cd_category = cat.id and'
      '  c.id_cd_value = v.id and'
      '  cer.valid_from <= now() and'
      '  cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and'
      '  v.id_currency = curr.id'
      'order by  '
      '  v.sort_order asc')
    ReadOnly = True
    Options.AutoPrepare = True
    Options.CacheCalcFields = True
    Left = 288
    Top = 608
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgQuery12
    Left = 616
    Top = 312
  end
  object PgQuery13: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '  c.*, '
      '  v.multiplier,'
      '  c.nr * v.multiplier as amount,'
      '  cer.buying as change_chf,'
      '  c.nr * v.multiplier * cer.buying as amount_chf,'
      '  cat.name as category,'
      '  v.name as value'
      'from'
      '  tbl_cd_cash_transactions_subt_categories_values as c,'
      '  tbl_values as v,'
      '  tbl_categories as cat,'
      '  tbl_currencies_exchange_rates as cer,'
      '  tbl_currencies as curr'
      'where'
      '  0 = 1 and '
      '  c.id_cd_category = cat.id and'
      '  c.id_cd_value = v.id and'
      '  cer.valid_from <= now() and'
      '  cer.valid_to >= now() and'
      '  cer.id_currency = curr.id and'
      '  curr.symbol = '#39'CHF'#39
      'order by'
      '  v.sort_order asc')
    Left = 232
    Top = 264
  end
  object PgDataSource13: TPgDataSource
    DataSet = PgQuery13
    Left = 152
    Top = 272
  end
  object PgQuery14: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd where 0 = 1')
    Left = 88
    Top = 264
  end
  object PgQuery15: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from ( '
      'select 0 as id_transaction, '#39'Select transaction'#39' as name'
      'union '
      'select cdt.id_transaction, t.name'
      'from tbl_cd_transactions as cdt'
      'left join tbl_transactions as t on cdt.id_transaction = t.id'
      ') as t where 0=1 order by id_transaction asc')
    Left = 80
    Top = 128
  end
  object PgDataSource14: TPgDataSource
    DataSet = PgQuery15
    Left = 160
    Top = 144
  end
  object GenericQuery: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    FetchRows = 1
    FetchAll = False
    Options.AutoPrepare = True
    Left = 184
    Top = 624
  end
  object PgQuery8: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions where 0 = 1')
    Left = 248
    Top = 137
  end
  object PgQuery16: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select'
      '  category_name,'
      '  currency_symbol,'
      '  exchange_rate,'
      '  sum(multiplier * nr_0) as amount_foreign,'
      '  sum(multiplier * nr_0 * exchange_rate) as amount_base'
      'from '
      '( '
      '    select '
      '     s0.direction, '
      '     s0.category_name,'
      '     s0.currency_symbol, '
      '     s0.exchange_rate, '
      '     s0.multiplier,'
      '     sum(s0.nr) as nr_0 '
      'from'
      '(   select'
      '      v.direction,'#9
      '      v.category_name, '
      '      v.currency_symbol,'
      '      v.exchange_rate,'
      '      v.multiplier,'
      '      sum(v.nr) as nr '
      '    from  '
      '      tbl_cd_cash_transactions as t '
      '      left join tbl_cd_cash_transactions_subt as subt '
      #9'on subt.ct_number = t.ct_number '
      '      left join tbl_cd_cash_transactions_subt_categories as c '
      
        #9'on c.ct_number = subt.ct_number and c.id_cd_transaction = subt.' +
        'id_cd_transaction'
      
        '      left join tbl_cd_cash_transactions_subt_categories_values ' +
        'as v '
      
        #9'on v.ct_number = c.ct_number and v.id_cd_transaction = c.id_cd_' +
        'transaction and v.id_cd_category = c.id_cd_category'
      
        '      left join tbl_cd_cash_transactions_types as ct on t.type =' +
        ' ct.type'
      '    where  '
      '      t.confirmed = 1 and '
      '      --t.datetime > last_shift_date(29) and '
      '      --t.id_cashdesk = 29 and '
      '      ct.goes_into_amount_expected = '#39'1'#39
      '    group by  '
      '      v.direction,'
      '      v.category_name, '
      '      v.currency_symbol, '
      '      v.exchange_rate, '
      '      v.multiplier'
      ')'
      'as s0'
      'group by'
      '     direction, '
      '     category_name, '
      '     currency_symbol,'
      '     exchange_rate, '
      '     multiplier'
      ') '
      'as s1'
      'where'
      '0 = 1'
      'group by'
      '  category_name, '
      '  currency_symbol, '
      '  exchange_rate')
    ReadOnly = True
    Options.AutoPrepare = True
    Options.CacheCalcFields = True
    Left = 616
    Top = 488
  end
  object PgDataSource15: TPgDataSource
    DataSet = PgQuery16
    Left = 104
    Top = 464
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 768
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 14528184
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13271182
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13271182
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11793650
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16775416
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16443110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13271182
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14252010
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744576
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clPurple
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9509542
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object TreeListStyleSheetUserFormat3: TcxTreeListStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle5
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle12
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      Styles.ColumnHeader = cxStyle4
      Styles.ContentEven = cxStyle6
      Styles.ContentOdd = cxStyle7
      Styles.Footer = cxStyle8
      Styles.Indicator = cxStyle10
      Styles.Preview = cxStyle11
      BuiltIn = True
    end
  end
  object PgQuery17: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select ct_number, datetime from tbl_cd_cash_transactions where 0' +
        ' = 1')
    Left = 256
    Top = 312
  end
  object PgDataSource16: TPgDataSource
    DataSet = PgQuery17
    Left = 328
    Top = 312
  end
  object PgDataSource17: TPgDataSource
    DataSet = PgQuery18
    Left = 312
    Top = 256
  end
  object PgQuery18: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select ct_number, datetime from tbl_cd_cash_transactions where 0' +
        ' = 1')
    Left = 184
    Top = 328
  end
  object PgQuery19: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.name '
      'from tbl_cd_cash_transactions as cdt '
      'left join tbl_transactions as t on cdt.id_cd_transaction = t.id '
      
        'where 0 = 1 and is_multiple_cd_transaction = 0 and cdt.confirmed' +
        ' = 1 and cdt.type = 0 '
      ''
      'union'
      ''
      'select cdt.*, t.name '
      'from tbl_cd_cash_transactions as cdt'
      
        'left join tbl_multiple_transactions as t on cdt.id_cd_transactio' +
        'n = t.id '
      
        'where 0 = 1 and is_multiple_cd_transaction = 1 and cdt.confirmed' +
        ' = 1 and cdt.type = 0')
    Left = 264
    Top = 472
  end
  object PgDataSource18: TPgDataSource
    DataSet = PgQuery19
    Left = 336
    Top = 488
  end
  object PgQuery20: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select * from tbl_accounts where 0 = 1 and is_transfer_account =' +
        ' 1')
    CachedUpdates = True
    Left = 304
    Top = 120
  end
  object PgQuery21: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select * from tbl_accounts where 0 = 1 and is_transfer_account =' +
        ' 1')
    CachedUpdates = True
    Left = 304
    Top = 176
  end
  object TopGenericQuery: TPgQuery
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
    Left = 184
    Top = 432
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 704
    Top = 136
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
      '  t.name as t_name, '
      
        '  case when subt.direction = '#39'1'#39' then '#39'In'#39' else '#39'Out'#39' end as t_d' +
        'irection,'
      '  a1.name as name_1, '
      '  a2.name as name_2, '
      '  a3.name as name_3,'
      '  subt.amount_in,'
      '  subt.amount_out,'
      '  cdt.gaming_date,'
      '  cdt.datetime,'
      '  0 as trans,'
      '  0 as Mp'
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_numb' +
        'er = subt.ct_number'
      
        '  left join tbl_transactions as t on subt.multiple_subtransactio' +
        'n_id = t.id,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and '
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id and'
      '  cdt.is_multiple_cd_transaction = 1 '
      '  '
      'union'
      ' '
      'select '
      '  cdt.id_cd_transaction,'
      '  subt.id_cd_transaction,'
      '  '#39#39','
      '  cdt.ct_number as indicator, '
      '  cdt.ct_number, '
      
        '  case when cdt.is_multiple_cd_transaction = '#39'1'#39' then mt.name el' +
        'se t.name end as t_name, '
      
        '  case when cdt.direction = '#39'1'#39' then '#39'In'#39' else '#39'Out'#39' end as t_di' +
        'rection,'
      '  a1.name as name_1, '
      '  a2.name as name_2, '
      '  a3.name as name_3,'
      '  cdt.amount_in,'
      '  cdt.amount_out,'
      '  cdt.datetime,'
      '  cdt.gaming_date,'
      '  cdt.id_cd_transaction as trans,'
      '  cdt.is_multiple_cd_transaction as Mp'
      'from '
      '  tbl_cd_cash_transactions as cdt'
      
        '  left join tbl_cd_cash_transactions_subt as subt on cdt.ct_numb' +
        'er = subt.ct_number'
      
        '  left join tbl_transactions as t on cdt.id_cd_transaction = t.i' +
        'd'
      
        '  left join tbl_multiple_transactions as mt on cdt.id_cd_transac' +
        'tion = mt.id,'
      '  tbl_accounts as a1,'
      '  tbl_accounts as a2,'
      '  tbl_accounts as a3'
      'where '
      '  0 = 1 and '
      '  cdt.account_id_from = a1.account_id and'
      '  cdt.account_id_to = a2.account_id and'
      '  cdt.account_id_transfer = a3.account_id')
    Options.AutoPrepare = True
    Left = 392
    Top = 152
  end
  object PgDataSource19: TPgDataSource
    DataSet = PgQuery22
    Left = 608
    Top = 224
  end
  object PopupMenu_Trans: TPopupMenu
    Left = 968
    Top = 424
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_Values: TPopupMenu
    Left = 96
    Top = 536
    object exporttoexcel2: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel2Click
    end
  end
  object PopupMenu_Balance: TPopupMenu
    Left = 640
    Top = 640
    object exporttoexcel3: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel3Click
    end
  end
  object PopupMenu_uncorfirmed: TPopupMenu
    Left = 704
    Top = 288
    object exporttoexcel4: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel4Click
    end
  end
  object PopupMenu_left: TPopupMenu
    Left = 88
    Top = 352
    object exporttoexcel5: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel5Click
    end
  end
  object PopupMenu_Right: TPopupMenu
    Left = 696
    Top = 352
    object exporttoexcel6: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel6Click
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 904
    Top = 432
    Bitmap = {
      494C010104005400540020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000040000003C
      210000713900008E4A00008A4A00008A4A00008A4A00008A4A00008E4A000071
      3900003C21000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000613100008E
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001C080000653100008A4A00008A4A00008A4A00008A4A0000653100001C
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008E420000824200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000010080000713900008E4A00009A
      5A0000A26B0000AA730000AE730000AE730000AE730000AE730000AA730000A2
      6B00009A5A00008E4A0000713900001008000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059310000C78400008A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008202900081C
      2900081C2900081C2900081C2900081C2900081C2900081C2900081C2900081C
      2900081C2900081C2900081C2900081C2900081C2900081C290008182900004D
      21000092520000B67B0000CF940000D3940000D3940000CF940000B67B000092
      520000512900000000000000000000000000000000000000000008202900081C
      2900081C2900081C2900081C2900081C2900081C2900081C2900081C2900081C
      2900081C2900081C2900081C2900081C2900081C2900081C2900081C2900081C
      2900081C2900081C2900081C290008141800008A390000C78400007931000818
      2900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000512900008E4A0000A2630000B27B0021BE
      940039CFA50052DBB5005ADBBD005ADBBD005ADBBD005ADBBD0052DBB50039CF
      A50021BE940000B27B0000A26300008E4A000051290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000059290000BE840000E3A500008A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318AC600398ECE00318E
      CE00398ECE00398ECE00398ECE003992CE003992CE003992CE003992CE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00398EDE00188E84000096
      4A0000CB8C0000CF8C0000CB8C0000C7840000C7840000CB8C0000CF8C0000CB
      8C000096520000512900000000000000000000000000318AC600398ECE00318E
      CE00398ECE00398ECE00398ECE003992CE003992CE003992CE003992CE00318E
      CE00318ECE00318ECE00318ECE00318ED6003992D6004292DE004292DE004296
      DE004296DE004296DE004296DE004292E700008A390000E7A50000BE7B00108A
      73003986CE000000000000000000000000000000000000000000000000000000
      00000000000000000000007D420000965A0000AA730029C79C0052DBB50039DB
      B50018DBA50000D79C0000D7940000D7940000D7940000D7940000D79C0018DB
      A50039DBAD0052DBB50029C79C0000AA730000965A00007D4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000059290000BA840000DBA50000DBA5000082
      420000864200008A4200008A4200008A4200008A4200008A4200008A4200008A
      4200008A4A0000864200005D3100002410000000000000000000000000000000
      00000000000000000000000000000000000000000000398ECE007BE3FF006BDB
      FF0063D3FF005ACFFF004ACBF70042C7F70039AAE7006BC7F70042A2DE0063C3
      EF007BE3FF007BE3FF007BE3FF007BE3FF0084E3FF0063CFDE00008E420000CB
      8C0000CB8C0000C78C0000C38400FFFFFF00FFFFFF0000C3840000C78C0000CB
      8C0000CB8C0000925200001C08000000000000000000398ECE007BE3FF006BDB
      FF0063D3FF005ACFFF004ACBF70042C7F70039AAE7006BC7F70042A2DE0063C3
      EF007BE3FF007BE3FF007BE3FF0084E7FF0029AA8C0000863100008639000086
      3900008639000086390000863900008639000082390000DFA50000DB9C0000BE
      7B00188A7B000000000000000000000000000000000000000000000000000000
      000000000000007D4200009E630000B27B004AD3AD0042DBB50000D79C0000D7
      9C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D7
      9C0000D79C0000D79C0042DBB5004AD3AD0000B27B00009E6300007D42000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000059290000BA840000D7A50000D39C0000D39C0000DB
      A50000DBA50000DBA50000DBA50000DBA50000DBA50000DBA50000DBA50000D3
      A50000D7A50000C38C0000AA7300008E4A0000864A0000241000000000000000
      00000000000000000000000000000000000000000000318ECE006BDBFF0063CF
      F70052CBF7004AC7F70042C3F70039A6DE0039AEE700318ACE007BE3FF0073DF
      FF0073DBFF0073DBFF0073DBFF0073DBFF007BDFFF0018A27B0000B26B0000CB
      8C0000C7840000C3840000BE7B00FFFFFF00FFFFFF0000BE7B0000C3840000C7
      840000CB8C0000B27300006531000000000000000000318ECE006BDBFF0063CF
      F70052CBF7004AC7F70042C3F70039A6DE0039AEE700318ACE007BE3FF0073DF
      FF0073DBFF0073DBFF0073DBFF007BDFFF000082310031E7B50000DB9C0000DB
      9C0000DBA50000DBA50000DBA50000DBA50000DB9C0000D39C0000D39C0000D7
      9C0000BA7B000059290000000000000000000000000000000000000000000000
      0000007D4200009E630008B6840052DBB50021D7A50000D7940000D79C0000D7
      9C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D79C0000D7
      9C0000D79C0000D79C0000D79C0021D7A50052DBB50008B68400009E6300007D
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000005D310000B6840000D39C0000CF9C0000CB9C0000CB9C0000CF
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CB
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000AE7300008A4200006939000000
      00000000000000000000000000000000000000000000398ECE0063D3FF0052CB
      F7004AC7F70042C3EF0039A6DE0039AAE70039C3F700318ACE007BDFFF0073DB
      FF0073DBFF0073DBFF0073DBFF0073DBFF007BDFFF000082310000C3840000C3
      840000BE7B0000BE730000BA6B00FFFFFF00FFFFFF0000BA6B0000BE730000BE
      7B0000C3840000C78400008A4A000000000000000000398ECE0063D3FF0052CB
      F7004AC7F70042C3EF0039A6DE0039AAE70039C3F700318ACE007BDFFF0073DB
      FF0073DBFF0073DBFF0073DBFF007BDFFF00007D310052E7C60000CF9C0000CF
      9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF
      9C0000D39C0000BA8400005D3100000000000000000000000000000000000051
      290000965A0000B27B0052DBB50018D7A50000D3940000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0018D7A50052DBB50000B27B000096
      5A00005129000000000000000000000000000000000000000000000000000000
      000000000000008A4A0029DBBD0000CBA50000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CFA50000C39400008E4A00007D
      42000000000000000000000000000000000000000000398ECE005ACFFF004AC7
      F70042C3EF0039A6DE0039AAE70039BEF70039D3FF003186CE0073DFFF0073DB
      FF006BD7FF006BD7FF006BD7FF0073DBFF007BDFFF000082310018CF940000BE
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000BE7B0018CF9400008A4A000000000000000000398ECE005ACFFF004AC7
      F70042C3EF0039A6DE0039AAE70039BEF70039D3FF003186CE0073DFFF0073DB
      FF006BD7FF006BD7FF0073DBFF007BDFFF00007D31006BE7CE0000CB940000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CFA50029DFB500008A4A0000000000000000000000000000100800008E
      4A0000AA73004AD3AD0021D7A50000D3940000D39C0000D39C0000D39C0000D3
      940000D3940000D3940000D3940000D3940000D39C0000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D3940021D7A5004AD3AD0000AA
      7300008E4A000010080000000000000000000000000000000000000000000000
      000000000000005D310000B2840063DFC60000C39C0000C39C0000C39C0000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C3
      9C0000C39C0000C39C0000C79C0000C79C0000C79C0000CBA50000C39400008E
      4A00005D310000000000000000000000000000000000398ECE004ACBF70042C3
      F70039A6DE0039AAE70039BEF70039CFFF004AD7FF003186CE0073DFFF006BDB
      FF006BD7FF006BD7FF006BD7FF006BDBFF007BDFFF000082310031D39C0000BA
      7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000BA730039D3A500008A4A000000000000000000398ECE004ACBF70042C3
      F70039A6DE0039AAE70039BEF70039CFFF004AD7FF003186CE0073DFFF006BDB
      FF006BD7FF006BD7FF006BDBFF0073DFFF00007D310084EBD60000C3940000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C39C0000C79C0000C79C0000C7
      9C0063E3C60000B28400005D31000000000000000000000000000071390000A2
      630029C79C0042DBB50000D3940000D39C0000D39C0000D39C0000D3940000CF
      8C00ADF3DE00FFFFFF00ADF3DE0000CF8C0000D3940000D39C0000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D3940042DBB50029C7
      9C0000A263000071390000000000000000000000000000000000000000000000
      000000000000000000000059290000AE7B0063DFC60000BE940094E7D6004AE7
      D60052EBD60052EBD60052EBD60052EBD60052EBD6007BE3D6007BE3D6007BE7
      D60073E3CE004AD7BD0000C79C0000C39C0000C39C0000C79C0000C7A50000BE
      9400008A4200002410000000000000000000000000003992CE0042C7F70039A6
      DE0039AAE70039BEF70039CFFF004AD3FF0063DBFF003186CE0073DFFF006BD7
      FF006BD7FF006BD7FF006BD7FF006BD7FF0073DFFF00008231006BDBB50000BA
      7B0000BA730000B6730000B26B00FFFFFF00FFFFFF0000B26B0000B6730000BA
      730000BA7B006BDFBD00008A420000000000000000003992CE0042C7F70039A6
      DE0039AAE70039BEF70039CFFF004AD3FF0063DBFF003186CE0073DFFF006BD7
      FF006BD7FF006BD7FF006BD7FF0073DFFF00008229009CEFDE004AEBD60052E7
      D60052EBD60052EBD60052EBD60052EBD6004AE7D60094E7D60000C394005ADF
      C60000AE7B000059290000000000000000000000000000040000008E4A0000B2
      7B0052DBBD0000D39C0000D39C0000D39C0000D39C0000CF940000CF8C00A5F3
      DE00FFFFFF00FFFFFF00FFFFFF00A5F3DE0000CF8C0000CF940000D39C0000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0052DB
      B50000B27B00008E4A0000040000000000000000000000000000000000000000
      00000000000000000000000000000059290000AA7B005ADBC60084E3D6000082
      3900008642000086420000864200008642000086420000864200008A4A00109E
      630021B284006BDBC60073E3CE0021CBAD0000BE9C0000C39C0000C39C0000C7
      A50000AA7300008A42000000000000000000000000003992CE0039AAE70039AE
      E70039C3F70039D3FF004AD7FF0063DBFF0073E3FF003186CE006BDBFF006BD7
      FF006BD7FF006BD7FF006BD7FF006BD7FF006BDBFF00109E73005AC3940029CB
      940000BA7B0000BA7B0000B66B00FFFFFF00FFFFFF0000B66B0000BA7B0000BA
      7B0029CB940063C7A5000065310000000000000000003992CE0039AAE70039AE
      E70039C3F70039D3FF004AD7FF0063DBFF0073E3FF003186CE006BDBFF006BD7
      FF006BD7FF006BD7FF006BD7FF006BDBFF0018A2840000822900008231000082
      3100008231000082310000823100008231000082310084E3D6005ADBC60000AA
      7300108A7B0000000000000000000000000000000000003C2100009A5A0021BE
      940039DBB50000D3940000D39C0000D39C0000CF940000CB8C00A5F3DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5F3DE0000CB8C0000CF940000D3
      9C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0039DB
      AD0021BE9400009A5A00003C2100000000000000000000000000000000000000
      0000000000000000000000000000000000000059290000AA7B007BE3DE00008A
      4200000000000000000000000000000000000000000000000000001C10000018
      0800004D2900008A4A004AC39C0084E3D60029CBAD0000BE9C0000BE9C0000C3
      9C0000C39C00008E4A00001C080000000000000000003992CE0073CBF700318A
      CE00318ACE00318ACE003186CE003186CE003186CE0042A6DE006BDBFF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF006BDBFF004AC7DE00008E42008CE3
      C60018C78C0000B6730000B26B00FFFFFF00FFFFFF0000B26B0000B6730018C7
      8C008CE3C60008965200001C080000000000000000003992CE0073CBF700318A
      CE00318ACE00318ACE003186CE003186CE003186CE0042A6DE006BDBFF0063D7
      FF0063D7FF0063D7FF0063D7FF006BD7FF006BDBFF006BDBFF006BDBFF0073DB
      FF0073DBFF0073DBFF0073DFFF0073E3FF00008231007BE3D60000A6730029AA
      8C003992DE00000000000000000000000000000000000071390000A26B0039CF
      A50018D7A50000D39C0000D39C0000CF940000CB9400A5EFDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EFDE0000CB8C0000CF
      940000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0000D39C0018D7
      A50039CFA50000A26B0000713900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000059290000AA8400008E
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000000C0800007539004AC39C0084E3D60008BEA50000BA9C0000BA
      9C0000BEA50000A27300005D310000000000000000003992CE004AA2DE006BDF
      FF006BDBFF006BDBFF006BDBFF006BDBFF006BDBFF0063DBFF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF006BDBFF0018A284000896
      520094E3C6005AD7AD0008BE7B0000B26B0000B26B0008BE7B005AD7AD0094E3
      C600109A5A00005129000000000000000000000000003992CE004AA2DE006BDF
      FF006BDBFF006BDBFF006BDBFF006BDBFF006BDBFF0063DBFF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF006BDFFF000086310000A67B0000925A0094EB
      FF00398ED60000000000000000000000000000000000008E4A0000AA73005ADB
      BD0000D39C0000CF9C0000CF9C0000CF9400ADF3DE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EFDE0000CB
      8C0000CF940000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000D3
      9C0052DBB50000AA7300008E4A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000613100008E
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000040000008A420073DBC6005AD3C60000B69C0000B6
      9C0000BA9C0000AE8C00008642000000000000000000318ECE006BC7EF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF006BDBFF0021A6
      9400008E42005AC3940094E3C6009CE7CE009CE7CE0094E3C6005AC394000092
      4A00108E840000000000000000000000000000000000318ECE006BC7EF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7FF0063D7
      FF0063D7FF0063D7FF0063D7FF006BDBFF000082290000925A0063D7FF008CEB
      FF00318ECE0000000000000000000000000000000000008A4A0000AA730063E3
      C60000CF940000CF9C0000CF9C0000CB9400EFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5EFDE0000C78400A5EFDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5EF
      DE0000CB8C0000CF940000CF9C0000CF9C0000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000051290029B28C008CE7DE007BDFD6007BDF
      D6007BDFD60084E3DE00008A4A000000000000000000318ECE008CE7FF005AD7
      FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7
      FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF0063D7FF0063DB
      FF004AC7DE00109E730000823100008231000082310000823100089E73006BD3
      DE00398EDE0000000000000000000000000000000000318ECE008CE7FF005AD7
      FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7
      FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7
      FF005AD7FF005AD7FF005AD7FF0063D7FF0063DBFF0063DBFF0063D7FF008CE7
      FF00318ECE0000000000000000000000000000000000008A4A0000B27B0063E7
      C60000CF940000CF9C0000CF9C0000CB940018D7A500FFFFFF00FFFFFF00ADEF
      DE0000CB8C0000CB940000CB8C00A5EFDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5EFDE0000CB8C0000CB940000CF9C0000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000201000008A4A00008A4200008A4200008A
      4200008A4200008A4200006131000000000000000000318ECE008CE7FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD7
      FF0063D7FF0063D7FF0063DBFF0063DBFF0063DBFF0063DBFF0063DBFF0094EB
      FF00318ECE0000000000000000000000000000000000318ECE008CE7FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD7FF005AD7FF005AD3FF008CE7
      FF00318ECE0000000000000000000000000000000000008A4A0010B684006BEB
      CE0000CB940000CF9C0000CF9C0000CF940000CB94008CEBD600B5F3E70000CB
      940000CB940000CF9C0000CB940000CB8C00A5EFDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5EFDE0000CB8C0000CB940000CF9C0000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A00000000000000000000613100008A4A000086
      4200008642000086420000864200008A4A000020100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE0094E7FF0052D3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF005AD7FF0094E7
      FF00318ECE0000000000000000000000000000000000318ECE0094E7FF0052D3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF0052D3FF0094E7
      FF00318ECE0000000000000000000000000000000000008A4A0018BE8C006BEF
      CE0000CB940000CF9C0000CF9C0000CF9C0000CB940000CB940000CB940000CB
      940000CF9C0000CF9C0000CF9C0000CB940000C78C00A5EFDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5EFDE0000C7940000CB940000CF9C0000CF9C0000CF
      94005ADFBD0000AE7300008A4A000000000000000000008A4A0010EFAD0000E7
      A50000E3A50000E39C0094FBDE0029BE8C00004D290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE0094EBFF0052D3
      FF0052D3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF0052D3FF0052D3FF0094EB
      FF00318ECE0000000000000000000000000000000000318ECE0094EBFF0052D3
      FF0052D3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3
      FF005AD3FF005AD3FF005AD3FF005AD3FF005AD3FF0052D3FF0052D3FF0094EB
      FF00318ECE0000000000000000000000000000000000008A4A0029BE94006BEF
      D60000CF9C0000CB940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C78C00A5EFDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ADEFDE0000CB940000CB9C0000CB9C0000CF
      9C0052DBB50000AA7300008E4A0000000000000000000086420021D39C0010E3
      A50000DF9C0000DB940052EBBD006BE7BD00008A4A0000040000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A000061310000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE0094EBFF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0094EB
      FF00318ECE0000000000000000000000000000000000318ECE0094EBFF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0094EB
      FF00318ECE00000000000000000000000000000000000071390021B6840063E7
      C60021D7AD0000CB940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C78C00A5EF
      DE00FFFFFF00FFFFFF00FFFFFF00EFFBFF0000C7940000CB9C0000CB9C0018D3
      A50039CFA50000A26B000071390000000000000000000059310021B67B0031EB
      B50000DB940000DB940008DF9C0063EFC60039CB940000753900000C08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008A4A0000C7840000593100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE009CEBFF004AD3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF004AD3FF009CEB
      FF00318ECE0000000000000000000000000000000000318ECE009CEBFF004AD3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF004AD3FF009CEB
      FF00318ECE0000000000000000000000000000000000003C210018A673005ADF
      BD004AE7C60000C7940000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB940000C7
      8C00ADEFDE00FFFFFF00FFFFFF0018CFA50000CB940000CB9C0000CB940039D7
      B50021BE9400009A5A00003C2100000000000000000000180800008E520052EB
      BD0018DFA50000DB940000DB940018DFA5004AEBBD0029C79400008E4A00004D
      290000180800001C100000000000000000000000000000000000000000000000
      0000008A4A0000E3A50000BE8400005929000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE009CEBFF004AD3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF004AD3FF009CEB
      FF00318ECE0000000000000000000000000000000000318ECE009CEBFF004AD3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3
      FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF0052D3FF004AD3FF009CEB
      FF00318ECE000000000000000000000000000000000000040000008E4A005ADB
      BD0073F7DE0000CB9C0000C7940000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000C7
      940000C79400B5F3E7008CE7D60000C7940000CB940000CB9C0000CB9C0052DB
      B50000B27B00008E4A00000400000000000000000000000000000086420031BE
      8C0063EBC60000D79C0000D39C0000D39C0010D7A50039E3B50031DBAD0010B2
      7B00089E6300088E4A00008A4200008A4200008A4200008A4200008A42000086
      42000082420000DBA50000DBA50000BA84000059290000000000000000000000
      00000000000000000000000000000000000000000000318ECE009CEBFF004ACF
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004ACFFF009CEB
      FF00318ECE0000000000000000000000000000000000318ECE009CEBFF004ACF
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004ACFFF009CEB
      FF00318ECE0000000000000000000000000000000000000000000071390039BE
      940073EFD6005AEFCE0000C7940000C7940000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000C7940000C7940000C7940000C7940000CB9C0000C7940042D7B50029C7
      9C0000A26300007139000000000000000000000000000000000000241000008A
      4A0063DBBD0063E7C60000CF9C0000CB940000CF9C0000CF9C0018D7A50021DB
      AD0021DBAD0029E3B50000DBA50000DBA50000DBA50000DBA50000DBA50000DB
      A50000D7A50000D39C0000D39C0000D7A50000BA840000592900000000000000
      00000000000000000000000000000000000000000000318ECE009CEFFF0042D3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF0042D3FF009CEF
      FF00318ECE0000000000000000000000000000000000318ECE009CEFFF0042D3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3
      FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF004AD3FF0042D3FF009CEF
      FF00318ECE00000000000000000000000000000000000000000000100800008E
      4A0073E3C6007BFBDE0029DBB50000C7940000C7940000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C7940021D3A5004AD3AD0000AA
      7300008E4A000010080000000000000000000000000000000000000000000059
      310010965A008CE3CE0073E7CE0010CFA50000C79C0000C79C0000C79C0000C7
      9C0000C79C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB9C0000CB
      9C0000CB9C0000CB9C0000CB9C0000CF9C0000D39C0000B68400005D31000000
      00000000000000000000000000000000000000000000318ECE00A5EFFF0042CF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF0042CFFF00A5EF
      FF00318ECE0000000000000000000000000000000000318ECE00A5EFFF0042CF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACF
      FF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF004ACFFF0042CFFF00A5EF
      FF00318ECE000000000000000000000000000000000000000000000000000051
      290021A66B0094F3DE007BFFE70021D7AD0000C3940000C7940000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C79C0000C7940018CFA50052DBB50000B27B000096
      5A00005129000000000000000000000000000000000000000000000000000000
      0000007D420010965A007BDBC6008CE7DE0042D7BD0000C39C0000C3940000C3
      9C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C39C0000C3
      9C0000C39C0000CB9C0000CB9C0000CB9C0000CBA50029DBBD00008A4A000000
      00000000000000000000000000000000000000000000318ECE00A5EFFF0039CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0039CFFF00A5EF
      FF00318ECE0000000000000000000000000000000000318ECE00A5EFFF0039CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CF
      FF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0042CFFF0039CFFF00A5EF
      FF00318ECE000000000000000000000000000000000000000000000000000000
      00000079390052C79C009CFBE7007BFFDE0029DBB50000C3940000C7940000C7
      9C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      9C0000C79C0000C79C0000C7940021CFA50052DBBD0008B68400009E6300007D
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000653100008E4A0042BA94008CE3D6008CE7DE005AD7C60039CF
      B50018C7A50018C7AD0000C7A50000C7A50000C7A50000C7A50000C7A50000C7
      A50000C7A50000C39C0000C39C0000C39C0063DFC60000B28400005D31000000
      00000000000000000000000000000000000000000000318ECE00A5EFFF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF00A5EF
      FF00318ECE0000000000000000000000000000000000318ECE00A5EFFF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3
      FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF008CE3FF00A5EF
      FF00318ECE000000000000000000000000000000000000000000000000000000
      000000000000007539005ACBA500B5FFF70084FFE7005AEFCE0000C79C0000C3
      940000C3940000C3940000C79C0000C79C0000C79C0000C79C0000C79C0000C7
      940000C3940000C79C0042D7B5004AD7B50000B27B00009E6300007D42000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000024100000864200008E4A0039B284006BCFBD009CE7
      E7009CE7E7009CE7E7004AE3D60052E3D60052E3D60052E3D60052E3D60052E3
      D6004AE3D60094E7D60000BE940063DFC60000AE7B0000592900000000000000
      00000000000000000000000000000000000000000000318ECE00ADEFFF0031B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0031B6EF00ADEF
      FF00318ECE0000000000000000000000000000000000318ECE00ADEFFF0031B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6
      EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0039B6EF0031B6EF00ADEF
      FF00318ECE000000000000000000000000000000000000000000000000000000
      000000000000000000000079390031AE7B00C6FFF7009CFFEF007BFFE70052EB
      C60021D7AD0000C79C0000BE940000C3940000C3940000C3940000C79C0021D3
      AD0042DFBD005AE3C60029C79C0000AA730000965A00007D4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000002410000059290000824200008A
      4200008642000086420000864200008642000086420000864200008642000086
      42000082390084E3D6005ADBC60000AA7B000059290000000000000000000000
      00000000000000000000000000000000000000000000318ECE00ADF3FF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF00ADF3
      FF00318ECE0000000000000000000000000000000000318ECE00ADF3FF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF00ADF3
      FF00318ECE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000512900008E4A0073D7B500ADFFEF0094FB
      E70084FBDE007BFBDE007BFBDE0073F7DE0073F3D60073F3D6006BEFCE0052DF
      BD0031CBA50008B6840000A26300008E4A000051290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008A42007BE3DE0000AA7B00005929000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE00B5F3FF0031CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0031CFFF00B5F3
      FF00318ECE0000000000000000000000000000000000318ECE00B5F3FF0031CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CF
      FF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0039CFFF0031CFFF00B5F3
      FF00318ECE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000100800006D3100008E4A0039B6
      8C005ACFAD0073E3C6006BDFC60063DBBD0052D3B50042CBA50031C39C0010AE
      7B00089E6300008E4A0000713900001008000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A0000AA840000592900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318ECE0084EBFF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084EB
      FF00318ECE0000000000000000000000000000000000318ECE0084EBFF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7
      FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084E7FF0084EB
      FF00318ECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000400000038
      1800006D3900008642000086420000864200008A4200008A4200008A42000071
      3900003C21000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008E4A000061310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029658C00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE0029658C000000000000000000000000000000000029658C00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318ECE00318E
      CE0029658C00000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList_ShortCount: TActionList
    Left = 616
    Top = 200
  end
end
