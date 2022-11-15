inherited CdCountTipsOperatorFrame: TCdCountTipsOperatorFrame
  Width = 909
  Height = 663
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ParentBackground = True
  ParentColor = True
  ParentFont = False
  ExplicitWidth = 909
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
    Width = 877
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
      object cxGrid1DBTableView1finished: TcxGridDBColumn
        Caption = 'Finished'
        DataBinding.FieldName = 'finished'
        Width = 70
      end
      object col_drops_c: TcxGridDBColumn
        Caption = 'Tips'
        DataBinding.FieldName = 'value_drop'
        Width = 110
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 16
    Top = 615
    Width = 133
    Height = 30
    Anchors = [akLeft, akBottom]
    Caption = 'Count'
    TabOrder = 4
    OnClick = cxButton3Click
  end
  object cxButton6: TcxButton
    Left = 812
    Top = 615
    Width = 81
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Print'
    TabOrder = 5
    OnClick = cxButton6Click
  end
  object q_cd_count: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * '
      'from tbl_cd_count '
      'where gaming_date=:gaming_date and type='#39'T'#39
      'order by cd_name')
    ReadOnly = True
    BeforeOpen = q_cd_countBeforeOpen
    Left = 320
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gaming_date'
      end>
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_cd where 0=1')
    Left = 320
    Top = 240
  end
  object ds_cd_count: TPgDataSource
    DataSet = q_cd_count
    Left = 352
    Top = 168
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'q_tips_summary'
    CloseDataSource = False
    DataSet = q_tips_summary
    BCDToCurrency = False
    Left = 416
    Top = 368
  end
  object frx_tips_count: TfrxReport
    Version = '4.12.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41212.978469236100000000
    ReportOptions.LastChange = 41242.677723599540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var MySum : Extended;'
      
        '    MyTotalSum : Extended;                                      ' +
        '            '
      '  '
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      
        '  if  not (DBCross1.IsTotalRow (RowIndex)) and not (DBCross1.IsT' +
        'otalColumn (ColumnIndex)) then'
      '  begin'
      
        '    if value=null then value := 0;                              ' +
        '                                                                ' +
        ' '
      '    MySum := MySum + (ColumnValues[1]*Value);'
      
        '    MyTotalSum := MyTotalSum + (ColumnValues[1]*Value);         ' +
        '                '
      '  end;            '
      '            '
      'end;'
      ''
      'procedure DBCross1Object1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  MySum := 0;                        '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Picture1.LoadFromFile(<logo_file>);  '
      'end;'
      ''
      'begin'
      '  MySum := 0;'
      '  MyTotalSum := 0;'
      '    '
      '  frxGlobalVariables['#39'CopyName0'#39'] := '#39#39';          '
      '  frxGlobalVariables['#39'CopyName1'#39'] := '#39'Original'#39';   '
      '  frxGlobalVariables['#39'CopyName2'#39'] := '#39'Copy'#39'; '
      '  frxGlobalVariables['#39'CopyName3'#39'] := '#39'Second copy'#39';  '
      '  frxGlobalVariables['#39'CopyName4'#39'] := '#39'Third copy'#39';  '
      'end.')
    OnGetValue = frx_tips_countGetValue
    Left = 456
    Top = 368
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'q_tips_summary'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Child = frx_tips_count.Child1
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 49.133889999999990000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Trinkgeld Z'#228'hlung')
          ParentFont = False
          VAlign = vaCenter
        end
        object q_tips_summarygamin_date: TfrxMemoView
          Left = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'gamin_date'
          DataSet = frxDBDataset1
          DataSetName = 'q_tips_summary'
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
            '[q_tips_summary."gamin_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_tips_summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Spieltag')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_tips_summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Zeit:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'q_tips_summary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[now]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Align = baRight
          Left = 540.472790000000000000
          Width = 177.637910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo22: TfrxMemoView
          Left = 238.110390000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[CopyName#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Child1: TfrxChild
        Height = 208.724455820000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        Height = 79.370130000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo83: TfrxMemoView
          Left = 18.897650000000000000
          Top = 41.574830000000020000
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
          Left = 491.338900000000000000
          Top = 41.574830000000020000
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
  object q_tips_summary: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select cast(:gdate as DATE)gamin_date, tcc.cd_name, tccv.value_n' +
        'ame, '
      '  tccv.cnt_controler, tccv.cnt_controler*tccv.multiplier val,'
      '  tccv.multiplier'
      'from tbl_cd_count tcc'
      
        'left join tbl_cd_count_value tccv on tccv.id_tbl_cd_count=tcc.id' +
        '_tbl_cd_count'
      
        'where tcc.gaming_date=:gdate and tcc.type='#39'T'#39' and tccv.cnt_contr' +
        'oler is not null')
    Left = 320
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gdate'
      end>
  end
  object ds_tips_summary: TPgDataSource
    DataSet = q_tips_summary
    Left = 360
    Top = 368
  end
end
