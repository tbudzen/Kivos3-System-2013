inherited AddCashTransactionCashDeskFrame: TAddCashTransactionCashDeskFrame
  Width = 690
  Height = 574
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentFont = False
  ExplicitWidth = 690
  ExplicitHeight = 574
  object btnAddCashTransactionCashDesk: TcxButton
    Left = 467
    Top = 10
    Width = 123
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Add transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 0
  end
  object btnCancel: TcxButton
    Left = 596
    Top = 10
    Width = 76
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 1
  end
  object btnModifyCashTransactionCashDesk: TcxButton
    Left = 467
    Top = 31
    Width = 123
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Modify transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 2
  end
  object cxLabel43: TcxLabel
    Left = 16
    Top = 13
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    Height = 19
    Width = 19
  end
  object edId: TcxTextEdit
    Left = 80
    Top = 10
    Enabled = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 4
    Width = 87
  end
  object edName: TcxTextEdit
    Left = 80
    Top = 37
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 5
    Width = 153
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 38
    AutoSize = False
    Caption = 'Name:'
    Transparent = True
    Height = 19
    Width = 49
  end
  object cxCheckBox1: TcxCheckBox
    Left = 248
    Top = 37
    Caption = 'Cash desk is a table ?'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 7
    Transparent = True
    Width = 137
  end
  object cxDBComboBox1: TcxDBComboBox
    Left = 80
    Top = 64
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 8
    Width = 153
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 65
    AutoSize = False
    Caption = 'Account:'
    Transparent = True
    Height = 19
    Width = 58
  end
  object cxPageControl1: TcxPageControl
    Left = 16
    Top = 104
    Width = 657
    Height = 449
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    Properties.ActivePage = cxTabSheet3
    Properties.Style = 11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    ClientRectBottom = 443
    ClientRectLeft = 3
    ClientRectRight = 651
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = '    Shift configuration    '
      object cxLabel3: TcxLabel
        Left = 16
        Top = 16
        AutoSize = False
        Caption = 'Cash desk properties'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 161
      end
      object cxCheckBox2: TcxCheckBox
        Left = 16
        Top = 41
        Caption = 'Always active ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 1
        Transparent = True
        Width = 137
      end
      object cxCheckBox3: TcxCheckBox
        Left = 16
        Top = 66
        Caption = 'Must open daily ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 2
        Transparent = True
        Width = 137
      end
      object cxCheckBox4: TcxCheckBox
        Left = 16
        Top = 91
        Caption = 'Allow close ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 3
        Transparent = True
        Width = 137
      end
      object cxCheckBox5: TcxCheckBox
        Left = 16
        Top = 116
        Caption = 'Used in chip balance ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 4
        Transparent = True
        Width = 145
      end
      object cxCheckBox6: TcxCheckBox
        Left = 16
        Top = 141
        Caption = 'Default carryover ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 5
        Transparent = True
        Width = 137
      end
      object cxLabel4: TcxLabel
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
      object cxGrid10: TcxGrid
        Left = 16
        Top = 63
        Width = 185
        Height = 338
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTableView8: TcxGridDBTableView
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
          object cxGridDBTableView8name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
      object cxGrid11: TcxGrid
        Left = 246
        Top = 65
        Width = 382
        Height = 336
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTableView9: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView9id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView9name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
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
        end
        object cxGridLevel9: TcxGridLevel
          GridView = cxGridDBTableView9
        end
      end
      object cxButton2: TcxButton
        Left = 207
        Top = 93
        Width = 33
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 2
      end
      object cxButton1: TcxButton
        Left = 207
        Top = 65
        Width = 33
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 3
      end
      object cxLabel46: TcxLabel
        Left = 246
        Top = 42
        AutoSize = False
        Caption = 'All possible values:'
        Transparent = True
        Height = 17
        Width = 121
      end
      object cxLabel45: TcxLabel
        Left = 16
        Top = 40
        AutoSize = False
        Caption = 'Values for transaction:'
        Transparent = True
        Height = 17
        Width = 121
      end
      object cxLabel44: TcxLabel
        Left = 16
        Top = 14
        AutoSize = False
        Caption = 'Values'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clMaroon
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 193
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '    Add transactions    '
      ImageIndex = 2
      object cxLabel5: TcxLabel
        Left = 16
        Top = 20
        AutoSize = False
        Caption = 'Transactions for cash desk'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
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
        Left = 16
        Top = 44
        Width = 272
        Height = 357
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGrid1DBTableView1order_id: TcxGridDBColumn
            Caption = 'Order id'
            DataBinding.FieldName = 'order_id'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton3: TcxButton
        Left = 294
        Top = 44
        Width = 43
        Height = 27
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton4: TcxButton
        Left = 294
        Top = 77
        Width = 43
        Height = 27
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxGrid2: TcxGrid
        Left = 343
        Top = 44
        Width = 272
        Height = 357
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
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
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxLabel7: TcxLabel
        Left = 343
        Top = 20
        AutoSize = False
        Caption = 'All possible transactions'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
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
      object cxGrid3: TcxGrid
        Left = 343
        Top = 44
        Width = 272
        Height = 357
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Order id'
            DataBinding.FieldName = 'order_id'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'To account'
            DataBinding.FieldName = 'account_id_to'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxLabel6: TcxLabel
        Left = 343
        Top = 20
        AutoSize = False
        Caption = 'All possible multiple transactions'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
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
      object cxButton5: TcxButton
        Left = 294
        Top = 44
        Width = 43
        Height = 27
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton6: TcxButton
        Left = 294
        Top = 77
        Width = 43
        Height = 27
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxGrid4: TcxGrid
        Left = 16
        Top = 44
        Width = 272
        Height = 357
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Order id'
            DataBinding.FieldName = 'order_id'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'To account'
            DataBinding.FieldName = 'account_id_to'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxLabel8: TcxLabel
        Left = 16
        Top = 20
        AutoSize = False
        Caption = 'Multiple transactions for cash desk'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
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
    object cxTabSheet5: TcxTabSheet
      Caption = '    Move values    '
      ImageIndex = 4
      object cxGrid5: TcxGrid
        Left = 16
        Top = 16
        Width = 614
        Height = 161
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGrid5DBTableView1: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBTableView1
        end
      end
      object cxLabel9: TcxLabel
        Left = 16
        Top = 293
        AutoSize = False
        Caption = 'Open account:'
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 167
        Top = 289
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 2
        Width = 153
      end
      object cxDBComboBox3: TcxDBComboBox
        Left = 167
        Top = 318
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 3
        Width = 153
      end
      object cxLabel10: TcxLabel
        Left = 16
        Top = 318
        AutoSize = False
        Caption = 'Difference open account:'
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxDBComboBox4: TcxDBComboBox
        Left = 479
        Top = 318
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 5
        Width = 153
      end
      object cxLabel11: TcxLabel
        Left = 328
        Top = 318
        AutoSize = False
        Caption = 'Difference close account:'
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxLabel12: TcxLabel
        Left = 328
        Top = 293
        AutoSize = False
        Caption = 'Close account:'
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxDBComboBox5: TcxDBComboBox
        Left = 479
        Top = 289
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 8
        Width = 153
      end
      object cxLabel13: TcxLabel
        Left = 16
        Top = 268
        AutoSize = False
        Caption = 'On open'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clMaroon
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 73
      end
      object cxLabel14: TcxLabel
        Left = 328
        Top = 268
        AutoSize = False
        Caption = 'On close'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clMaroon
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 73
      end
      object cxLabel15: TcxLabel
        Left = 16
        Top = 239
        AutoSize = False
        Caption = 'Category:'
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxDBComboBox6: TcxDBComboBox
        Left = 79
        Top = 239
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 12
        Width = 153
      end
      object cxCheckBox7: TcxCheckBox
        Left = 16
        Top = 343
        Caption = 'Carry over ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 13
        Transparent = True
        Width = 89
      end
      object cxCheckBox8: TcxCheckBox
        Left = 16
        Top = 368
        Caption = 'Automatic ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Green'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 14
        Transparent = True
        Width = 89
      end
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 223
        TabOrder = 15
        Height = 10
        Width = 617
      end
      object cxButton7: TcxButton
        Left = 507
        Top = 192
        Width = 123
        Height = 25
        Caption = 'Delete'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 16
      end
      object cxButton8: TcxButton
        Left = 507
        Top = 361
        Width = 123
        Height = 25
        Caption = 'Save changes'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        TabOrder = 17
      end
    end
  end
end
