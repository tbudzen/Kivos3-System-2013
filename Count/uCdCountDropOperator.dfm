inherited CdCountDropOperatorFrame: TCdCountDropOperatorFrame
  Width = 970
  Height = 663
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 970
  ExplicitHeight = 663
  object lbl_gdate: TcxLabel
    Left = 16
    Top = 24
    Caption = 'Select gaming date'
  end
  object edt_gdate: TcxDateEdit
    Left = 160
    Top = 23
    Properties.ShowTime = False
    TabOrder = 1
    Width = 121
  end
  object btn_refr: TcxButton
    Left = 296
    Top = 22
    Width = 89
    Height = 30
    Caption = 'Refresh'
    TabOrder = 0
    OnClick = btn_refrClick
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 64
    Width = 932
    Height = 537
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_cd_count
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = col_drops_c
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1value_open
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1value_files
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1value_credit
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1value_close
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1value_result
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'HH:mm'
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object cxGrid1DBTableView1cd_name: TcxGridDBColumn
        Caption = 'Table name'
        DataBinding.FieldName = 'cd_name'
        Width = 150
      end
      object cxGrid1DBTableView1value_open: TcxGridDBColumn
        Caption = 'Opening shift'
        DataBinding.FieldName = 'value_open'
        Width = 110
      end
      object cxGrid1DBTableView1value_files: TcxGridDBColumn
        Caption = 'Fiels'
        DataBinding.FieldName = 'value_files'
        Width = 110
      end
      object cxGrid1DBTableView1value_credit: TcxGridDBColumn
        Caption = 'Credits'
        DataBinding.FieldName = 'value_credit'
        Width = 110
      end
      object cxGrid1DBTableView1value_close: TcxGridDBColumn
        Caption = 'Closing shift'
        DataBinding.FieldName = 'value_close'
        Width = 110
      end
      object cxGrid1DBTableView1value_result: TcxGridDBColumn
        Caption = 'Result'
        DataBinding.FieldName = 'value_result'
        Width = 110
      end
      object cxGrid1DBTableView1finished: TcxGridDBColumn
        Caption = 'Finished'
        DataBinding.FieldName = 'finished'
        Width = 70
      end
      object col_drops_c: TcxGridDBColumn
        Caption = 'Drop'
        DataBinding.FieldName = 'value_drop'
        Width = 110
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 16
    Top = 615
    Width = 177
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Count'
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton6: TcxButton
    Left = 867
    Top = 615
    Width = 81
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Print ...'
    DropDownMenu = pop_1
    Kind = cxbkDropDown
    PopupAlignment = paRight
    TabOrder = 5
    OnClick = cxButton6Click
  end
  object q_cd_count: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select tcc.*, tgt.*'
      'from tbl_cd_count tcc'
      'left join tbl_cd tc on tc.id=tcc.id_cd'
      'left join tbl_game_type tgt on tgt.id_tbl_game_type=tc.is_a'
      'where tcc.gaming_date=:gaming_date and tcc.type='#39'D'#39
      'order by tcc.cd_name')
    ReadOnly = True
    BeforeOpen = q_cd_countBeforeOpen
    Left = 608
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gaming_date'
      end>
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    Left = 600
    Top = 168
  end
  object ds_cd_count: TPgDataSource
    DataSet = q_cd_count
    Left = 640
    Top = 8
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'q_cd_count'
    CloseDataSource = False
    DataSet = q_cd_count
    BCDToCurrency = False
    Left = 680
    Top = 8
  end
  object frx_rpt_cd_count: TfrxReport
    Version = '4.12.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41212.922772442100000000
    ReportOptions.LastChange = 41212.922772442100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frx_rpt_cd_countGetValue
    Left = 720
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'q_cd_count'
      end>
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
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 15.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 71.811026060000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Memo1: TfrxMemoView
          Width = 366.614173230000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Gesamtspielbericht Tische')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countgaming_date: TfrxMemoView
          Left = 113.385900000000000000
          Top = 41.574830000000000000
          Width = 113.385843860000000000
          Height = 18.897640240000000000
          ShowHint = False
          Color = clBtnFace
          DataField = 'gaming_date'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count."gaming_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 41.574830000000000000
          Width = 113.385843860000000000
          Height = 18.897637795275600000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Spieltag')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 529.134200000000000000
          Top = 41.574830000000000000
          Width = 151.181143860000000000
          Height = 18.897640240000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = 'dd.mm.yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Now]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 415.748300000000000000
          Top = 41.574830000000000000
          Width = 113.385843860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Spieltag')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 94.488250000000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        Condition = 'q_cd_count."game_type_name"'
        OutlineText = 'q_cd_count."game_type_name"'
        object q_cd_countgame_type_name: TfrxMemoView
          Align = baWidth
          Top = 18.897650000000000000
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<q_cd_count."game_type_name">='#39#39','#39'Other'#39',<q_cd_count."game_' +
              'type_name">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 64.252010000000010000
          Width = 37.795280470000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tich Nr.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Top = 64.252010000000010000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Grund-dotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Top = 64.252010000000010000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Gesamt '
            'Nachdotationen')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Top = 64.252010000000010000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Gesamt '
            'Abdotationen')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 321.260050000000000000
          Top = 64.252010000000010000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Enddotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 415.748300000000000000
          Top = 64.252010000000010000
          Width = 94.488188980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Bargeldz'#228'hlung')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 510.236550000000000000
          Top = 64.252010000000010000
          Width = 170.078788980000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ergebnis')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 680.315400000000000000
        DataSet = frxDBDataset1
        DataSetName = 'q_cd_count'
        KeepHeader = True
        RowCount = 0
        object q_cd_countcd_name: TfrxMemoView
          Width = 37.795280470000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cd_name'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count."cd_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_open: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_open'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_open"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_files: TfrxMemoView
          Left = 132.283550000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_files'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_files"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_credit: TfrxMemoView
          Left = 226.771800000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_credit'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_credit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_close: TfrxMemoView
          Left = 321.260050000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_close'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_close"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_result: TfrxMemoView
          Left = 415.748300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_result'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_result"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countvalue_drop: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_drop'
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_drop"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 510.236550000000000000
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '+ / -')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 309.921460000000000000
        Width = 680.315400000000000000
        object Memo13: TfrxMemoView
          Left = 415.748300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count."value_result">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count."value_drop">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 510.236550000000000000
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '+ / -')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_countgame_type_name1: TfrxMemoView
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Gesamtergebnis [q_cd_count."game_type_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 120.944960000000000000
        Top = 389.291590000000000000
        Width = 680.315400000000000000
        object Memo16: TfrxMemoView
          Left = 415.748300000000000000
          Top = 26.456709999999990000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count."value_result">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 585.827150000000000000
          Top = 26.456709999999990000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count."value_drop">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
          Top = 26.456709999999990000
          Width = 75.590538980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '+ / -')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 26.456709999999990000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset1
          DataSetName = 'q_cd_count'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Gesamtergebnis Live Game')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 102.047310000000000000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#252'fer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 472.441250000000000000
          Top = 102.047310000000000000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Z'#228'hler')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object pop_1: TPopupMenu
    Left = 656
    Top = 168
    object GesamtspielberichtTische1: TMenuItem
      Caption = 'Gesamtspielbericht Tische'
      OnClick = GesamtspielberichtTische1Click
    end
    object LiveGameSpieltischabrechnung1: TMenuItem
      Caption = 'Live Game Spieltischabrechnung'
      OnClick = LiveGameSpieltischabrechnung1Click
    end
  end
  object q_cd_count_value: TPgQuery
    KeyFields = 'id_tbl_cd_count_value'
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select v.*, (cnt_operator * multiplier)val, c.name'
      'from tbl_cd_count_value v'
      'left join tbl_categories c on c.id=v.id_category'
      'where gaming_date=:gdate and id_cd=:id_cd and type='#39'D'#39
      'order by id_category,multiplier')
    Options.StrictUpdate = False
    Left = 608
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gdate'
      end
      item
        DataType = ftUnknown
        Name = 'id_cd'
      end>
  end
  object ds_cd_count_value: TPgDataSource
    DataSet = q_cd_count_value
    Left = 640
    Top = 64
  end
  object frxds_cd_count_value: TfrxDBDataset
    UserName = 'q_cd_count_value'
    CloseDataSource = False
    DataSet = q_cd_count_value
    BCDToCurrency = False
    Left = 680
    Top = 64
  end
  object frx_rpt_cd_count_value: TfrxReport
    Version = '4.12.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41212.946789548600000000
    ReportOptions.LastChange = 41212.946789548600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frx_rpt_cd_countGetValue
    Left = 720
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'q_cd_count'
      end
      item
        DataSet = frxds_cd_count_value
        DataSetName = 'q_cd_count_value'
      end>
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
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 283.464574250000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Memo1: TfrxMemoView
          Width = 400.629921260000000000
          Height = 22.677165350000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Live Game Spieltischabrechnung / Table Result')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 52.913420000000000000
          Width = 291.023736770000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Spiel / Game + Tisch Nr. Table No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 291.023810000000000000
          Top = 52.913420000000000000
          Width = 109.606313860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count."cd_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 291.023810000000000000
          Top = 26.456710000000000000
          Width = 109.606313860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count."gaming_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 204.094620000000000000
          Top = 26.456710000000000000
          Width = 86.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Spieltag / Gaming day')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 582.047620000000000000
          Top = 26.456710000000000000
          Width = 98.267716540000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Now]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 582.047620000000000000
          Top = 52.913420000000000000
          Width = 98.267716540000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count."cd_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 506.457020000000000000
          Top = 52.913420000000000000
          Width = 75.590558500000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nummer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 506.457020000000000000
          Top = 26.456710000000000000
          Width = 75.590558500000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Datum / Zeit '
            'Date / Time')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 79.370130000000000000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Color = 52376
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Top = 83.149660000000000000
          Width = 15.118110240000000000
          Height = 188.976485350000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'
            'a'
            'c'
            'h'
            'd'
            'o'
            't'
            'a'
            't'
            'i'
            'o'
            'n'
            'e'
            'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 83.149660000000000000
          Width = 15.118110240000000000
          Height = 188.976485350000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'F'
            'i'
            'l'
            'l'
            's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 117.165430000000000000
          Top = 83.149660000000000000
          Width = 86.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Beleg Nr. / Slip No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 204.094620000000000000
          Top = 83.149660000000000000
          Width = 86.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Betrag / Amount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 30.236240000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Grunddot.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 117.165430000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 204.094620000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_open"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 30.236240000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 117.165430000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 204.094620000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_files"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 30.236240000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 117.165430000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 204.094620000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 30.236240000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 117.165430000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 204.094620000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 30.236240000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 117.165430000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 204.094620000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 30.236240000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 117.165430000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 204.094620000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 30.236240000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Nachdotat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 117.165430000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 204.094620000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 30.236240000000000000
          Top = 238.110390000000000000
          Width = 173.858323860000000000
          Height = 34.015757800000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 204.094620000000000000
          Top = 238.110390000000000000
          Width = 86.929133860000000000
          Height = 34.015757800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[<q_cd_count."value_open">+<q_cd_count."value_files">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 389.291590000000000000
          Top = 83.149660000000000000
          Width = 15.118110240000000000
          Height = 188.976485350000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'A'
            'b'
            'd'
            'o'
            't'
            'a'
            't'
            'i'
            'o'
            'n'
            'e'
            'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 404.409710000000000000
          Top = 83.149660000000000000
          Width = 15.118110240000000000
          Height = 188.976485350000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'
            'r'
            'e'
            'd'
            'i'
            't'
            's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 506.457020000000000000
          Top = 83.149660000000000000
          Width = 86.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Beleg Nr. / Slip No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 593.386210000000000000
          Top = 83.149660000000000000
          Width = 86.929133860000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Betrag / Amount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 419.527830000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Enddotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 506.457020000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 593.386210000000000000
          Top = 105.826840000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_close"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 419.527830000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 506.457020000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 593.386210000000000000
          Top = 124.724490000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_credit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 506.457020000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 593.386210000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 506.457020000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 593.386210000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 506.457020000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 593.386210000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 506.457020000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 593.386210000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 506.457020000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 593.386210000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 419.527830000000000000
          Top = 238.110390000000000000
          Width = 173.858323860000000000
          Height = 34.015757800000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 593.386210000000000000
          Top = 238.110390000000000000
          Width = 86.929133860000000000
          Height = 34.015757800000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[<q_cd_count."value_close">+<q_cd_count."value_credit">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 419.527830000000000000
          Top = 143.622140000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 419.527830000000000000
          Top = 162.519790000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 419.527830000000000000
          Top = 181.417440000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 419.527830000000000000
          Top = 200.315090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 419.527830000000000000
          Top = 219.212740000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Abdotation')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 445.984540000000000000
        Width = 680.315400000000000000
        DataSet = frxds_cd_count_value
        DataSetName = 'q_cd_count_value'
        RowCount = 0
        object q_cd_count_valuecnt_controler: TfrxMemoView
          Left = 136.063080000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataField = 'cnt_controler'
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count_value."cnt_controler"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 226.771800000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'value_name'
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count_value."value_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_count_valueval: TfrxMemoView
          Left = 332.598640000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'val'
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count_value."val"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_cd_count_valuename: TfrxMemoView
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'name'
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[q_cd_count_value."name"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 60.472480000000000000
        Top = 325.039580000000000000
        Width = 680.315400000000000000
        object Memo64: TfrxMemoView
          Align = baWidth
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Z'#228'hlung Count')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 136.063080000000000000
          Top = 30.236240000000010000
          Width = 90.708720000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Anzahl / Amount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 226.771800000000000000
          Top = 30.236240000000010000
          Width = 105.826840000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'St'#252'ckelung / '
            'Denomination')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 332.598640000000000000
          Top = 30.236240000000010000
          Width = 188.976500000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Betrag / Value')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Top = 30.236240000000010000
          Width = 136.063080000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Categorie')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 238.110390000000000000
        Top = 525.354670000000100000
        Width = 680.315400000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Top = 30.236239999999960000
          Width = 680.315400000000000000
          ShowHint = False
          Frame.Color = 52376
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Memo70: TfrxMemoView
          Top = 37.795300000000000000
          Width = 15.118110240000000000
          Height = 147.401574800000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'E'
            'r'
            'g'
            'e'
            'b'
            'n'
            'i'
            's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 15.118110240000000000
          Height = 147.401574800000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'R'
            'e'
            's'
            'u'
            'l'
            't')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 30.236220470000000000
          Top = 37.795290239999990000
          Width = 302.362204720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Summe Bargeld / Total Cash')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 30.236220470000000000
          Top = 68.031539999999950000
          Width = 302.362204720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Summe Abdotationen (inkl.Enddot.) '
            'Total Credits (incl. Enddot.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 30.236220470000000000
          Top = 98.267780000000010000
          Width = 302.362204720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 30.236220470000000000
          Top = 128.504020000000000000
          Width = 302.362204720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Summe Nachdotationen (inkl. Grunddot.) '
            'Total Fills (incl Grunddot')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 30.236220470000000000
          Top = 158.740260000000000000
          Width = 260.787374720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            'Spielergebnis des Tisches '
            'Result of the Table')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 291.023810000000000000
          Top = 158.740260000000000000
          Width = 41.574634720000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '+/-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 332.598640000000000000
          Top = 37.795300000000000000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count_value."val">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 332.598640000000000000
          Top = 68.031549759999960000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<q_cd_count."value_credit">+<q_cd_count."value_close">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 332.598640000000000000
          Top = 98.267789760000030000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<SUM(<q_cd_count_value."val">)>+<q_cd_count."value_credit">+<q_' +
              'cd_count."value_close">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 332.598640000000000000
          Top = 128.504029760000000000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[<q_cd_count."value_open">+<q_cd_count."value_files">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 332.598640000000000000
          Top = 158.740269760000000000
          Width = 188.976377950000000000
          Height = 26.456692910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[q_cd_count."value_result"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Top = 219.212740000000100000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#252'fer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 472.441250000000000000
          Top = 219.212740000000100000
          Width = 207.874015750000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Z'#228'hler')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 332.598640000000000000
          Width = 188.976377950000000000
          Height = 22.677162910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<q_cd_count_value."val">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 226.771800000000000000
          Width = 105.826717950000000000
          Height = 22.677162910000000000
          ShowHint = False
          DataSet = frxds_cd_count_value
          DataSetName = 'q_cd_count_value'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
