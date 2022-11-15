inherited ReportCurrencyHistPreview: TReportCurrencyHistPreview
  object Report: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41240.844745208300000000
    ReportOptions.LastChange = 41240.874813784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
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
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object MainPage: TfrxReportPage
      PaperWidth = 120.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        object Memo1: TfrxMemoView
          Top = 11.338590000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haCenter
          Memo.UTF8W = (
            'Exchange currency historical')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 377.953000000000000000
        Condition = 'Print."symbol_curr"'
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'symbol_curr'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Print."symbol_curr"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 86.929190000000000000
        Top = 181.417440000000000000
        Width = 377.953000000000000000
        DataSet = frxDBDataset_print
        DataSetName = 'Print'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Top = 11.338590000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'buying'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."buying"]')
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Buying')
        end
        object Memo5: TfrxMemoView
          Left = 158.740260000000000000
          Top = 11.338590000000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Selling')
        end
        object Memo6: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'selling'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."selling"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'From')
        end
        object Memo8: TfrxMemoView
          Left = 45.354360000000000000
          Top = 34.015770000000010000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valid_from'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."valid_from"]')
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'To')
        end
        object Memo10: TfrxMemoView
          Left = 45.354360000000000000
          Top = 52.913420000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valid_to'
          DataSet = frxDBDataset_print
          DataSetName = 'Print'
          Memo.UTF8W = (
            '[Print."valid_to"]')
        end
        object Line1: TfrxLineView
          Top = 75.590600000000000000
          Width = 377.953000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
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
      
        'select c.symbol as SYMBOL_CURR, cer.buying, cer.selling, cer.val' +
        'id_from, cer.valid_to '
      
        'from tbl_currencies_exchange_rates_hist as cer, tbl_currencies a' +
        's c'
      'where c.id = cer.id_currency '
      'order by c.symbol , cer.valid_from desc, cer.valid_to desc')
    Active = True
    Left = 256
    Top = 176
  end
end
