inherited ListOfCurrenciesExchangeRatesFrame: TListOfCurrenciesExchangeRatesFrame
  Width = 836
  Height = 553
  ExplicitWidth = 836
  ExplicitHeight = 553
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 836
    Height = 521
    ActivePage = TabSheet_Actual
    Align = alClient
    TabOrder = 0
    object TabSheet_Actual: TTabSheet
      Caption = 'Actual exchange rate'
      object cxGrid_Actual: TcxGrid
        Left = 0
        Top = 41
        Width = 828
        Height = 452
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Actual
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGrid_ActualDBTableView1: TcxGridDBTableView
          DataController.DataSource = PgDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGrid_ActualDBTableView1id: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'id'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid_ActualDBTableView1name: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.CellMerging = True
            SortIndex = 0
            SortOrder = soAscending
            Width = 120
          end
          object cxGrid_ActualDBTableView1valid_from: TcxGridDBColumn
            Caption = 'Date from'
            DataBinding.FieldName = 'valid_from'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 1
            SortOrder = soDescending
          end
          object cxGrid_ActualDBTableView1valid_to: TcxGridDBColumn
            Caption = 'Valid to'
            DataBinding.FieldName = 'valid_to'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid_ActualDBTableView1buying: TcxGridDBColumn
            Caption = 'Buying rate'
            DataBinding.FieldName = 'buying'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.0000'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid_ActualDBTableView1selling: TcxGridDBColumn
            Caption = 'Selling rate'
            DataBinding.FieldName = 'selling'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.0000'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGrid_ActualDBTableView1_Symbol: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol_curr'
            Options.Focusing = False
          end
        end
        object cxGrid_ActualLevel1: TcxGridLevel
          GridView = cxGrid_ActualDBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 828
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 15329769
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          828
          41)
        object cxButton3: TcxButton
          Left = 875
          Top = 3
          Width = 82
          Height = 28
          Anchors = [akLeft, akBottom]
          Caption = 'Print quietly'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          TabOrder = 0
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object btnModifyCurrencyExchangeRate: TcxButton
          Left = 10
          Top = 6
          Width = 122
          Height = 28
          Caption = 'Modify'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
          OnClick = btnModifyCurrencyExchangeRateClick
        end
        object cxLabel_PadingTransaction: TcxLabel
          Left = 138
          Top = 5
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'There are pending transaction in one of cashdesks'
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clSilver
          Style.BorderStyle = ebsSingle
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -20
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clMaroon
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Height = 30
          Width = 624
          AnchorX = 450
        end
      end
    end
    object TabSheet_Hist: TTabSheet
      Caption = 'Historical exchange rate'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid_Historical: TcxGrid
        Left = 0
        Top = 34
        Width = 828
        Height = 459
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu_Historical
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Foggy'
        object cxGridDBTableView_Hist: TcxGridDBTableView
          DataController.DataSource = PgDataSource_Hist
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Id'
            DataBinding.FieldName = 'id'
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.CellMerging = True
            SortIndex = 0
            SortOrder = soAscending
            Width = 120
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Date from'
            DataBinding.FieldName = 'valid_from'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            SortIndex = 1
            SortOrder = soDescending
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Valid to'
            DataBinding.FieldName = 'valid_to'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Buying rate'
            DataBinding.FieldName = 'buying'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.0000'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Selling rate'
            DataBinding.FieldName = 'selling'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.0000'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'symbol_curr'
            Options.Focusing = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView_Hist
        end
      end
      object Panel_: TPanel
        Left = 0
        Top = 0
        Width = 828
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        Color = 15329769
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          828
          34)
        object cxDateEdit_from: TcxDateEdit
          Left = 6
          Top = 7
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
          Left = 133
          Top = 7
          EditValue = 0d
          TabOrder = 1
          Width = 121
        end
        object cxButton_Refresh: TcxButton
          Left = 514
          Top = 5
          Width = 99
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Refresh'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = cxButton_RefreshClick
        end
        object cxButton2: TcxButton
          Left = 875
          Top = -4
          Width = 82
          Height = 28
          Anchors = [akLeft, akBottom]
          Caption = 'Print quietly'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          TabOrder = 3
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object cxDateEdit_To: TcxDateEdit
          Left = 262
          Top = 7
          EditValue = 40909d
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.InputKind = ikRegExpr
          Properties.MinDate = 40909.000000000000000000
          TabOrder = 4
          Width = 121
        end
        object cxTimeEdit_To: TcxTimeEdit
          Left = 389
          Top = 7
          EditValue = 0d
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cxButton_Print: TcxButton
      Left = 14
      Top = 5
      Width = 63
      Height = 24
      Caption = 'Print'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = cxButton_PrintClick
    end
  end
  object PgTable1: TPgTable
    TableName = 'tbl_currencies_exchange_rates'
    Connection = frmDatabase.KivosConnection
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 552
    Top = 232
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery1
    Left = 536
    Top = 144
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
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
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 304
    Top = 136
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cer.*, c.name, c.symbol as SYMBOL_CURR '
      'from tbl_currencies_exchange_rates as cer, tbl_currencies as c'
      'where c.id = cer.id_currency'
      
        'and c.id not in (Select coalesce(id_currency,0) from tbl_paramet' +
        'res)')
    AfterOpen = PgQuery1AfterOpen
    Left = 576
    Top = 344
  end
  object PgQuery_Hist: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cer.*, c.name, c.symbol as SYMBOL_CURR '
      
        'from tbl_currencies_exchange_rates_hist as cer, tbl_currencies a' +
        's c'
      'where c.id = cer.id_currency and cer.id_currency=-10000'
      'order by c.symbol')
    Left = 688
    Top = 288
  end
  object PgDataSource_Hist: TPgDataSource
    DataSet = PgQuery_Hist
    Left = 712
    Top = 184
  end
  object PopupMenu_Actual: TPopupMenu
    Left = 96
    Top = 240
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
  object PopupMenu_Historical: TPopupMenu
    Left = 216
    Top = 240
    object Exporttoexcel2: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel2Click
    end
  end
end
