inherited ReportCurrency: TReportCurrency
  inherited CustomPreview: TfrxPreview
    ExplicitLeft = -3
    ExplicitTop = 417
  end
  inherited frxGradientObject1: TfrxGradientObject
    Left = 640
    Top = 168
  end
  object frxDBDataset_print: TfrxDBDataset
    UserName = 'Print'
    CloseDataSource = False
    DataSet = PgQuery_pRINT
    BCDToCurrency = False
    Left = 256
    Top = 112
  end
  object PgQuery_pRINT: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select cer.buying, c.name, c.symbol as SYMBOL_CURR '
      'from tbl_currencies_exchange_rates as cer, tbl_currencies as c'
      'where c.id = cer.id_currency'
      'order by c.symbol')
    Active = True
    Left = 256
    Top = 176
  end
  object Report: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41240.707702199100000000
    ReportOptions.LastChange = 41240.747327581020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 144
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset_print
        DataSetName = 'Print'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageMain: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 302.362400000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Exchange currency')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000010000
        Width = 302.362400000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Time]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000010000
        Top = 151.181200000000000000
        Width = 302.362400000000000000
        DataSet = frxDBDataset_print
        DataSetName = 'Print'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000017000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'symbol_curr'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."symbol_curr"]')
        end
        object Memo6: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559059999999988000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'buying'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."buying"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 245.669450000000000000
        Width = 302.362400000000000000
      end
    end
  end
end
