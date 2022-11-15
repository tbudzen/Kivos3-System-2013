inherited AddTransactionFrame: TAddTransactionFrame
  Width = 963
  Height = 709
  AutoScroll = True
  Font.Height = -12
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 963
  ExplicitHeight = 709
  object TransactionPages: TcxPageControl
    AlignWithMargins = True
    Left = 4
    Top = 95
    Width = 954
    Height = 614
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Visible = False
    Properties.ActivePage = cxTabSheet4
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradientClientArea, pcoRedrawOnResize]
    Properties.ShowFrame = True
    Properties.Style = 11
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    ClientRectBottom = 609
    ClientRectLeft = 5
    ClientRectRight = 949
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = '    Basic parameters    '
      ImageIndex = 0
      OnShow = cxTabSheet1Show
      ExplicitTop = 29
      ExplicitHeight = 580
      DesignSize = (
        944
        581)
      object cxTextEdit1: TcxTextEdit
        Left = 136
        Top = -216
        TabOrder = 0
        Text = 'cxTextEdit1'
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 80
        Top = -168
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 145
      end
      object cbCategory: TcxDBLookupComboBox
        Left = 151
        Top = 14
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource11
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            Width = 100
            FieldName = 'id'
          end
          item
            Width = 300
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource12
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        Width = 234
      end
      object cxLabel7: TcxLabel
        Left = 16
        Top = 16
        AutoSize = False
        Caption = 'Category:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 129
      end
      object edMinValue: TcxTextEdit
        Left = 151
        Top = 64
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 3
        OnKeyPress = edMinValueKeyPress
        Width = 234
      end
      object cxLabel8: TcxLabel
        Left = 16
        Top = 66
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 121
      end
      object edMaxValue: TcxTextEdit
        Left = 151
        Top = 89
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 4
        OnKeyPress = edMaxValueKeyPress
        Width = 234
      end
      object cxLabel9: TcxLabel
        Left = 16
        Top = 91
        AutoSize = False
        Caption = 'Max. value:'
        Transparent = True
        Height = 19
        Width = 121
      end
      object cbVisible: TcxCheckBox
        Left = 416
        Top = 16
        AutoSize = False
        Caption = 'Visible ?'
        Style.HotTrack = False
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
        Height = 19
        Width = 186
      end
      object cbForChange: TcxCheckBox
        Left = 416
        Top = 41
        AutoSize = False
        Caption = 'For change ?'
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 6
        Transparent = True
        Height = 19
        Width = 186
      end
      object cbMoneyLaundry: TcxCheckBox
        Left = 416
        Top = 93
        AutoSize = False
        Caption = 'Money laundry ?'
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 7
        Transparent = True
        Height = 19
        Width = 186
      end
      object cbLiveGamesTransaction: TcxCheckBox
        Left = 416
        Top = 118
        AutoSize = False
        Caption = 'Live Games transaction ?'
        Properties.OnChange = cbLiveGamesTransactionPropertiesChange
        Style.HotTrack = False
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
        Height = 19
        Width = 186
      end
      object cbPrintDirect: TcxCheckBox
        Left = 17
        Top = 385
        Caption = 'Print direct ?'
        Properties.OnChange = cbPrintDirectPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 9
        Transparent = True
        Width = 134
      end
      object cxLabel10: TcxLabel
        Left = 128
        Top = 385
        AutoSize = False
        Caption = 'How many copies ?'
        Transparent = True
        Visible = False
        Height = 19
        Width = 140
      end
      object cxLabel11: TcxLabel
        Left = 345
        Top = 385
        AutoSize = False
        Caption = 'Report:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 74
      end
      object cxLabel12: TcxLabel
        Left = 18
        Top = 223
        AutoSize = False
        Caption = 'IN description:'
        Transparent = True
        Height = 19
        Width = 289
      end
      object cxLabel13: TcxLabel
        Left = 313
        Top = 223
        AutoSize = False
        Caption = 'OUT description:'
        Transparent = True
        Height = 19
        Width = 289
      end
      object mOUTDescription: TcxMemo
        Left = 313
        Top = 243
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 10
        Height = 94
        Width = 289
      end
      object mINDescription: TcxMemo
        Left = 18
        Top = 243
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Caramel'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Caramel'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Caramel'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Caramel'
        TabOrder = 11
        Height = 94
        Width = 289
      end
      object cbHowManyCopies: TcxComboBox
        Left = 251
        Top = 384
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 12
        Text = '1'
        Visible = False
        Width = 71
      end
      object cbDirection: TcxComboBox
        Left = 151
        Top = 182
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'In'
          'Out'
          'In <-> Out')
        Properties.OnChange = cbDirectionPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 13
        Text = 'In'
        Width = 121
      end
      object cxLabel52: TcxLabel
        Left = 18
        Top = 184
        AutoSize = False
        Caption = 'Direction:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 127
      end
      object cbUseInTransfer: TcxCheckBox
        Left = 416
        Top = 66
        AutoSize = False
        Caption = 'Use in transfer ?'
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 22
        Transparent = True
        Height = 19
        Width = 186
      end
      object cbCurrency: TcxDBLookupComboBox
        Left = 151
        Top = 39
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource1
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            MinWidth = 0
            Width = 0
            FieldName = 'id'
          end
          item
            FieldName = 'symbol'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource8
        Properties.OnEditValueChanged = cbCurrencyPropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 23
        Width = 107
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 41
        AutoSize = False
        Caption = 'Currency:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 121
      end
      object cxCheckBox1: TcxCheckBox
        Left = 416
        Top = 143
        AutoSize = False
        Caption = 'Selling exchange rate ?'
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 25
        Transparent = True
        Height = 19
        Width = 176
      end
      object cxCheckBox_AllowGD: TcxCheckBox
        Left = 416
        Top = 168
        AutoSize = False
        Caption = 'Allow to change GD'
        ParentBackground = False
        ParentColor = False
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 26
        Transparent = True
        OnClick = cxCheckBox_AllowGDClick
        Height = 19
        Width = 176
      end
      object GroupBox4: TGroupBox
        Left = 697
        Top = 16
        Width = 232
        Height = 106
        Anchors = [akLeft, akTop, akRight]
        Color = clSilver
        DoubleBuffered = True
        ParentBackground = False
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 27
        Visible = False
        object cxCheckBox_MainTransaction: TcxCheckBox
          Left = 14
          Top = 20
          AutoSize = False
          Caption = 'Main transaction'
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Transparent = True
          Height = 19
          Width = 195
        end
        object cxCheckBox_Accauntfrom: TcxCheckBox
          Left = 14
          Top = 45
          AutoSize = False
          Caption = 'Account from'
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 1
          Transparent = True
          Height = 19
          Width = 195
        end
        object cxCheckBox_Accoutto: TcxCheckBox
          Left = 14
          Top = 70
          AutoSize = False
          Caption = 'Account to'
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 2
          Transparent = True
          Height = 19
          Width = 195
        end
      end
      object cbReport: TcxComboBox
        Left = 402
        Top = 384
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.HideSelection = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 28
        Visible = False
        Width = 200
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = '    Accounts    '
      ImageIndex = 6
      ExplicitTop = 29
      ExplicitHeight = 580
      DesignSize = (
        944
        581)
      object Image1: TImage
        Left = 272
        Top = 37
        Width = 178
        Height = 37
        Anchors = [akLeft, akTop, akBottom]
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000B2
          000000260806000000607DC13D000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
          80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
          0AF400000AF401BD51B38A0000027949444154785EED9B3F68135118C05BA182
          A08B141C1C1D1C5C1D1D757411A24B7570D0C1A138555AA1856A49B1942E1D82
          4BADA0B48BA0D6624C69435A5A48534A68D34493162D1A85AB51436AFEDCE5BC
          0CC5B75492F4DD7B1EFD050221DCFBBEEFFDDEEF91EFEE9196165E1080000420
          00010840000210800004200001084000021080000420A08BC0AF42F952B56A9F
          D4959FBC109042606C2A3DE3EB9EB3022F52F3DBDF0AB71CA94F48094C1008A8
          24F0743A13BC726FD6DE7B5FEF8BFC7E19D99ECCE54B976DDB6E53590BB920D0
          348167C1CD695164F1F39DA12523BCF235B05BAC5C683A010321A082C04468EB
          F57E228BDF3F1C8B27D632B93ED3AC9E515157C339EA9904D7FCFDE985C5AC3D
          329158DEFC92EF74FAE9F68685736B000B83A4CD3AD0D11B294E86B65E193F8A
          3EA79F3EEA96A375C56D76128C6303880EDCF62FE6DE2E7D1ECF17CA171DA95B
          EB924FE645088990B21DE81A8D7D8A2577FC15D33A2BD3D57FC6923D09E2B131
          4407069EC4D7531F7F7639FDF42957A5463CC453E1C0D59EB039FE26F32E6BEC
          DE70A43E2E5D6A159320079B4574A0F7F1EA8762C93C2F5566244332150EDC7C
          B090DF3B5C716E068F4895B8164CC524C8713837CBB5FBE18AF078EE987479C5
          80487638257373DD879FAFAFD40E4C2CAB7ADA5579111979658B7C77249AAD3D
          722B57AC73CAE44564449621B2EB7DAF961D41524F1270841E6E446AA57DAF27
          8952B41602D10DE3513D226BE97BB51021A92709C492C6E07E226BEF7B3D4994
          A2B510587DBF33208A4CDFAB6519487A5002F1F4F77EFADE835264BC7602B5A3
          E2FFF65F1FDAE950000420000108400002108000042000010840000210800004
          200001087881C01F8F5C1D13E5CC0F240000000049454E44AE426082}
      end
      object cbToAccount: TcxDBLookupComboBox
        Left = 475
        Top = 51
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource3
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 400
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            MinWidth = 200
            Width = 200
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource6
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 0
        Width = 190
      end
      object cbFromAccount: TcxDBLookupComboBox
        Left = 64
        Top = 51
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource2
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 400
        Properties.GridMode = True
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            MinWidth = 200
            Width = 200
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PgDataSource5
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 1
        Width = 185
      end
      object cbUseCurrentCashdeskInsteadOfTo: TcxCheckBox
        Left = 480
        Top = 80
        AutoSize = False
        Caption = 'Use the cashdesk account instead of to account ?'
        Properties.MultiLine = True
        Properties.OnEditValueChanged = cbUseCurrentCashdeskInsteadOfToPropertiesEditValueChanged
        Style.HotTrack = False
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
        OnClick = cbUseCurrentCashdeskInsteadOfToClick
        Height = 60
        Width = 178
      end
      object cbUseCurrentCashdeskInsteadOfFrom: TcxCheckBox
        Left = 64
        Top = 80
        AutoSize = False
        Caption = 'Use the cashdesk account instead of from account?'
        Properties.MultiLine = True
        Properties.OnEditValueChanged = cbUseCurrentCashdeskInsteadOfFromPropertiesEditValueChanged
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        Transparent = True
        OnClick = cbUseCurrentCashdeskInsteadOfFromClick
        Height = 60
        Width = 194
      end
      object cbMultipleAccountsManual: TcxCheckBox
        Left = 19
        Top = 195
        AutoSize = False
        Caption = 'Multiple accounts manual ?'
        Properties.OnEditValueChanged = cbMultipleAccountsManualPropertiesEditValueChanged
        Style.HotTrack = False
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
        OnClick = cbMultipleAccountsManualClick
        Height = 19
        Width = 233
      end
      object cbMultipleAccountsFixed: TcxCheckBox
        Left = 19
        Top = 217
        AutoSize = False
        Caption = 'Multiple accounts fixed ?'
        Properties.Alignment = taLeftJustify
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 5
        Transparent = True
        OnClick = cbMultipleAccountsFixedClick
        Height = 19
        Width = 233
      end
      object cxLabel14: TcxLabel
        Left = 19
        Top = 162
        AutoSize = False
        Caption = 'Multiple accounts'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 19
        Width = 185
      end
      object cxLabel47: TcxLabel
        Left = 19
        Top = 249
        AutoSize = False
        Caption = 'Accounts for transaction:'
        Transparent = True
        Visible = False
        Height = 17
        Width = 411
      end
      object cxGrid1: TcxGrid
        Left = 19
        Top = 272
        Width = 408
        Height = 292
        TabOrder = 8
        Visible = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource19
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGrid1DBTableView1id_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_transaction'
            Visible = False
          end
          object cxGrid1DBTableView1account_id: TcxGridDBColumn
            Caption = 'Account'
            DataBinding.FieldName = 'account_id'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGrid1DBTableView1name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1is_default: TcxGridDBColumn
            Caption = 'Account is default ?'
            DataBinding.FieldName = 'is_default'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Properties.OnEditValueChanged = cxGrid1DBTableView1is_defaultPropertiesEditValueChanged
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
            IsCaptionAssigned = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxButton4: TcxButton
        Left = 433
        Top = 272
        Width = 41
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 9
        Visible = False
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 433
        Top = 303
        Width = 41
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 10
        Visible = False
        OnClick = cxButton5Click
      end
      object cxGrid14: TcxGrid
        Left = 18
        Top = 272
        Width = 409
        Height = 292
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 11
        Visible = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 291
        object cxGridDBTableView12: TcxGridDBTableView
          DataController.DataSource = PgDataSource21
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView12id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView12id_transaction: TcxGridDBColumn
            DataBinding.FieldName = 'id_transaction'
            Visible = False
          end
          object cxGridDBTableView12account_id: TcxGridDBColumn
            Caption = 'Account'
            DataBinding.FieldName = 'account_id'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView12split: TcxGridDBColumn
            Caption = 'Split [%]'
            DataBinding.FieldName = 'split'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTableView12fixed: TcxGridDBColumn
            Caption = 'Fixed amount'
            DataBinding.FieldName = 'fixed'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBTable_Active: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel12: TcxGridLevel
          GridView = cxGridDBTableView12
        end
      end
      object cxLabel48: TcxLabel
        Left = 480
        Top = 249
        AutoSize = False
        Caption = 'All possible accounts:'
        Transparent = True
        Visible = False
        Height = 17
        Width = 441
      end
      object cxGrid2: TcxGrid
        Left = 480
        Top = 272
        Width = 449
        Height = 292
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 13
        Visible = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 291
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource20
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView1account_id: TcxGridDBColumn
            Caption = 'Account'
            DataBinding.FieldName = 'account_id'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView1name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
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
      object cxLabel6: TcxLabel
        Left = 475
        Top = 3
        AutoSize = False
        Caption = 'To:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 34
        Width = 94
      end
      object cxLabel4: TcxLabel
        Left = 64
        Top = 3
        AutoSize = False
        Caption = 'From:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -20
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 42
        Width = 129
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = '    Confirmation    '
      ImageIndex = 4
      ExplicitTop = 29
      ExplicitHeight = 580
      DesignSize = (
        944
        581)
      object cbNeedsConfirmation: TcxCheckBox
        Left = 17
        Top = 39
        Caption = 'Needs confirmation ?'
        Properties.OnChange = cbNeedsConfirmationPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 0
        Transparent = True
        Width = 211
      end
      object cbCashierCanConfirm: TcxCheckBox
        Left = 17
        Top = 63
        Caption = 'Cashier can confirm ?'
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
        Visible = False
        Width = 211
      end
      object cbNeedsAuthorisation: TcxCheckBox
        Left = 17
        Top = 89
        Caption = 'Needs authorisation before transaction ?'
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
        Visible = False
        Width = 242
      end
      object cxLabel19: TcxLabel
        Left = 17
        Top = 118
        AutoSize = False
        Caption = 'Confirmation message:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 216
      end
      object mConfirmationMessage: TcxMemo
        Left = 16
        Top = 137
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
        Height = 54
        Width = 430
      end
      object cxLabel20: TcxLabel
        Left = 291
        Top = 89
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 62
      end
      object edConfirmationMinValue: TcxTextEdit
        Left = 359
        Top = 87
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 6
        Visible = False
        OnKeyPress = edConfirmationMinValueKeyPress
        Width = 87
      end
      object cxGrid3: TcxGrid
        Left = 17
        Top = 222
        Width = 348
        Height = 342
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 7
        Visible = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 341
        object cxGrid3DBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource18
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGrid3DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGrid3DBTableView1user_name: TcxGridDBColumn
            Caption = 'User name'
            DataBinding.FieldName = 'user_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
      object cxLabel21: TcxLabel
        Left = 16
        Top = 197
        AutoSize = False
        Caption = 'Users authorised to confirm:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 249
      end
      object cxLabel51: TcxLabel
        Left = 421
        Top = 197
        AutoSize = False
        Caption = 'All users:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 212
      end
      object cxGrid12: TcxGrid
        Left = 421
        Top = 222
        Width = 364
        Height = 342
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
        Visible = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 341
        object cxGridDBTableView10: TcxGridDBTableView
          DataController.DataSource = PgDataSource17
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView10id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView10user_name: TcxGridDBColumn
            Caption = 'User name'
            DataBinding.FieldName = 'user_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 0
            SortOrder = soAscending
          end
        end
        object cxGridLevel10: TcxGridLevel
          GridView = cxGridDBTableView10
        end
      end
      object cxButton3: TcxButton
        Left = 371
        Top = 221
        Width = 44
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 11
        Visible = False
        OnClick = cxButton3Click
      end
      object cxButton8: TcxButton
        Left = 371
        Top = 252
        Width = 44
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 12
        Visible = False
        OnClick = cxButton8Click
      end
      object cxLabel15: TcxLabel
        Left = 16
        Top = 14
        AutoSize = False
        Caption = 'Confirmation'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 217
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '    Extended parameters    '
      ImageIndex = 1
      ExplicitTop = 29
      ExplicitHeight = 580
      object cxLabel16: TcxLabel
        Left = 16
        Top = 14
        AutoSize = False
        Caption = 'Surveillance'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 161
      end
      object cxLabel17: TcxLabel
        Left = 16
        Top = 80
        AutoSize = False
        Caption = 'Money laundry'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 194
      end
      object cxLabel18: TcxLabel
        Left = 16
        Top = 142
        AutoSize = False
        Caption = 'Live games'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Visible = False
        Height = 19
        Width = 89
      end
      object cxLabel22: TcxLabel
        Left = 111
        Top = 39
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 66
      end
      object cbSend: TcxCheckBox
        Left = 16
        Top = 38
        Caption = 'Send ?'
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
        Width = 66
      end
      object edSurveillanceMinValue: TcxTextEdit
        Left = 176
        Top = 38
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 5
        OnKeyPress = edSurveillanceMinValueKeyPress
        Width = 97
      end
      object cxLabel24: TcxLabel
        Left = 16
        Top = 167
        AutoSize = False
        Caption = 'Fill from account:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 105
      end
      object cbLGFillFromAccount: TcxDBLookupComboBox
        Left = 128
        Top = 166
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource9
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListSource = PgDataSource10
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 7
        Visible = False
        Width = 145
      end
      object cbLGCreditToAccount: TcxDBLookupComboBox
        Left = 128
        Top = 193
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource13
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListSource = PgDataSource14
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 8
        Visible = False
        Width = 145
      end
      object cxLabel25: TcxLabel
        Left = 16
        Top = 193
        AutoSize = False
        Caption = 'Credit to account:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 105
      end
      object cbExportFile: TcxCheckBox
        Left = 16
        Top = 104
        Caption = 'Export file ?'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Foggy'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Foggy'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Foggy'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Foggy'
        TabOrder = 10
        Transparent = True
        Width = 89
      end
      object cxLabel23: TcxLabel
        Left = 111
        Top = 104
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 64
      end
      object edMoneyLaundryMinValue: TcxTextEdit
        Left = 176
        Top = 102
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 12
        OnKeyPress = edMoneyLaundryMinValueKeyPress
        Width = 96
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = '    Values    '
      ImageIndex = 3
      ExplicitTop = 29
      ExplicitHeight = 580
      DesignSize = (
        944
        581)
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
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 145
      end
      object cxGrid10: TcxGrid
        Left = 16
        Top = 62
        Width = 350
        Height = 502
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 501
        object cxGridDBTableView8: TcxGridDBTableView
          DataController.DataSource = PgDataSource15
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView8id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView8Column_Ord: TcxGridDBColumn
            Caption = 'Sort order'
            DataBinding.FieldName = 'ord'
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView8name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
          end
          object cxGridDBTableView8Column_Category: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'category'
          end
          object cxGridDBTableView8Active: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 30
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBTableView8
        end
      end
      object cxButton1: TcxButton
        Left = 372
        Top = 62
        Width = 43
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 372
        Top = 91
        Width = 43
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        OnClick = cxButton2Click
      end
      object cxGrid11: TcxGrid
        Left = 421
        Top = 62
        Width = 508
        Height = 502
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 501
        object cxGridDBTableView9: TcxGridDBTableView
          DataController.DataSource = PgDataSource16
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView9id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView9name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'value_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 56
          end
          object cxGridDBTableView9multiplier: TcxGridDBColumn
            Caption = 'Multiplier'
            DataBinding.FieldName = 'value_multiplier'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxGridDBTableView9name_1: TcxGridDBColumn
            Caption = 'Category'
            DataBinding.FieldName = 'c_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object cxGridDBTableView9name_2: TcxGridDBColumn
            Caption = 'Unit'
            DataBinding.FieldName = 'unit_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object cxGridDBTableView9symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object cxGridDBTableView9Column_Order: TcxGridDBColumn
            Caption = 'Sort order'
            DataBinding.FieldName = 'sort_order'
            Visible = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView9_Active: TcxGridDBColumn
            DataBinding.FieldName = 'active'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Width = 30
            IsCaptionAssigned = True
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = cxGridDBTableView9
        end
      end
      object cxLabel45: TcxLabel
        Left = 16
        Top = 39
        AutoSize = False
        Caption = 'Values for transaction:'
        Transparent = True
        Height = 17
        Width = 273
      end
      object cxLabel46: TcxLabel
        Left = 421
        Top = 39
        AutoSize = False
        Caption = 'All possible values:'
        Transparent = True
        Height = 17
        Width = 268
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '    Summary    '
      ImageIndex = 2
      OnShow = cxTabSheet3Show
      ExplicitTop = 29
      ExplicitHeight = 580
      object cbMoneyLaundryRO: TcxCheckBox
        Left = 489
        Top = 76
        Caption = 'Money laundry ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 0
        Transparent = True
        Width = 120
      end
      object cbCloseOpenRO: TcxCheckBox
        Left = 333
        Top = 93
        Caption = 'Is close open ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 1
        Transparent = True
        Width = 104
      end
      object cbForChangeRO: TcxCheckBox
        Left = 333
        Top = 43
        Caption = 'For change ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 2
        Transparent = True
        Width = 98
      end
      object cbVisibleRO: TcxCheckBox
        Left = 17
        Top = 69
        Caption = 'Visible ?'
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
        Transparent = True
        Width = 80
      end
      object cbNeedsConfirmationRO: TcxCheckBox
        Left = 489
        Top = 43
        Caption = 'Needs confirmation ?'
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
        Transparent = True
        Width = 136
      end
      object cbMultipleAccountsManualRO: TcxCheckBox
        Left = 489
        Top = 60
        Caption = 'Multiple accounts manual ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 5
        Transparent = True
        Width = 169
      end
      object cbMultipleAccountsFixedRO: TcxCheckBox
        Left = 333
        Top = 60
        Caption = 'Multiple accounts fixed ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 6
        Transparent = True
        Width = 156
      end
      object cbMultipleTransactionRO: TcxCheckBox
        Left = 333
        Top = 76
        Caption = 'Multiple transaction ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 7
        Transparent = True
        Width = 168
      end
      object cbLiveGamesTransactionRO: TcxCheckBox
        Left = 489
        Top = 93
        Caption = 'Live Games transaction ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 8
        Transparent = True
        Width = 168
      end
      object cbPrintDirectRO: TcxCheckBox
        Left = 17
        Top = 93
        Caption = 'Print direct ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 9
        Transparent = True
        Width = 97
      end
      object cxLabel27: TcxLabel
        Left = 111
        Top = 116
        AutoSize = False
        Caption = 'How many copies ?'
        Transparent = True
        Height = 19
        Width = 121
      end
      object cxLabel28: TcxLabel
        Left = 111
        Top = 93
        AutoSize = False
        Caption = 'Report:'
        Transparent = True
        Height = 19
        Width = 45
      end
      object cbReportRO: TcxDBLookupComboBox
        Left = 160
        Top = 91
        Properties.ListColumns = <>
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 12
        Width = 145
      end
      object cbCategoryRO: TcxDBLookupComboBox
        Left = 78
        Top = 9
        DataBinding.DataField = 'id'
        DataBinding.DataSource = PgDataSource11
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = PgDataSource12
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 13
        Width = 132
      end
      object edMinValueRO: TcxTextEdit
        Left = 78
        Top = 41
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 14
        Width = 72
      end
      object edMaxValueRO: TcxTextEdit
        Left = 232
        Top = 41
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 15
        Width = 72
      end
      object cxLabel29: TcxLabel
        Left = 166
        Top = 41
        AutoSize = False
        Caption = 'Max. value:'
        Transparent = True
        Height = 19
        Width = 66
      end
      object cxLabel30: TcxLabel
        Left = 16
        Top = 41
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 74
      end
      object cxLabel31: TcxLabel
        Left = 16
        Top = 9
        AutoSize = False
        Caption = 'Category:'
        Transparent = True
        Height = 19
        Width = 56
      end
      object cxLabel33: TcxLabel
        Left = 16
        Top = 136
        AutoSize = False
        Caption = 'Confirmation'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 89
      end
      object cbCashierCanConfirmRO: TcxCheckBox
        Left = 16
        Top = 156
        Caption = 'Cashier can confirm ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 20
        Transparent = True
        Width = 146
      end
      object cbNeedsAuthorisationRO: TcxCheckBox
        Left = 16
        Top = 177
        Caption = 'Needs authorisation before transaction ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 21
        Transparent = True
        Width = 242
      end
      object cxLabel34: TcxLabel
        Left = 16
        Top = 206
        AutoSize = False
        Caption = 'Confirmation message:'
        Transparent = True
        Height = 19
        Width = 137
      end
      object mConfirmationMessageRO: TcxMemo
        Left = 16
        Top = 222
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 23
        Height = 33
        Width = 289
      end
      object cxLabel35: TcxLabel
        Left = 160
        Top = 156
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 60
      end
      object edConfirmationMinValueRO: TcxTextEdit
        Left = 224
        Top = 155
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 25
        Width = 81
      end
      object cxLabel36: TcxLabel
        Left = 335
        Top = 208
        AutoSize = False
        Caption = 'Users authorised to confirm'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 178
      end
      object cxGrid7: TcxGrid
        Left = 335
        Top = 226
        Width = 321
        Height = 75
        TabOrder = 27
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView5: TcxGridDBTableView
          DataController.DataSource = PgDataSource18
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView5user_name: TcxGridDBColumn
            DataBinding.FieldName = 'user_name'
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
      object edMoneyLaundryMinValueRO: TcxTextEdit
        Left = 224
        Top = 322
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 28
        Width = 81
      end
      object cbExportFileRO: TcxCheckBox
        Left = 16
        Top = 322
        Caption = 'Export file ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 29
        Transparent = True
        Width = 89
      end
      object cxLabel37: TcxLabel
        Left = 16
        Top = 303
        AutoSize = False
        Caption = 'Money laundry'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 89
      end
      object edSurveillanceMinValueRO: TcxTextEdit
        Left = 224
        Top = 280
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 31
        Width = 81
      end
      object cxLabel38: TcxLabel
        Left = 160
        Top = 280
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 60
      end
      object cbSendRO: TcxCheckBox
        Left = 16
        Top = 278
        Caption = 'Send ?'
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 33
        Transparent = True
        Width = 66
      end
      object cxLabel39: TcxLabel
        Left = 16
        Top = 261
        AutoSize = False
        Caption = 'Surveillance'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 89
      end
      object cxLabel40: TcxLabel
        Left = 160
        Top = 324
        AutoSize = False
        Caption = 'Min. value:'
        Transparent = True
        Height = 19
        Width = 60
      end
      object cxGrid8: TcxGrid
        Left = 17
        Top = 370
        Width = 288
        Height = 71
        TabOrder = 36
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Caramel'
        object cxGridDBTableView6: TcxGridDBTableView
          DataController.DataSource = PgDataSource19
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView6account_id: TcxGridDBColumn
            DataBinding.FieldName = 'account_id'
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView6
        end
      end
      object cxLabel41: TcxLabel
        Left = 17
        Top = 347
        AutoSize = False
        Caption = 'Multiple accounts'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 184
      end
      object cxLabel42: TcxLabel
        Left = 335
        Top = 304
        AutoSize = False
        Caption = 'Values list for transaction'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlack
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 166
      end
      object cxGrid9: TcxGrid
        Left = 335
        Top = 324
        Width = 321
        Height = 69
        TabOrder = 39
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView7: TcxGridDBTableView
          DataController.DataSource = PgDataSource15
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView7name: TcxGridDBColumn
            DataBinding.FieldName = 'name'
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBTableView7
        end
      end
      object cbDirectionRO: TcxComboBox
        Left = 296
        Top = 9
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items.Strings = (
          'In'
          'Out'
          'In <-> Out')
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 40
        Text = 'In'
        Width = 90
      end
      object cxLabel53: TcxLabel
        Left = 234
        Top = 9
        AutoSize = False
        Caption = 'Direction:'
        Transparent = True
        Height = 19
        Width = 56
      end
      object cbHowManyCopiesRO: TcxComboBox
        Left = 224
        Top = 114
        Properties.Alignment.Horz = taCenter
        Properties.Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 42
        Text = '1'
        Width = 80
      end
      object cxLabel54: TcxLabel
        Left = 335
        Top = 401
        AutoSize = False
        Caption = 'Fill from account:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 115
      end
      object cxLabel55: TcxLabel
        Left = 335
        Top = 426
        AutoSize = False
        Caption = 'Credit to account:'
        Transparent = True
        Visible = False
        Height = 19
        Width = 115
      end
      object cbLGFillFromAccountRO: TcxDBLookupComboBox
        Left = 456
        Top = 400
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource9
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListSource = PgDataSource10
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 45
        Visible = False
        Width = 145
      end
      object cbLGCreditToAccountRO: TcxDBLookupComboBox
        Left = 456
        Top = 426
        DataBinding.DataField = 'account_id'
        DataBinding.DataSource = PgDataSource13
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'account_id'
        Properties.ListColumns = <
          item
            FieldName = 'account_id'
          end
          item
            FieldName = 'name'
          end>
        Properties.ListSource = PgDataSource14
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 46
        Visible = False
        Width = 145
      end
      object cxGrid13: TcxGrid
        Left = 17
        Top = 368
        Width = 288
        Height = 73
        TabOrder = 47
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView11: TcxGridDBTableView
          DataController.DataSource = PgDataSource21
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'account_id'
          end
        end
        object cxGridLevel11: TcxGridLevel
          GridView = cxGridDBTableView11
        end
      end
      object cxButton9: TcxButton
        Left = 536
        Top = 9
        Width = 121
        Height = 25
        Caption = 'Print'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 48
      end
    end
    object tabCashdesks: TcxTabSheet
      Caption = '    Cashdesks    '
      ImageIndex = 5
      OnShow = tabCashdesksShow
      ExplicitTop = 29
      ExplicitHeight = 580
      DesignSize = (
        944
        581)
      object cxGrid15: TcxGrid
        Left = 439
        Top = 39
        Width = 490
        Height = 525
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 524
        object cxGridDBTableView13: TcxGridDBTableView
          DataController.DataSource = PgDataSource22
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView13id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView13cd_name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'cd_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel13: TcxGridLevel
          GridView = cxGridDBTableView13
        end
      end
      object cxLabel56: TcxLabel
        Left = 439
        Top = 16
        AutoSize = False
        Caption = 'All possible cashdesks:'
        Transparent = True
        Height = 17
        Width = 482
      end
      object cxButton10: TcxButton
        Left = 377
        Top = 39
        Width = 56
        Height = 25
        Caption = '<<'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 2
        OnClick = cxButton10Click
      end
      object cxButton11: TcxButton
        Left = 377
        Top = 66
        Width = 56
        Height = 25
        Caption = '>>'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        TabOrder = 3
        OnClick = cxButton11Click
      end
      object cxGrid16: TcxGrid
        Left = 18
        Top = 40
        Width = 353
        Height = 524
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        ExplicitHeight = 523
        object cxGridDBTableView14: TcxGridDBTableView
          DataController.DataSource = PgDataSource23
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBTableView14id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object cxGridDBTableView14id_cashdesk: TcxGridDBColumn
            DataBinding.FieldName = 'id_cashdesk'
            Visible = False
          end
          object cxGridDBTableView14id_transaction: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'id_transaction'
            Visible = False
          end
          object cxGridDBTableView14cd_name: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'cd_name'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object cxGridLevel14: TcxGridLevel
          GridView = cxGridDBTableView14
        end
      end
      object cxLabel57: TcxLabel
        Left = 18
        Top = 17
        AutoSize = False
        Caption = 'Transaction cashdesks:'
        Transparent = True
        Height = 17
        Width = 353
      end
    end
  end
  object edOrder: TcxTextEdit
    Left = 72
    Top = 9
    Style.Color = 11206139
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 0
    OnExit = edOrderExit
    OnKeyPress = edOrderKeyPress
    Width = 153
  end
  object cxLabel1: TcxLabel
    Left = 9
    Top = 10
    AutoSize = False
    Caption = 'Order id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 19
    Width = 57
  end
  object cxLabel2: TcxLabel
    Left = 9
    Top = 35
    AutoSize = False
    Caption = 'Name:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 36
    Width = 43
    AnchorY = 53
  end
  object edName: TcxTextEdit
    Left = 72
    Top = 35
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Caramel'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Caramel'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Caramel'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Caramel'
    TabOrder = 1
    Width = 425
  end
  object btnAddTransaction: TcxButton
    Left = 758
    Top = 8
    Width = 123
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Add transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 5
    OnClick = btnAddTransactionClick
  end
  object btnCancel: TcxButton
    Left = 887
    Top = 8
    Width = 76
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 6
    OnClick = btnCancelClick
  end
  object btnModifyTransaction: TcxButton
    Left = 758
    Top = 7
    Width = 123
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Modify transaction'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 7
    OnClick = btnModifyTransactionClick
  end
  object edId: TcxTextEdit
    Left = 665
    Top = 10
    Enabled = False
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 8
    Visible = False
    Width = 33
  end
  object cxLabel43: TcxLabel
    Left = 640
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
    Visible = False
    Height = 19
    Width = 19
  end
  object PgTable2: TPgTable
    TableName = 'tbl_accounts'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Left = 384
    Top = 40
  end
  object PgTable3: TPgTable
    TableName = 'tbl_accounts'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Left = 448
    Top = 48
  end
  object PgTable4: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 568
    Top = 85
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgTable2
    Left = 336
    Top = 48
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgTable3
    Left = 512
    Top = 48
  end
  object PgDataSource4: TPgDataSource
    DataSet = PgTable4
    Left = 616
    Top = 93
  end
  object PgTable5: TPgTable
    TableName = 'tbl_accounts'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Left = 416
  end
  object PgTable6: TPgTable
    TableName = 'tbl_accounts'
    OrderFields = 'name'
    Connection = frmDatabase.KivosConnection
    Left = 456
    Top = 8
  end
  object PgTable7: TPgTable
    TableName = 'tbl_accounts'
    Connection = frmDatabase.KivosConnection
    Left = 552
    Top = 37
  end
  object PgDataSource5: TPgDataSource
    DataSet = PgTable5
    Left = 296
    Top = 8
  end
  object PgDataSource6: TPgDataSource
    DataSet = PgTable6
    Left = 512
    Top = 8
  end
  object PgDataSource7: TPgDataSource
    DataSet = PgTable7
    Left = 624
    Top = 45
  end
  object PgTable1: TPgTable
    TableName = 'tbl_currencies'
    Connection = frmDatabase.KivosConnection
    Left = 184
    Top = 32
  end
  object PgTable8: TPgTable
    TableName = 'tbl_currencies'
    Connection = frmDatabase.KivosConnection
    Left = 184
    Top = 8
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 320
  end
  object PgDataSource8: TPgDataSource
    DataSet = PgTable8
    Left = 272
    Top = 48
  end
  object PgDataSource11: TPgDataSource
    DataSet = PgTable11
    Left = 240
    Top = 72
  end
  object PgTable11: TPgTable
    TableName = 'tbl_categories'
    Connection = frmDatabase.KivosConnection
    Left = 184
    Top = 96
  end
  object PgTable12: TPgTable
    TableName = 'tbl_categories'
    Connection = frmDatabase.KivosConnection
    Left = 184
    Top = 80
  end
  object PgDataSource12: TPgDataSource
    DataSet = PgTable12
    Left = 328
    Top = 80
  end
  object PgDataSource10: TPgDataSource
    DataSet = PgQuery1
    Left = 568
    Top = 440
  end
  object PgDataSource9: TPgDataSource
    DataSet = PgQuery2
    Left = 360
    Top = 448
  end
  object PgDataSource15: TPgDataSource
    DataSet = PgQuery5
    Left = 160
    Top = 328
  end
  object PgDataSource16: TPgDataSource
    DataSet = PgQuery10
    Left = 704
    Top = 328
  end
  object PgTable17: TPgTable
    TableName = 'tbl_users'
    Connection = frmDatabase.KivosConnection
    Left = 344
    Top = 416
  end
  object PgDataSource17: TPgDataSource
    DataSet = PgTable17
    Left = 344
    Top = 384
  end
  object PgDataSource18: TPgDataSource
    DataSet = PgQuery7
    Left = 88
    Top = 384
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 24
    Top = 72
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_lg = 1')
    Left = 224
    Top = 456
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_lg = 1')
    Left = 416
    Top = 424
  end
  object PgQuery3: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_lg = 1')
    Left = 264
    Top = 520
  end
  object PgQuery4: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_accounts where is_lg = 1')
    Left = 368
    Top = 536
  end
  object PgDataSource13: TPgDataSource
    DataSet = PgQuery3
    Left = 392
    Top = 560
  end
  object PgDataSource14: TPgDataSource
    DataSet = PgQuery4
    Left = 616
    Top = 552
  end
  object PgQuery5: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tv.*, v.name,tbl_categories.name as category'
      'from tbl_transactions_values as tv, tbl_values as v'
      
        'left outer join tbl_categories on tbl_categories.id=v.id_categor' +
        'y'
      ' where tv.id_value = v.id')
    Left = 80
    Top = 272
  end
  object PgQuery6: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_transactions')
    Left = 88
  end
  object PgQuery7: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tu.*, u.user_name'
      'from tbl_transactions_users as tu, tbl_users as u'
      'where tu.id_user = u.id')
    Left = 88
    Top = 424
  end
  object PgDataSource19: TPgDataSource
    DataSet = PgQuery8
    Left = 48
    Top = 536
  end
  object PgDataSource20: TPgDataSource
    DataSet = PgQuery13
    Left = 704
    Top = 488
  end
  object PgQuery8: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tam.*, a.name '
      'from tbl_transactions_accounts_manual as tam'
      'left join tbl_accounts as a on a.account_id = tam.account_id')
    Left = 112
    Top = 568
  end
  object PgQuery9: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_transactions_accounts_fixed')
    Left = 120
    Top = 496
  end
  object PgDataSource21: TPgDataSource
    DataSet = PgQuery9
    Left = 536
    Top = 560
  end
  object PgQuery10: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      'v.id,'
      'v.name as value_name,'
      'v.multiplier as value_multiplier, '
      'c.name as c_name, '
      'u.name as unit_name, '
      'curr.symbol,'
      'v.active'
      
        'from tbl_values as v, tbl_categories as c, tbl_units as u, tbl_c' +
        'urrencies as curr'
      'where'
      'v.id_category = c.id and'
      'v.id_unit = u.id and'
      'v.id_currency = curr.id and'
      'v.is_system_value = 0 and v.id not in ('
      
        'select id_value from tbl_transactions_values where id_transactio' +
        'n=:idTrans'
      ')')
    Left = 808
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'idTrans'
        Value = '0'
      end>
  end
  object PgQuery11: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd')
    Left = 584
    Top = 336
  end
  object PgDataSource22: TPgDataSource
    DataSet = PgQuery11
    Left = 592
    Top = 232
  end
  object PgQuery12: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select t.*, c.cd_name from tbl_cd_transactions as t'
      'left join tbl_cd as c on t.id_cashdesk = c.id')
    Left = 232
    Top = 384
  end
  object PgDataSource23: TPgDataSource
    DataSet = PgQuery12
    Left = 312
    Top = 296
  end
  object PgQuery13: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'SELECT * FROM tbl_accounts'
      'where ((account_id not in '
      
        '(select account_id from tbl_transactions_accounts_fixed where id' +
        '_transaction=:idTrans)'
      ') and ( account_id not in ('
      
        '     select account_id from tbl_transactions_accounts_manual whe' +
        're id_transaction=:idTrans)'
      ''
      '))')
    Left = 816
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'idTrans'
        Value = '0'
      end>
  end
end
