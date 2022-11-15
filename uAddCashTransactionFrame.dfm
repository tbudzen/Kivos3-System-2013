inherited AddCashTransactionFrame: TAddCashTransactionFrame
  Width = 738
  Height = 687
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentFont = False
  ExplicitWidth = 738
  ExplicitHeight = 687
  object MainTabs: TcxPageControl
    Left = 0
    Top = 28
    Width = 722
    Height = 656
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 649
    ClientRectLeft = 4
    ClientRectRight = 715
    ClientRectTop = 29
    object cxTabSheet2: TcxTabSheet
      Caption = '    List of cash transactions    '
      ImageIndex = 1
      DesignSize = (
        711
        620)
      object cxLabel9: TcxLabel
        Left = 3
        Top = 3
        AutoSize = False
        Caption = 'Cashdesk:'
        Transparent = True
        Height = 19
        Width = 66
      end
      object cbCashdesk: TcxDBLookupComboBox
        Left = 65
        Top = 3
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource3
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            MinWidth = 0
            Width = 0
            FieldName = 'id'
          end
          item
            FieldName = 'cd_name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 1
        Width = 145
      end
      object cxLabel10: TcxLabel
        Left = 216
        Top = 3
        AutoSize = False
        Caption = 'Pending transaction'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 162
      end
      object cxGrid4: TcxGrid
        Left = 24
        Top = 80
        Width = 657
        Height = 177
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = PgDataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxGrid6: TcxGrid
        Left = 24
        Top = 263
        Width = 657
        Height = 148
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView5: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
      object btnDeleteCashTransaction: TcxButton
        Left = 155
        Top = 431
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Delete cash transaction'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxLabel12: TcxLabel
        Left = 384
        Top = 3
        AutoSize = False
        Caption = 'Cashdesk status:'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 162
      end
      object cxButton2: TcxButton
        Left = 3
        Top = 431
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Modify cash transaction'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton1: TcxButton
        Left = 3
        Top = 431
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Add cash transaction'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton3: TcxButton
        Left = 3
        Top = 493
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Open cashdesk'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton4: TcxButton
        Left = 155
        Top = 493
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Close cashdesk'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton5: TcxButton
        Left = 307
        Top = 493
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Change cashier'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxButton6: TcxButton
        Left = 459
        Top = 493
        Width = 146
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Intermediate'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cxLabel13: TcxLabel
        Left = 3
        Top = 468
        AutoSize = False
        Caption = 'Shifts'
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
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 46
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '    Cash transaction    '
      Enabled = False
      object cxGrid3: TcxGrid
        Left = 0
        Top = 491
        Width = 709
        Height = 127
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object edPreviousTransactionNo: TcxTextEdit
        Left = 138
        Top = 465
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 2
        Text = 'edTransactionNo'
        Width = 139
      end
      object cxLabel11: TcxLabel
        Left = 3
        Top = 466
        AutoSize = False
        Caption = 'Previous transaction no:'
        Transparent = True
        Height = 19
        Width = 147
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 370
        Width = 709
        Height = 90
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object btnTransferWithoutRequest: TcxButton
        Left = 351
        Top = 339
        Width = 162
        Height = 25
        Caption = 'Transfer without request'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 5
      end
      object btnRequestOfTransfer: TcxButton
        Left = 213
        Top = 339
        Width = 132
        Height = 25
        Caption = 'Request of transfer'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 6
      end
      object btnClear: TcxButton
        Left = 142
        Top = 339
        Width = 65
        Height = 25
        Caption = 'Clear'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 7
      end
      object btnSave: TcxButton
        Left = 71
        Top = 339
        Width = 65
        Height = 25
        Caption = 'Save'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 8
      end
      object btnTicket: TcxButton
        Left = 0
        Top = 339
        Width = 65
        Height = 25
        Caption = 'Ticket'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 9
      end
      object cxLabel7: TcxLabel
        Left = 3
        Top = 305
        AutoSize = False
        Caption = 'Amount IN:'
        Transparent = True
        Height = 19
        Width = 86
      end
      object edAmountIN: TcxTextEdit
        Left = 71
        Top = 304
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 11
        Width = 121
      end
      object cxLabel8: TcxLabel
        Left = 198
        Top = 305
        AutoSize = False
        Caption = 'Amount OUT:'
        Transparent = True
        Height = 19
        Width = 86
      end
      object edAmountOUT: TcxTextEdit
        Left = 283
        Top = 304
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 13
        Width = 121
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 171
        Width = 709
        Height = 127
        TabOrder = 14
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGrid1DBTableView1id_cd_cash_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_cash_transaction'
          end
          object cxGrid1DBTableView1id_cd_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_transaction'
          end
          object cxGrid1DBTableView1id_cd_value: TcxGridDBColumn
            DataBinding.FieldName = 'id_cd_value'
          end
          object cxGrid1DBTableView1id_cashdesk: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
          end
          object cxGrid1DBTableView1count: TcxGridDBColumn
            DataBinding.FieldName = 'count'
          end
          object cxGrid1DBTableView1amount_in: TcxGridDBColumn
            DataBinding.FieldName = 'amount_in'
          end
          object cxGrid1DBTableView1amount_out: TcxGridDBColumn
            DataBinding.FieldName = 'amount_out'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGrid5: TcxGrid
        Left = 559
        Top = 60
        Width = 150
        Height = 105
        TabOrder = 15
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object mTransactionExplanation: TcxMemo
        Left = 361
        Top = 117
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 16
        Height = 48
        Width = 152
      end
      object edTransactionNo: TcxTextEdit
        Left = 361
        Top = 91
        Style.Color = 11660792
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 0
        Width = 152
      end
      object cxLabel3: TcxLabel
        Left = 269
        Top = 92
        AutoSize = False
        Caption = 'Transaction no:'
        Transparent = True
        Height = 19
        Width = 86
      end
      object cxLabel6: TcxLabel
        Left = 269
        Top = 117
        AutoSize = False
        Caption = 'Transaction explanation:'
        Properties.WordWrap = True
        Transparent = True
        Height = 34
        Width = 71
      end
      object cbTransactionIN: TcxCheckBox
        Left = 130
        Top = 143
        Caption = 'Transaction IN ?'
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 19
        Transparent = True
        Width = 121
      end
      object cbTransactionOUT: TcxCheckBox
        Left = 3
        Top = 143
        Caption = 'Transaction OUT ?'
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 20
        Transparent = True
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 4
        Top = 116
        AutoSize = False
        Caption = 'Account:'
        Transparent = True
        Height = 19
        Width = 59
      end
      object cxLabel4: TcxLabel
        Left = 4
        Top = 91
        AutoSize = False
        Caption = 'Transaction:'
        Transparent = True
        Height = 19
        Width = 96
      end
      object cbTransaction: TcxDBLookupComboBox
        Left = 106
        Top = 91
        DataBinding.DataField = 'id_transaction'
        DataBinding.DataSource = PgDataSource3
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id_transaction'
        Properties.ListColumns = <
          item
            FieldName = 'id_transaction'
          end
          item
            FieldName = 'order_id'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = PgDataSource2
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 23
        Width = 145
      end
      object cbAccount: TcxDBLookupComboBox
        Left = 106
        Top = 116
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource5
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = PgDataSource6
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 24
        Width = 145
      end
      object btnTran1: TcxButton
        Left = 0
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 1'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 25
      end
      object btnTran2: TcxButton
        Left = 56
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 2'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 26
      end
      object btnTran3: TcxButton
        Left = 112
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 3'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 27
      end
      object btnTran4: TcxButton
        Left = 168
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 4'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 28
      end
      object btnTran5: TcxButton
        Left = 224
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 5'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 29
      end
      object btnTran6: TcxButton
        Left = 280
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 6'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 30
      end
      object btnTran7: TcxButton
        Left = 336
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 7'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 31
      end
      object btnTran8: TcxButton
        Left = 392
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 8'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 32
      end
      object btnTran9: TcxButton
        Left = 448
        Top = 60
        Width = 50
        Height = 25
        Caption = 'Tran. 9'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 33
      end
      object btnTran10: TcxButton
        Left = 504
        Top = 60
        Width = 49
        Height = 25
        Caption = 'Tran. 10'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        TabOrder = 34
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 35
        AutoSize = False
        Caption = 'Cashdesk:'
        Transparent = True
        Height = 19
        Width = 66
      end
      object edCashDesk: TcxTextEdit
        Left = 64
        Top = 34
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 36
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 191
        Top = 35
        AutoSize = False
        Caption = 'Pending transaction'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 118
      end
      object lbCashier: TcxLabel
        Left = 3
        Top = 9
        AutoSize = False
        Caption = 'Cashier:'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 162
      end
      object lbLoginTime: TcxLabel
        Left = 171
        Top = 9
        AutoSize = False
        Caption = 'Login time:'
        ParentFont = False
        Style.BorderColor = clSilver
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        Transparent = True
        Height = 19
        Width = 215
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '    Shifts    '
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object btnCancel: TcxButton
    Left = 463
    Top = 3
    Width = 90
    Height = 25
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
  end
  object btnAddCashTransaction: TcxButton
    Left = 559
    Top = 3
    Width = 148
    Height = 25
    Caption = 'Add cash transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 2
  end
  object btnModifyCashTransaction: TcxButton
    Left = 559
    Top = 3
    Width = 148
    Height = 25
    Caption = 'Modify cash transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    TabOrder = 3
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 638
    Width = 669
    Height = 467
    TabOrder = 4
    Properties.ActivePage = cxTabSheet4
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 460
    ClientRectLeft = 4
    ClientRectRight = 662
    ClientRectTop = 29
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'cxTabSheet5'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd_cash_transactions_subt_values')
    Left = 304
    Top = 200
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 368
    Top = 200
  end
  object PgTable5: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 24
    Top = 112
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgTable5
    Left = 88
    Top = 112
  end
  object PgTable6: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 152
    Top = 112
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgTable6
    Left = 216
    Top = 112
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 216
    Top = 64
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 88
    Top = 64
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.order_id '
      'from tbl_cd_transactions as cdt, tbl_transactions as t'
      'where cdt.id_transaction = t.id')
    Left = 152
    Top = 64
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cdt.*, t.order_id '
      'from tbl_cd_transactions as cdt, tbl_transactions as t'
      'where cdt.id_transaction = t.id')
    Left = 24
    Top = 64
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 424
    Top = 64
  end
end
