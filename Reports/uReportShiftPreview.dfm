inherited ReportShiftPreview: TReportShiftPreview
  object frxDBDataset_Shift: TfrxDBDataset
    UserName = 'Shift'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 312
    Top = 256
  end
  object frxDBDataset_Values: TfrxDBDataset
    UserName = 'Values'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 312
    Top = 200
  end
  object frxDBDataset_Balance: TfrxDBDataset
    UserName = 'Balance'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 504
    Top = 264
  end
  object Report: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = CustomPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40418.809641562500000000
    ReportOptions.LastChange = 41155.794076701400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnProgressStart = ReportProgressStart
    OnProgress = ReportProgress
    OnProgressStop = ReportProgressStop
    Left = 144
    Top = 216
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
      object BandValues: TfrxMasterData
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        DataSet = ReportTicket.frxDBDataset_Values
        DataSetName = 'Values'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 120.944960000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 16053492
          Highlight.Condition = '<Line> mod 2 = 0'
          ParentFont = False
        end
        object Valuesname: TfrxMemoView
          Left = 120.944960000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'name'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Values."name"]')
          ParentFont = False
        end
        object Valuesnr: TfrxMemoView
          Left = 207.874150000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nr'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '#,##0;-#,##0;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."nr"]')
          ParentFont = False
        end
        object Valuesunit: TfrxMemoView
          Left = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'unit'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."unit"]')
          ParentFont = False
        end
        object Valuesmult: TfrxMemoView
          Left = 351.496290000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'mult'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."mult"]')
          ParentFont = False
        end
        object Valuesamount: TfrxMemoView
          Left = 408.189240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'amount'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."amount"]')
          ParentFont = False
        end
        object Valuesmoney: TfrxMemoView
          Left = 521.575140000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'money'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."money"]')
          ParentFont = False
        end
        object Valueschange: TfrxMemoView
          Left = 566.929500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'change'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."change"]')
          ParentFont = False
        end
        object Valuesprice: TfrxMemoView
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'price'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Values."price"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shiftoperation: TfrxMemoView
          Top = 15.118120000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[IIF(<Shift."operation">='#39'O'#39','#39'Open Shift'#39','#39'Close Shift'#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Shift start and end time:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shiftdate_start: TfrxMemoView
          Left = 215.433210000000000000
          Top = 56.692949999999990000
          Width = 234.330860000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'date_start'
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Shift."date_start"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shiftuser_name: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000000000
          Width = 366.614410000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cashier: [Shift."user_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shiftgdate: TfrxMemoView
          Left = 563.149970000000000000
          Top = 15.118120000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'gdate'
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Shift."gdate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shiftacc_name: TfrxMemoView
          Left = 464.882190000000000000
          Top = 18.897650000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'acc_name'
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Shift."acc_name"]')
          ParentFont = False
        end
        object Shiftdate_end: TfrxMemoView
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'date_end'
          DataSet = ReportTicket.frxDBDataset_Shift
          DataSetName = 'Shift'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Shift."date_end"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object BandBalance: TfrxMasterData
        Height = 22.677165350000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSet = ReportTicket.frxDBDataset_Balance
        DataSetName = 'Balance'
        RowCount = 0
        object BGBal: TfrxMemoView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 16053492
          Highlight.Condition = '<Line> mod 2 = 0'
          ParentFont = False
        end
        object Balancemoney: TfrxMemoView
          Left = 207.874150000000000000
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'money'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."money"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balancecat: TfrxMemoView
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'cat'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Balance."cat"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object Balanceamount1: TfrxMemoView
          Left = 132.283550000000000000
          Width = 75.590600000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'amount'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balancechange: TfrxMemoView
          Left = 245.669450000000000000
          Width = 37.795300000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'change'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."change"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balanceprice: TfrxMemoView
          Left = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'price'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."price"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balanceamount_c: TfrxMemoView
          Left = 377.953000000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'amount_c'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."amount_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balanceprice_c: TfrxMemoView
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'price_c'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."price_c"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balanceamount_diff: TfrxMemoView
          Left = 551.811380000000000000
          Width = 94.488250000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'amount_diff'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."amount_diff"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Balanceprice_diff: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 22.677165350000000000
          ShowHint = False
          DataField = 'price_diff'
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Balance."price_diff"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 27.212598425196900000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        Condition = 'Values."cat"'
        object Gradient1: TfrxGradientView
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BeginColor = 16641768
          EndColor = clWhite
          Style = gsHorizontal
          Color = 16709363
        end
        object Valuescat: TfrxMemoView
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cat'
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Values."cat"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 548.031850000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Values."price">,BandValues)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 90.708720000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 514.016080000000000000
          Top = 7.559060000000045000
          Width = 188.976500000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D6167652E3A0000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC0001108005902C803012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F5CF
            1878CB4AF04E8ADA96A921F98EC8604E5E67C676A8FE64F03F2AF9A7C53F1ABC
            5BE2395D2DAECE936478586CDB6B63FDA93EF1FC303DAA97C59F154DE29F1EDF
            3F984D9D948D6B6C99E02A9C16FF0081104E7D31E95E9DF05BE16D83E91078A3
            5DB58EE66B8F9ECEDE51B9234078720F058F51E8307A9E003C66D7C39E2DF13E
            2EE0D2F56D4430E2E0C4EE0FFC0CF1FAD4CFE14F1AE84C66FEC5D6ECF8C99638
            2451FF007D28C7AD7DAA000000303DA96803E35D27E2A78DF43755875EBA9510
            E0C5767CE1F4F9F247E0457D13F09FC49E23F17E8371AE6B9F67482594456914
            116C184E19F249272DC75FE1353FC48F87363E37D0E54B7B7B4835952AD05E3A
            ED239190C546482B91839E706BAAD1348B6D0743B2D26D0620B485625F5381C9
            3EE4E4FE34016E79E1B5B796E2E258E182242F249230554503249278000EF589
            FF0009D7843FE86BD0FF00F06317FF00155BB2469346F1C88AE8E0AB2B0C8607
            A823BD7C1FA922A6A97688A15566700018006E3C0A00FB4FFE13AF087FD0D7A1
            FF00E0C62FFE2A8FF84EBC21FF00435E87FF008318BFF8AAF0CFF866ED7FFE83
            7A67FDF327F854371FB38F8991336FAAE932B77576913F2F90D007D23697D697
            F1196CEEA0B88C1C6F8640E33F51562BE27BEB2F13FC37F137932493E9BA9440
            48AF0C9C3A13C10470CA70783EE08AFAC7E1FF0089CF8C3C15A7EB12284B8914
            A4EABD048A4AB63D8E33F8D0074F4C7748A369246088A0966638007A9A7D73DE
            38F10C1E16F06EA5AACEAAFE5425638DB189246F9557E849E7DB3400BFF09D78
            43FE86BD0FFF0006317FF155A7A6EB1A66B30BCDA5EA3697D1236C692D675954
            363382549E79E95F0B4767732DA4D771C2ED6F032ACB201C216CEDCFA6769FCA
            BE82FD9D3C4904BA66A1E1B90225CC2E6EA220006443856CFAE0E3FEFAF6A00F
            74A28A280312EBC61E18B2B992DAEFC47A44171136D92296FA34643DC105B20D
            58D37C45A26B333C5A5EB1A7DF488BB9D2D6E9252A3A6485278AF9A7E3FDBC30
            7C49061892332D947249B140DEDB9C6E3EA781CD731F0FBC7577E03F108BF863
            135ACC0477501EAE99CF07B11D45007DA1505DDE5AE9F6B25D5EDCC36D6D18CB
            CD3384451EEC78155745D6B4FF0010E9306A9A5DC2CF693AE51D7B7A823B11D0
            8AB7736B05EDB496D750A4D04ABB5E391432B0F420D0062FFC275E10FF00A1AF
            43FF00C18C5FFC557415F17FC31B682EBE2568305C429344D7237248A194E012
            320FB8AFB428030A6F1AF856DE79219BC4DA3472C6C51D1EFE256560704105B8
            34CFF84EBC21FF00435E87FF008318BFF8AAF9BBE3B5ADBDAFC4DB816F047109
            2DA291C46A17731CE58E3B9F5A93C25F04F57F177862CF5DB5D52C6086EB7ED8
            E50FB976BB21CE07AA9A00FA37FE13AF087FD0D7A1FF00E0C62FFE2AB56C753B
            0D4E2F374FBEB6BB8B83BEDE559073EE09AF9CA7FD9C7C4CAA3C8D5F4890F70E
            D22FF2435C6EBBE10F187C33D420BD9C4B664B621BEB3989427AE370E474E840
            CE3BD007D9545798FC21F896FE37D3A5B0D4CA2EB366819D9400278FA6F03B1C
            E01038E46319C0F4EA0028A28A00CCD775ED37C35A3CFAA6AB72B05AC23963D5
            8F6551DC9F4AF9C3C5DF1E7C43AC5C490E827FB26C338560034EE3D4B1C85FA2
            FE66A3F8EFE2D9B5AF19BE8B148458E9784DA0F0F311966FC33B7F03EB5A7F05
            BE16D9F8860FF84935E87CEB1490A5ADAB7DD9987059BD541E31DC839E060807
            9AC365E2DF1848648A0D67583BB993124E01F76E71F8D3EE7C1DE2FD108B89B4
            2D5AD768CF9CB6EE02FF00C080C0AFB5A1862B7852182248A241854450AAA3D0
            01D2A4A00F8BF46F89BE32D09D3EC9AFDDBC6A7FD55CBF9C98F4C3E703E98AFA
            07E1478F7C4BE3CF3EE350D3ECEDF4FB58FCB7B88830334C482028270005CE7A
            FDE15A3F10FE18693E33D2A6682D6DEDB5918686F02ED24E790F81F30233D6BA
            7F0D787ACBC2DE1EB3D1AC1710DBA052D8C191BF89CFB9393401AF451515CDC4
            3696D2DCDC48B1C30A34923B745503249FC2803227F19F85AD6E25B7B8F12E8F
            0CF139492392FA256460704105B2083D4559D37C45A26B333C5A5EB1A7DF488B
            B9D2D6E9252A3A6485278AF8D7C457D378BFC61AB6A767687FD26596E4451AF2
            B1A82C49C770AB927D735DB7C04F12C3A2F8E1F4EB908B1EAB18852420656407
            2A33D81E463B92BE9401F53D14514005606A3E37F0B691298AFF00C41A6C128E
            B1B5C2971F550722BC47E387C48D48EBB3F85749BA92DAD2D942DDC9136D699C
            80DB72390A01031DCE73581E13F819E21F1368F06AB2DDDA69F6B72824804B97
            7753C86DA38008E4739F6A00FA12DFE23F832EA511C5E27D2F71E9BEE1533F8B
            62BA48668AE22596195258D8655D18303F422BE6EBCFD9C3C411425ACF58D3A7
            71FC12078F3F43835C73C5E3CF853AB2A06BBD35E463B76309209FF0E55BB75E
            47B5007D8D58D7BE2CF0E69978F697FE20D2AD2EA3C6F867BC8E375C80465490
            47041FC699E10875983C2B603C41766E75578FCCB8728ABB598E76E1401F2E76
            FE15E43FB4959DB25A6877696F12DCC92CAAF28401D8055C027A9A00F61B2F16
            787353BC4B4B0F10695777526764305E4723B601270A0927804FE15A93CF0DAD
            BCB71712C70C112179249182AA28192493C00077AF0AFD9B6CED9ED35CBB7B78
            9AE639625494A02EA0AB6403D457BBC91A4D1BC7222BA382ACAC32181EA08EF4
            0185FF0009D7843FE86BD0FF00F06317FF00155AD63A8596A968B77A7DE5BDDD
            B392166B795644241C1C32E47515F0B6A28B1EA7771A2854599C281D000C78AF
            61F82DF14A3D11A1F0B6B4E91E9F239FB2DD31C08598E76B7FB24F7EC4F3C740
            0FA4AB3B53D7748D17CAFED5D56C6C3CECF97F6AB848B7E319C6E2338C8CFD45
            6875AF2EF8FB6F049F0D649E48637961B98BCB7650593270707B64500779A7F8
            A3C3FAB5D7D974DD774CBCB820B7956F771C8F81D4E14935AD5F3E7ECD36F0BD
            C7892E1A1469A35B65490A82CA1BCDDC01EA01C0CFD057BF5C5C456B6F2DC4F2
            2C70C485E476380AA064927E94012D616A7E33F0CE8F218F51D7B4EB794758DE
            E1778FF80E735F387C46F8C5AAF8A2F66B2D1EE66B0D15495558CEC9271FDE72
            3900FF0077D3AE6AB7857E0A78AFC4D6B15EBA43A6D9C8372497648775EC5500
            CFE78A00FA2E1F895E0A9E4D89E27D301F57B8083F33815D2DBDC41770ACD6F3
            47344DCABC6C194FD08AF9B750FD9CFC456F6C64B1D574FBB9073E536E8C9FA1
            208CFD71F5AE06CF54F15FC37D7DA28E4BAD32F226064B77FB920FF697EEB03E
            BF91A00FB568AE3BE1CF8F6D7C7BE1FF00B62AAC37F0111DDDBA9CEC6ECC3BED
            3CE3E8476AEC6800A28A280286B1A459EBBA54FA6DFA3BDB4C06F5491A33C10C
            30CA411C815F125EDF5F417F710A5FDD6C8E5645CCCD9C0247AD7DD55F06EA9F
            F217BDFF00AEEFFF00A11A00D6834CF17DCC093C165AE4B0C8A19248E2959581
            E841030453BFB1BC6BFF0040DF107FDF89BFC2BEB3F875FF0024DFC39FF60F87
            FF004115D3D007C57FDBBE38F0D4C923EA1AEE9EC4F027795037E0DC1AF55F86
            DF1CEFAEF54B5D17C55E5CA2E1C4715FA2842AE4E007038209E3200C77CF247A
            7FC4CBFD0ED3C07ABC5AE4B008E6B6758A27237BC983B3603D5B760823A633DA
            BE39B3B6B8BCBE82D6D519EE2691638957A9627000FC6803EF6ACED4F5DD2345
            F2BFB5755B1B0F3B3E5FDAAE122DF8C671B88CE3233F5157A30CB122BB6E70A0
            337A9F5AF2AFDA0E089FE1D4733C68D2C77B18472B92B90D9C1ED9A00EE3FE13
            AF087FD0D7A1FF00E0C62FFE2A8FF84EBC21FF00435E87FF008318BFF8AAF93F
            C07E03BDF1F6A5756565776F6CD6F0F9ACD36704640C703DEBBDFF00866ED7FF
            00E837A67FDF327F85007B9FFC277E101FF335687FF8308BFF008AAB1E1EF136
            95E29B6BABAD1EE7ED16F6D72D6AF281F2B3A852769EE30C39AF036FD9BFC41B
            4EDD6B4C2D8E0112019FFBE6BD3FE0E785356F07785B51D2F5785239FF00B4E4
            911A370CB22797180EA7AE0953D403ED401DD6A1A9D86936DF69D4AFADACADF7
            05F36E6558D727A0CB1033595FF09D7843FE86BD0FFF0006317FF1554FE265B4
            175F0DBC402789240965248A1D73B59549047A106BE46F0B787E7F157892CF44
            B69A3866BA6655924CED1852DCE3E9401F62FF00C275E10FFA1AF43FFC18C5FF
            00C553A3F1B7852690471789F45773D156FE224FFE3D5E15FF000CDDAFFF00D0
            6F4CFF00BE64FF000AA77FFB3BF8B6DA267B5BCD2EF368C88D6574763E8372E3
            F322803E9B8A58E78D6486449236E4321C83F435257C5BE1AF15F883E1DF889B
            C979A1304C52EEC2462124C1C32B2F4CF1D7A8AFB2ED2E63BDB382EA124C5346
            B2213DD48C8FD0D00665D78BFC33617525ADE788B49B7B88CE248A6BD8D1D0FA
            105B22A5D3BC49A16B170D6FA5EB7A75F4EA85DA3B5BA49182820648524E3247
            3EE2BE72FDA1EDE183E21DAB451246D369B1C9215500BB79928C9F5380067D85
            719E03F1ADEF813C449A9DAC6B344EBE55CC0DFF002D23241201EC78041F6F4A
            00FB56A1BABAB6B1B692EAEEE22B7B78977492CAE11107A927802A9683AF69DE
            26D1E0D574AB859ED661C11D54F7561D88EE2AFCD0C5710BC33C492C4E30C8EA
            19587A107AD0061FFC275E10FF00A1AF43FF00C18C5FFC5515F28F82ECEDA4F8
            ADA55A4904725BFF006984F29D772901BA107AD1401C93BB48ECEEC5998E4927
            249AFB9FC3B14507863498600A214B385502F4DA1062BE3EF887E1D97C2FE39D
            534E910AC666696038FBD1392CA47E0707DC1AFA13E0AF8E6D3C43E13B6D1A79
            C2EABA6C42268D8E0C912F08EBEB81807DC7B8A00F4CB9768AD66917EF2A330F
            A815E13A47ED1D6F1E95026AFA3DC4D7EA312C96ECAA8C73D403D38C715EED3C
            665B69620402E85413EE2BCB342F809E15B5D1ADE1D6ADDEF75100F9D3C77122
            2B1C9E8011C018A00CAFF8692D17FE803A87FDFC4ADFF087C6287C67ACA69DA6
            78735120106698BA6C8549C6E6F6F6AE2BE2EFC33F0AF84FC13FDA5A3D8C90DD
            7DAA38F7B4EEFF00290D91862476AADFB35FFC8775DFFAF68FFF00423401F465
            7C1BAA7FC85EF7FEBBBFFE846BEF2AF83754FF0090BDEFFD777FFD08D007D4BF
            F0BEBC0BFF003F779FF80AD4C93E3E7819232CB3DF4840C855B5393F9902B0BF
            E19B745FFA0F6A1FF7ED2BCD3E287C2F97C013DA5C5B4F2DDE99723609DD4029
            20EAA71C72391F8FA50050F897E393F107C511DEDBDA3C16B0C420B789B05D86
            49C9C7724F419E82BE90F84DE1FBBF0D7C3AD3ACAFD0C776FBE79236EB1EF624
            29F7C633E8735E61FB3FC3E14BE9A78EE74D88F88ED4F9B14D3317DD1FAA29E1
            594F078CF23DF1F4350015F397ED0FE2B177AB59F862DE4CC5663ED17201FF00
            96AC3E507DC2927FE075EF9AEEB16DA06857DAB5D9FDC5A42D2B0CF2D81C01EE
            4F03EB5F116ABAADCEB3AD5DEAB7843DC5CCCD3499E992738FA76FA5007D1FF0
            F3E1C5B4FF0006A6D37508C2CFAE47F697723263C8CC27F00037D49AF07F0EEA
            D7FE00F1E5BDDCB1BC73E9F7262BA87B95C95917F2CE3DF06BAA4F8F7E358D15
            11F4E55500002D4600FCEB85F11EBF79E27D6E7D5EFD205BB9F1E6185362B103
            19C7AE00A00FB86D2EA0BEB386EEDA459209E35923753C32919047E153578FFC
            01F169D5FC2D2E837326EBAD2CFEEB279681BA7FDF2723E856BD82803E5AFDA1
            BFE4A443FF0060F8BFF427AD9D73E138D77E19683E22D02DC0D5134E89AE6DD3
            8FB4A841F301FDF1FAFD7AE37ED0DFF25221FF00B07C5FFA13D7BF7C3AFF0092
            6FE1CFFB07C3FF00A08A00F993E1A7C47BDF016B1B5F74DA45C38FB5DB771DB7
            A7A301F98E0F623EB7D3752B3D634E8350D3EE12E2D6750F1CA872187F8FB76A
            F12F8CDF09BED027F14F87ADC09402F7D671AFDFF59507AFF7877EBD739E0BE1
            5FC4FB8F046A42CAF9DE5D0AE1F32C606E30B1FE341FCC771EF40191F0A7FE4A
            9787FF00EBE7FF006535F6657C67F0A7FE4A9787FF00EBE7FF006535F665007C
            A7F1FF00FE4A749FF5E70FF5AF6DF827FF00248743FF00B78FFD1F257897C7FF
            00F929D27FD79C3FD6BDB7E09FFC921D0FFEDE3FF47C9401DFD731F10F49875B
            F87DAE59CA8AC7EC924B1EEECE80B29FCC0AE9EB94F891ACC3A17C3CD6EEA591
            519ED5E0873DE47055401DF939FA03401F32FC21D4A5D37E28688D1310B3CA6D
            E403F895D48FE783F857D8B5F1CFC22D3E5D47E2868691A922194DC391D9514B
            73F8803F1AFB1A800A28A2803E1DF18333F8DF5F6724B1D46E0927D7CC6AFAD3
            E182431FC32F0F0800D86CD09C7F78F2DFF8F66BE74F8D3E1B9740F8897B71E5
            916BA931BB85C0E096FBE3EA1B27F115DDFC0BF891656BA78F09EB1709014726
            C6691B0AC18E4C649E872491EB923B0C807BF514514005158DE24F14691E14D3
            1EFB57BE8AD9003B158E5E43E8ABD58FD3F4AE73E167C401E3BF0EB4973E5C7A
            ADAB6CBA8A3E0107EEB81E8471F506803BCAF25F8F7E2CFEC5F07AE8D6F262EF
            55251B079585705CFE3C2FD09F4AF59240049381EF5F1AFC4FF15FFC25FE3ABE
            BE8A4DF6509FB3DA7391E5AF71FEF1CB7E3401E9DFB3C784D24B4D4FC4779087
            5981B28030E0AF0643F43F28FC0D795F8E3C3B71E04F1E5D58DBBBA2C12ADC59
            4BDFCB27721CFA8E9F5535A9A17C62F14F86F44B5D274DFB047696CA5514DBE4
            F249249CF24924D62F8BFC73ABF8E27B59F585B532DB2B223C316C254E0E0F3C
            F3D3EA6803EB6F04789A2F1778434FD6232A249A3DB3A0FE0957871F9E71EC45
            7435F35FECF7E2DFECFD7AE7C357120106A00CD6F93D2651C8FF008128FF00C7
            47AD7D29401F267C6DF0DDFE91F102F7519A26365A8B09A09C2FCA4ED01949F5
            041E3D306A4F0A7C70F12F8674CB6D31E0B4D42CADD04710994ABA28E8A181E8
            071C83DABE87D575FD0AEFC570782B50B68EEA6BCB56B831CAAAD1ED04FCA41E
            E402471D0573FA9FC0CF036A2CCF1D85C58BB7536B70C07E01B701F950072163
            FB4A5AB1C6A1E1B9A21DDADEE83E7F02ABFCEBB0D27E21F807E20DC595A4CEA2
            F219D6E2DADB508F632CABF74A9C95279E809FA572BA87ECDBA5BA37F66EBF79
            0B7F08B989641F8EDDB5E23E2EF0ADF7833C47368F7EF1BCB180E92447E5753D
            08EE3E9FFEBA00FB7EBC2FF695FF00904787FF00EBBCDFFA0AD7A17C2CD6AEBC
            41F0DB47BFBD767B928D13C8DD5F63B206F7C85193EB9AF3DFDA57FE411E1FFF
            00AEF37FE82B4007ECD5FF00208F107FD7787FF416AF74AF0BFD9ABFE411E20F
            FAEF0FFE82D5EE9401F15787E18AE7E28E9704F1AC914BAD448E8C32194CC010
            7F0AE9BE2C7C2D9BC197CDA96991BCBA0CEDF29EA6D98FF037B7A1FC0F3D79CF
            0C7FC959D1FF00EC3907FE8F5AFB26FEC2D753B09EC6FADD2E2D6742924520C8
            606803C27E0D7C59C7D9FC2BE21B800711D8DE48DF944E7FF413F87A5765F1EB
            FE4975CFFD7CC3FF00A157887C51F86B75E05D57CFB70D2E8B72E7ECD3139319
            EBE5B7B8EC7B8FC6A6BEF89D71AFFC2D9FC31AC33497B0490B5B5CE0932A29E5
            5FDC0EFDC7BF500EDFF666FF0099A3FEDD3FF6B5773F1C353974EF85F7EB0B15
            6BB923B6247F749CB7E6148FC6B86FD99BFE668FFB74FF00DAD5DD7C6FD325D4
            BE17EA0D0A966B4923B92A3FBAAD863F8024FE1401E1DF04FC336FE24F1FC66F
            62125AD8426E9918655D810AA0FE2D9FF80D7D6D5F247C15F145B7867C7B1FDB
            A558AD2FA136AF231C2A3120A927B0CAE33DB757D6DD68016BCABE3C7862D756
            F02CBAC796A2FB4B2AE920E0B46CC15909F4E437D47B9AF55AF29F8F3E27B6D2
            7C0D268C2406FB5465458C72563560CCC7DB8DBF8FB5007977ECFDA8CB69F114
            D9AB1F2AF2D24475CF195C383F5E0FE66BEA7AF96BF67DD366BBF886D7AAA7C9
            B2B4919DBB65B0A07E3927F035F52D001451450015F06EA9FF00217BDFFAEEFF
            00FA11AFBCABE0DD53FE42F7BFF5DDFF00F423401B567E1EF1ADC59C3359691E
            2092D5D0344F0DB4C5194F42A40C11F4A9BFE118F1FF00FD00FC4DFF008093FF
            00857D57F0EBFE49BF873FEC1F0FFE822BA7A00F84F52D1757D2DF76ABA6DF59
            B39EB7503C658FFC080C9AF59F8217BE03B6D5605BC8A68BC46E76C135E30687
            71E311631863FED73CE01AFA1757B6D3EF349BA83568E192C1A26F3C4C06CD98
            E49CF4C75CF6AF85A5648EF1DAD9D822C84C4F9C1C03C1FAF4A00FBDEBCAFF00
            682FF9267FF6FD17F26AEE3C1DA8CFABF82F44D46E4E67B8B28A494FAB14193F
            89E6B87FDA0BFE499FFDBF45FC9A803C43E18F8FA0F87FAC5EDF4F6125E2DC5B
            8882A4810A9DC0E7907D2BD3FF00E1A574FF00FA16EEBFF0257FF89AE0FE0BF8
            3F45F18EBFA8DA6B76CD3C30DA89102CAC986DE07F091EB5ED5FF0A33C03FF00
            40A9BFF02E5FFE2A800F86FF001365F885AB6AC8BA7A59D9D9C50988172F2333
            16DC49E06381818FC79E3D1AB90F08FC3BD1FC13A9EA375A319A386F5235303B
            9709B33C8279E7777AEBE80398F88BFF0024DFC47FF60F9BFF004135F28FC3CD
            6ECBC39E3CD2B57D459D6D2D9DDA428BB8805180E3EA457D5DF117FE49BF88FF
            00EC1F37FE826BE4AF04787E1F1578CB4ED12E279208AED995A48C02CB842DC6
            7E9401F47FFC2FAF02FF00CFDDE7FE02B556BDFDA07C1B6F6CCF6C350BB971F2
            C6906DC9F72C401FAD647FC336E8BFF41ED43FEFDA578AF8EBC1F77E08F13DC6
            9573BA487EFDB4E570268CF43F5EA0FB8A008EF66D4FE2078E269ADAD375F6A9
            724A411F2173D067D00EA7D89AFB434CB3FECFD2ACECB7EFFB34090EEF5DAA06
            7F4AF3AF82907852E3C251EA1A1E9D15BEA20086F9989790483AFCC49214F500
            71F88AF50A00F987F68DFF00928561FF0060A8FF00F46CB5A57FF09D7C4BF0AF
            42D7B428157598EC94CD0AF1F6A519FF00C7C76F5E9E959BFB46FF00C942B0FF
            00B0547FFA365AF71F85FF00F24C7C3DFF005E6BFD6803E66F875F10B50F006B
            64E1E5D36670B79687DB8DCBE8E3F5E87D47D71A46AF63AEE976FA969B729716
            93AEE8E44EFEC7D08E841E95E3BF197E13FF006924DE27F0FC03ED88A5EF2D63
            5FF5C3BC8A07F1FA8EFF005EBE69F0BBE265D78175416F72CF368970FF00E910
            819319E9E627BF4C8EE3F0A00A5E08FF0092C5A57FD857FF006734537C07224D
            F173469636DC8FA98653EA0B1345007D25F123E1C5978FF4B45322DB6A76C0FD
            9AE76E47FB8DDCA9FD3AFA83F2FEB5E17F14781354592F6D6EEC6689B30DE424
            8427B149178FD735F6C53248D258DA39115D1860AB0C83401F2969BF1E3C6FA7
            C0914B73677C1780D756F96C7B952B9FE7535CFC7FF1B4F1958DB4EB73FDE8AD
            B247FDF448AFA16EBE1F783EF5D9E7F0CE96CEC72596D55493EE4014D83E1D78
            32DC831F85F4A38E9BED55FF00F4206803E51D43C45E31F1E5C2DADD5DEA3AB3
            EEDCB6D12165CFA88D0633C9E715EC9F06BE1A78A7C33AB1D6B54B81A7DBC919
            47B018779C60EDDE470A013BB839E31C735ED56D676D6517956B6F0C11FF0072
            240A3F2153D00472CB1C113CD33AC71A296777380A0724927A0AF84352757D52
            EDD1832B4CE4107208DC7915F774F043756F2DBDC451CD04A85248E450CAEA46
            0820F0411DAB13FE105F087FD0A9A1FF00E0BA2FFE268036EDEE21BAB78EE2DE
            5496191432488C19581E8411D6B37C4BE1EB2F14F87AF346BF5CC37085436326
            36FE171EE0E0D68DB5B41676D1DB5AC11C1044A1238A240AA8A3A00070054D40
            1F0FDBDDDFF81FC63E7595CC4D79A65D3209627DD1C9B490791D558647D0D7D7
            DE0EF19695E34D162BFD3AE10CBB079F6DB879903770C3AF5CE0F7A7BF81FC24
            EECEFE17D11998E4B1D3E2249F5FBB57B4CD0346D15A46D2B49B0B032802436B
            6C9117C74CED033D4D0078A7ED05E3581ED2DFC29A7DD248E64F36FC46C0ECDB
            F7233EF9F988ED81EB537ECF9E16D325D1750D72E96D6EAEA693ECEB1305730C
            639E41E858FE8A2BD6EEBC1FE18BDB992E6EFC39A44F712B6E92596C637673DC
            925724D5CD3344D2B4549134AD32CAC16420BADAC0B10623A13B40CD002FF62E
            95FF0040CB3FFBF0BFE15CC7C41F07693ADF81B54B516D676B2AC265867D8B18
            475E465BB038C1F626BB5A86EAD6DAFADA4B5BBB78AE2DE55DB2452A07471E84
            1E08A00F8C7E1F78A5FC1FE34B0D5727ECE1BCABA5F589B86FCB86FAA8AFB36D
            6EEDEFAD22BAB49E39EDE550F1CB1B065707A10475158DFF00082F843FE854D0
            FF00F05D17FF00135B56B6B6D636D1DADA5BC56F6F12ED8E28902220F4007005
            007CB7F1FEE60B8F890041347298ACA38E408C0EC70CF9538E8791C57BEFC32B
            BB6BBF86DA01B69E29845671C52796E1B63AA8CA9C7423D2B4AEBC1FE18BDB99
            2E6EFC39A44F712B6E92596C637673DC925724D5ED3B4AD3B47B76B7D2F4FB5B
            1819CBB476B0AC4A588009214019C01CFB0A00BB5F397C6CF85F0E9426F15E8C
            A91DA3C83ED96C30A236638DE9EC4F51D89CF4CE3E8DAAB7DA7D96A968D69A85
            9DBDDDB3905A1B889644241C8CAB64751401F1CFC32B982CFE24E833DCCD1C30
            A5C8DD248C1557208E49E9C9AFB42B9FFF008417C21FF42A687FF82E8BFF0089
            AE82803E4DF8EB776D79F13276B69E29963B78A3731B860AC339538EE3D299E1
            6F8D3E23F097872D343B0B2D2A4B5B5DFB1E78A42E773B39C90E07563DABE989
            BC15E15B89E49A6F0CE8D24B2317777B08999989C92495E4D33FE105F087FD0A
            9A1FFE0BA2FF00E26803C01BF68BF18329034FD1149EE209723F392B8FD6BC51
            E2EF893A9C36D70F717F203986CAD62F914F4C855FAFDE393CF5AFABFF00E105
            F087FD0A9A1FFE0BA2FF00E26B5ACB4EB1D363F2EC6CEDED53FBB044A83F2028
            03CE7E0FFC3393C13A7CDA8EAAA8759BC50ACAA4116F1F07667B9240271C703D
            327D428A2800A28A28039BF1AF82F4CF1C684FA6EA00A3A9DF6F70A3E685FD47
            A8F51DFF00235F2C78BFE197897C1B348D7962F7162A4EDBDB752F191EAD8E53
            E8D8FC6BECBA4EB401F16E8DF127C63A040B069DAFDDA42A30B1CBB66551D300
            38200F6157EE7E30F8FAEE131CBE229954F78A18A26FCD541AFA9B50F05785F5
            490C97BE1ED327908C191AD5371FF81633505A7C3EF07D8C824B7F0D696AE390
            CD6CAC41F6241A00F9334BF0EF8B3C757FE65ADADFEA72B1C35D4CCCCA3FDE91
            8E3BFAD7BEFC2EF8437DE09D45758BFD649BB78DA392D2D97F74CA474663CB10
            70780391DEBD6511224091A8545180AA3000A750079BFC64F1B41E17F075C594
            172ABAB6A086186356F9D11B21A4C7618C807D48F435E41F01BC3961ADF8CE6B
            DBF681D74F8B7C56D2104CAED900ED3D42804FB12B5F496A3E1BD0B58B85B8D5
            344D3AFA75408B25D5AA48C1412700B02719278F7349A7F85FC3FA4DD7DAB4DD
            0B4CB3B800AF9B6F691C6F83D46540340163FB174AFF00A0659FFDF85FF0A82E
            FC39A35ED9CF6B369768629A368DC08541C1183CE3DEB568A00F872FE29BC25E
            319E3B3BA579B4CBD3E4CE8D90C51BE56C8FA0AFB1FC27E27B1F16F872D756B1
            91184A83CD8D5B261931F3237A107F4E698FE07F093BB3BF85F44666392C74F8
            8927D7EED6969BA3E99A342F0E97A75A58C4EDBDA3B5816252D8C6485039E3AD
            007CC9F117C2BE3F93C5F7FE289748BD8D1E726DE5B47123431A9DA9F7092BF2
            A839E3AD47A37C78F19E90821BB7B5D491383F6B8B0E3FE04A47EB9AFAB2B235
            2F0BE81ACBEFD4F45D3EEDFF00BF3DB23B0FC48CD007805F7ED1DE219A12965A
            469D6CE7F8DCBC847D0640FCF35C3E9FA2F8B7E2978924B9559AFAE656027BC9
            46D8A218EE40C2803A28E7D057D4D6FF000E7C196AE1E3F0CE97B81C82F6EAFF
            00FA1035D2430436D12C50449146BC2A228503F014019BE19D06DFC31E1AB0D1
            6D58B4569104DE4637B7566C7B924FE35E35FB485F5A496BA259C7750BDD4534
            AD242AE0BA02AB82CBD467DEBDEEB1AF7C27E1CD4EF1EEEFFC3FA55DDD498DF3
            4F671C8ED8000CB1049E001F850078EFECDF7D691DAEB76725D429752CD13470
            B380EE02B64AAF538F6AF779658E085E69A448E28D4B3BB9C050392493D062B2
            ACBC27E1CD32F12EEC3C3FA55A5D479D9341671C6EB9041C30008E091F8D6A4F
            043756F2DBDC451CD04A85248E450CAEA460820F0411DA803E2DF0E5CC117C4D
            D26EE49A34B75D66191A5660142F9C09627A018E6BED54759103A3065619041C
            822B07FE105F087FD0A9A1FF00E0BA2FFE26B7511228D638D42228015546001E
            82802A6AFA458EBBA5DC699A95BA5C5A5C2ED9236FE63D08EA0F6AF903E22781
            2E3C05E22FB03CC27B49D4CB6B37F132671861D88E9E87F41F66D666A5E1DD13
            599925D5347D3EFA445DA8F756A92951D700B03C500787FECD57304773E23B67
            9A359E55B668E32C03385F377103BE3233F515EFF3431DC41243322BC5229474
            6190C08C107F0ACDD3FC2FE1FD26EBED5A6E85A659DC0057CDB7B48E37C1EA32
            A01AD6A00F957E22FC1BD5BC337B35F68B6D35FE8AC4B2F940BC900FEEB81C90
            3FBDF9E2A87857E33F8AFC2F691D909A1D42CE31848AF016283D1581071EC720
            7A57D7358BA97847C39AC49E66A3A169D752649F325B642DFF007D633401E01A
            97ED17E24BAB768AC34DD3EC9D863CD21A565F7192067EA0D707A7E8DE2CF88F
            AEC934315DEA5772B0F3AEA527647FEF31E1401D87E02BEADB7F873E0CB570F1
            F8674BDC0E417B757FFD081AE921821B6896282248A35E15114281F80A00E53E
            1E780ECFC05E1FFB144E26BC9C892EEE718F31BB01E8A3B7D49EF5D7D1450014
            5145004177776D636CF75777115BDBC632F2CAE1557EA4F02BE12D42449752BA
            9118323CCECA477058D7DD77D6367A9DA49677F6905DDB498DF0CF18911B0411
            953C1E403F85647FC20BE10FFA15343FFC1745FF00C4D007CA561F14BC69A5E9
            F6F6165AECB0DB5BC6238A3114642A8180395CD58FF85C3E3EFF00A18E6FFBF3
            17FF00135F52FF00C20BE10FFA15343FFC1745FF00C4D1FF00082F843FE854D0
            FF00F05D17FF0013401F20EB5E36F1378860F2356D6EF2E60EF1349843DF9518
            07F115ADE05F86BADF8DB508BCAB796DF4BDC0CD7D2210817B84CFDE6F61F8E2
            BEAEB6F087866CE4F32D7C3BA4C0FF00DE8ACA353F985AD90028000000E8076A
            0082C6CE0D3EC2DECAD9025BDBC4B14483F85540007E4057977ED09730C7F0F2
            281E68D6696F6331C6580660036481DF1919FAD7ACD676A7A1691AD795FDABA5
            58DFF939F2FED56E92ECCE338DC0E33819FA0A00F8EFC13E3AD53C07A85CDEE9
            7059CD25C45E538BA46650320F1B5979E2BB7FF868DF17FF00D03743FF00BF12
            FF00F1DAF7EFF8417C21FF0042A687FF0082E8BFF89A3FE105F087FD0A9A1FFE
            0BA2FF00E26803C07FE1A37C5FFF0040DD0FFEFC4BFF00C76BD2BE0CF8CF58F1
            AAEBF7DABCC84A4F108A18976C7102A7214124F6CF24D769FF00082F843FE854
            D0FF00F05D17FF001356B46F0CE8BE1E96EE4D234E86CBED8CAF32C036A12A30
            30BF7578F40280323E265D416BF0DBC406E2648849652469BD80DCECA4051EA4
            FA57CC9F096E21B5F8A3A0CB712A451899817760A326360393EA4815F5EEA1A6
            586AD6DF66D4AC6DAF6DF706F2AE62591723A1C302335991F827C2714A9247E1
            8D15244219596C220548E841DBD68037ABCFBE2F783AD3C55E0CB89D9E286FB4
            E469EDA790851C0F99093D03003F100D7A0D43756B6D7D6D25ADDDBC5716F2AE
            D9229503A38F420F045007C75F0DBC713F81BC5315E12CDA7CF88AF621FC499F
            BC07F797A8FC477AFAFF004CD52C359B08EFB4DBB86EAD641959616DC0FF00F5
            FDAB2FFE105F087FD0A9A1FF00E0BA2FFE26B5AC34DB1D2AD45AE9D656D676E0
            9222B78963404F5385005007CCDFB43DCC171F10ED5619A391A1D3638E408C0E
            C6F3253B4FA1C1071EE2BDBFE145DDB5D7C33D0D6DEE2294C36C239023825187
            553E87DAB6AEBC21E19BFBA92EAF3C3BA4DC5C487324B35946EEE7D492B93577
            4DD1F4CD1A17874BD3AD2C6276DED1DAC0B1296C6324281CF1D6802ED7CF5F1B
            3E1743671DC78BB46548A22C1AFADB8500938F317EA48C8F5391DEBE85AAD7D6
            367A9DA49677F6905DDB498DF0CF18911B0411953C1E403F85007C65F0F2E20B
            4F889A04F713470C297B19792460AAA33D493D28AFADBFE105F087FD0A9A1FFE
            0BA2FF00E268A00E828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
            028A28A0063BA463323AA8C819638E49C014FACAF10F87EC3C4FA2CFA56A48CD
            6F2E0E51B6B230395653D883547C28BAF59433693AE7FA53598516FA92918BA8
            CE71B875120C61BB1E082726802B78C2F6FAD356F0A4769712C31DCEAEB14FB3
            A489E548DB4FB1DBFA5759595AE7F644105BEA5ACCF0DBC3A7CDF698E69A5D8A
            8FB1933D46787618F7AE6D3E2F781E792582D35C8E7B9553B22F2DE3F3187455
            7701724F039A00ED8C88B22A1750CD92AA4F271D714FAE33C37E18BD935C7F16
            78925126B32A14B6B68DC986C213FC0BFDE63FC4DDFB71D7B3A0028AE2AEBE2A
            F852CFC42FA14D757435349FECDF671672962E4E00185E73C608EB904576B400
            515E79FF000BB3C0E2E3ECFF00DA175E76ED9E5FD8A5DDBB38C636E739E315DE
            DB4EB756B0DCA2C8AB2A2C8AB2A146008CE194F20FA83C8A009A8A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028AE2B5DF8ABE13F0DEAD3699AADE5C5BDDC58DC86D242083D083B7047B8A
            CE5F8E5E002C01D5E5504F53692F1FF8ED007A3515CBE87F113C23E23B84B7D2
            F5DB69A7738485F744EC7D95C026BA8A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00299248
            90C4F2CAEA91A02CCEC70140EA49EC29F4C74496368E450E8C0865619047A1A0
            0C587C69E15B96DB078974791B19DA97D1138FA6EAB3E20D58689E1AD4B56DA1
            C59DAC9385FEF155240FC702921F0D68306DF2744D363DA30365A20C7E42A2B5
            BBD3FC59A1DEDAB21F2DC4965796CC70F1360ABA30EDC1E3D4107BD0079E7863
            4B8BC65E2EB94F11DC36A51E836D6C61B5B86DC924D3C7E6C93B29EA324AA8E8
            17000E0575FADB691AA6BB1F8375AD26096D2FAD1E5B47EB92980EA063E46190
            C083F9639F2BD47C23E22D06EE1B7BDF095C78912D6316F69A969D7EF6B24900
            FBB1CCAB92768E3B71C64E2BABD2A3D62D354BBF889E3D5874B86C2CDA0B2D3D
            1C318909E4939E5DBA01D4E7B7028034FE135E5D4361AD7866F276B86D02FDED
            21998F2D0FF067E983F86057A257997C18B6BDB8D1757F135FC6D1CDAF5FBDD2
            21CF11E4EDFC325B1EC057A6D007CBFAFDD5BD97ED306EAEE68E0B7875081E49
            6460AA8A234C924F4AD7F1BFC59D53C69A9AF857C0C9379372DE51B85F925B8E
            390B9C6C4C6724F38F419AE5BE2068F27887E3C5FE910CAB14979790C2247190
            B98D39C0EB5BFF0010BE0ECBE0CD2AD35FF0CDCDD4DF6101AED89FDE23039132
            E3A007A8EDC1F5A00F46F86BF0874EF06471EA3A8F977BAE119F37198EDFD446
            0F7EDB8F3E98E73D478FE6B9B4F026B379677735ADCDADABCF14B0B004328247
            5078AE7FE14FC4A83C71A4FD96F1923D6ED5079F1F03CE5E9E628FE63B1F622B
            7BE22027E1C788C019FF008974DFFA01A00E77E0A6AFAA6BDE0A9753D5F51B8B
            DB992EDE3CCA4611540C00001EA6BA0F88D757761E00D62FAC6EE6B5BAB680CB
            1CB0900820FB8E95C67ECF37904DF0FEE2D52406782F9CC899E4065520FD0F3F
            91AEA7E2B5C436DF0C35E69A5540F6C635C9EACC40007B9340193F05357D535E
            F054BA9EAFA8DC5EDCBDD3C79948C2AA8180001EE6B8FF008BBE24F14E97F12F
            4CD1B41D72E2CD350B68311961B164795E3CF4240F9467F1AE97F67F0C3E1982
            4100DECA471D785AE13E38C77537C60F0F45612AC578F696CB048DD12437126D
            2783C038EC6803A2FF008423E34FFD0ED61FF7FDFF00F8CD2FC3EF1F78B6DFE2
            349E07F17BC5757277AA4CAAA195950C839500152A09E467A7D2B2FC576BF197
            C2DE1F9F56BBF145B5D5B42479AB66017453C6EE625E077C1EFE95A3F03BC33A
            7EA4D278DEEB569752D69D9E375907CD6EE7862C49258953C1E060FE401BFF00
            193E22DFF81F4DB1B6D21505FDF9722791430891719201E0B12C319C8E0F1583
            17823E2FDCDAA5EFFC2736EB70EA1C44266D9CF6CAA6DFC863F9D759F13FC29E
            1EF170D1F4CD56FDAC3539E6923D3A655DD96DBB99581C0230A3B8E7001E79F3
            DFF852DF1034351FD81E2E5089CAA25D4D6E7F00323D7BD00765E03D5BE242F8
            AA5F0F78AEDAD64B7B687CF7BFF2F9914E420565214927D573856CF26BD44900
            124E07BD7867C33F1EF8B20F880FE08F15CBF6B9BF788B236D2F13A217FBCBF7
            94807AF3D39ED5D87C67F157FC233E01B98A090ADEEA59B5871D4291F3B7B617
            233EAC2803C6FC4FF133C6177AE6B1AAE85AA5F47E1E86F4431B215D8B9CEDE7
            1C6E08C7DB23DABE97D0B58B6D7F42B1D5AD0FEE2EE159546795C8E41F70783F
            4AF99F43F1469561F0B6F3C2575E19D5659EF77C92DD24631E6E7E4600F385DA
            9F91F5AEC7F679F15318AFBC2378C56484B5CDA87E08190244F6C1C1C7BB7A50
            07BB330452CC400064927A57CAFE20F89BE2FB9D6B54D6347D52FD7C3B1DFF00
            931ED202807255738C8C8527DABD8BE35F8B3FE11BF024D6D6F26DBDD509B58B
            1D4211FBC6FF00BE78FAB0AF1ED2BC51A55A7C29B9F085C786755927BADD2C97
            4918C79D9051877C0DA83DC03EB401F4D68DAADB6B9A359EA966DBADEEE15950
            FA023383EE3A7E15E7BF1CB5BD5BC39E12B0D4B47D4AE2CAE0DF0818C446195A
            3763904762831F535CE7ECF3E2A67B5BEF095E332CB6C5AE6D95F8214901D3F0
            620E3FDA6F4AD5FDA37FE49ED87FD8563FFD152D00777E01B8B9BCF01E8B7979
            7535D5CDCDAA4D2CB29058B30C9E98E39E2BA4AE63E1D7FC937F0E7FD83E1FFD
            04574F40051451401F2D7C71111F8B9189F1E5182DF7E4E06DC9CFE95E95FD93
            F03FFE7A787FFF00034FFF00155E6DF1C2259FE2EC50BE764905BAB63D0922BD
            5FFE142F817FE7D2F3FF00029A803C4FE25DA783E1F1169F1F805CC92382665B
            57791449B86CD84E4E7AF00E3A62BEAAD105E0D074E1A8F37C2D62FB49FF00A6
            9B46EFD735F397C48F0B5A7C26D6F49D5BC29ABDC4179297FF004795D5D900C7
            3D3953D086CF3FA7D07E13D65FC43E13D2B579221149776C92BA0E8188E71ED9
            CD007825AEADF10FC47F1275CF0CE89E2A921FB15CDC88CDD3E17CB8E5DA0655
            09CF23B574FF00F0847C6AFF00A1DB4FFF00BFEFFF00C66B84D2BC3FAA7893E3
            678A2C748D72E346B91777B21B980B062A27C15F9594E0E41EBDABD67C29F0EF
            C55A0F8AECF52D53C6573ACD9C2B20682E6494E0B290080CCC33CFB500769E12
            B3D4B4FF000A69B69AC4A65D462842DC4864DFB9F2727777AF03D2755F88DE2A
            F1DEB3E1DD13C56F09B179DD4DDC981E5A4A100CAA124FCC3B7AD7D2F5F2A786
            34FF0014EA5F16FC4D0F84754B7D3B50592E9A4967FBAD179EA0AFDC6E7254F4
            EDD6803B7BCF0C7C6BD2ACE6BE5F16D9DC9810C9E54729666C0CE0078829FC4D
            75DF07FC797FE39F0F5D3EA891FDBACA511BCB1AED122919071D8F0738E2BC97
            E205E7C4CF0D3DB69BE26F123BD85FA956B8B21F215CE194E110920738EE0FD6
            BDBBE1A783F4AF08785A28F4BBCFB70BC0B7125E8E04D91F29519385C741EF40
            1E65F1A7C59E29D03C796B61A0EAD7B0C7716093791080DF3EF914E0633D107E
            B5E81F0B7E22DA78E34358646F2F57B38D56E6266C97EDE62FA83DFD09FA13C5
            7C42E7F68DF0703FF3C2DFFF00474B553E267802FF00C19ACAF8EBC199B78E16
            F32EA08B8F24E79603BC67A32F6E7B1E0036FE24EBDADE99F15BC2DA5586B179
            6D65A949025C431B0C61A6D87191C7145707AA78E6DBC7BF12BC03A8C50982E6
            2B9B68AEA13D164FB403F29EE08391F951401F50514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            514514005145140051451400514514005729AF784EEA7D49F5CF0E6A5FD97AD3
            2AA4ACC9BE0BA55E8B2A77C0E030E457574500799DEF8AFE23E9845B5C785345
            9E6DB9FB445AB24719F5212421B15C6DDC17FE31D7201E31D62DB54781B7C1E1
            AF0FB79A0B0FF9EAE0ED41D8966E878233595FB48FFC8D7A3FFD789FFD18D5E9
            5F04BFE44387E89FFA08A00ED340B5BEB4D2D575030ACCE770B7807EEAD93002
            C49C0C850073DCE4E00C01AB451401E43A87C25D62EBE281F1943AB58A117897
            096ED139F957000273D485AF5C745910A3A865618208C8229D4500789C9F0435
            3D37C6926BDE17D6EDB4A8D67F36DE1F2D9BCB1DD4F3CA9E78F438AF618219A6
            D3160D4D6DE595E3D9388D4F96F91838073C1F4356E8A00F12BFF8117BA6EB12
            6A3E0CF134FA56F3C44CCEA5013F743A9C95F623EA4D4527C11F137882EE23E2
            CF1ACD776D19C8442F21FF0080EE3B54FBE0D7B9514019DA1E8B61E1DD1ADB49
            D36110DA5B2ED45CE4FA924F7249249F535C078DFE196A7E29F1EE9DE25B6D4A
            D205B0485638648D897F2E4327247A96238ED5EA14500473C315CC12413A2C91
            48A51D18643291820FE15E55E06F85BAEF81BC4D3DFD8EB36674DB97DB3D918D
            CE63DD95C1CFDE507827DFD6BD668A00E13E207C31B2F1FC96F7171A9DE59DCD
            AC652031ED68D72724952324F4E8C3A0AE3D7E17FC49B588DA5AFC4497ECBD14
            B4928703DB9247E06BDAE8A00F39F87DF09ECFC177F36AF77A84BA9EB1329533
            BAED5404E5B0092493DD89FCB26ABF8D3E1A6A9E32F1AE9FAB5DEA56674BB164
            F2EC5E36F9943067DC73D5B18FA015E9D4500274AF2AD5FE166AB37C4EFF0084
            CB45D4ECEC6412249E4B46C7790A15B763FBC320E3D73D6BD5A8A00F2FF17FC3
            3D57C5FE3AB0D6EF351B26D36C5904560F1BE19036E60C73D5BBFB002BD428A2
            803CA352F857AB7FC2D06F19E8BAAD9D9B19565FB3BC4C77FCA15C3107F8B9CE
            3D6B7BE27F822F7C7BA15A6976B7B6F68915C8B97795198921594018FF007CE7
            E82BB9A2803C5ED3E167C42B0B386CED3E213C36F0A048E34570AAA3A003357B
            4CF877E3BB7D774BBCD4FC6CFA8D9DADD24D2DB48D228700FE209F406BD6A8A0
            028A28A00F1CF881F07355F1AF8B65D6A3D62D2D1362471A794C5805E849CF5A
            C7FF008519E2FF00FA1E64FF00BEA6FF00E2ABDEE8A00F05D37F67377D456E35
            DF111B984105D208887931D8BB1E3F235EE767696F6165059DA44B0DBC11AC71
            46A385503000FC2A7A2803C424F831E298FC55A978834CF15C1A7DD5F4F2CAC6
            08DC15123EE2B9CF4CFF002ABBFF000ADFE25FFD1499BF27FF001AF62A28039C
            F0368BA8F877C2167A5EAD762EEFA1798C9701D9FCCDD2BB0396E738619CD725
            E08F865A9F85BC7BA8F896E752B49D6FD2659218E36053CC9049C13E8540E7B5
            7A851401CC78F7C251F8D3C2773A4379493B157826941222707EF71CF4C8FC6B
            3FE1C784F5DF06692DA46A3AADB5FD8A12D6DB236578B2795C9382BD4FB127F0
            EDE8A00F37F147C3CD535DF895A578B2DB50B38934E489120923625C2BB31C91
            D3973FA57A33A2C8851D432B0C10464114EA2803C5AE3E05BDB78FE1F106897D
            69696505E45771593C6C76952AC5720F00B038F404515ED345007FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692949999999990000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Balance
          DataSetName = 'Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Cashier signature')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object Header1: TfrxHeader
        Height = 45.354330710000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Gradient2: TfrxGradientView
          Top = 15.118119999999980000
          Width = 340.157700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          BeginColor = 16641768
          EndColor = clWhite
          Style = gsHorizontal
          Color = 16709363
        end
        object Gradient3: TfrxGradientView
          Left = 377.953000000000000000
          Top = 15.118119999999980000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          ShowHint = False
          BeginColor = 16641768
          EndColor = clWhite
          Style = gsHorizontal
          Color = 16709363
        end
        object Gradient4: TfrxGradientView
          Left = 529.134200000000000000
          Top = 15.118119999999980000
          Width = 188.976500000000000000
          Height = 30.236240000000000000
          ShowHint = False
          BeginColor = 16641768
          EndColor = clWhite
          Style = gsHorizontal
          Color = 16709363
        end
        object Memo5: TfrxMemoView
          Top = 15.118119999999980000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Amounts')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 377.953000000000000000
          Top = 15.118119999999980000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Balance')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 551.811380000000000000
          Top = 15.118119999999980000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Differencies')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 338.267935000000000000
          Top = 30.236240000000010000
          Width = 30.236240000000000000
          Height = 17.007885000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CHF')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 514.016080000000000000
          Top = 30.236240000000010000
          Width = 30.236240000000000000
          Height = 17.007885000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CHF')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 676.535870000000000000
          Top = 30.236240000000010000
          Width = 30.236240000000000000
          Height = 17.007885000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CHF')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Width = 718.110700000000000000
          Height = 30.236220472440900000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Totals')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 219.212740000000000000
          Width = 120.944960000000000000
          Height = 30.236220472440900000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Balance."price">,BandBalance)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 408.189240000000000000
          Width = 120.944960000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Balance."price_c">,BandBalance)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 593.386210000000000000
          Width = 128.504020000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = ReportTicket.frxDBDataset_Values
          DataSetName = 'Values'
          DisplayFormat.FormatStr = '#,##0.00;-#,##0.00;#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Balance."price_diff">,BandBalance)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderBal: TfrxGroupHeader
        Height = 7.559060000000000000
        Top = 309.921460000000000000
        Visible = False
        Width = 718.110700000000000000
        Condition = 'Balance."id_shift"'
      end
    end
  end
end
