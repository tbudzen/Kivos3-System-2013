inherited PrintManager: TPrintManager
  Width = 999
  Height = 699
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 999
  ExplicitHeight = 699
  object Label_reports: TLabel
    Left = 10
    Top = 13
    Width = 59
    Height = 20
    Caption = 'Reports:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid7: TcxGrid
    Left = 10
    Top = 39
    Width = 719
    Height = 650
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGridDBTableView6: TcxGridDBTableView
      OnCellClick = cxGridDBTableView6CellClick
      DataController.DataSource = PgDataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'amount_chf'
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
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
      object cxGridDBTableView6Column1: TcxGridDBColumn
        Caption = 'Reports name'
        DataBinding.FieldName = 'name'
      end
      object cxGridDBTableView6Column2: TcxGridDBColumn
        Caption = 'Printer'
        DataBinding.FieldName = 'printername'
      end
      object cxGridDBTableViev_CDNAME: TcxGridDBColumn
        Caption = 'CashDesk'
        DataBinding.FieldName = 'cd_name'
      end
      object cxGridDBTableViewCDID: TcxGridDBColumn
        DataBinding.FieldName = 'id_cd'
        Visible = False
      end
      object cxGridDBTableView_ComputerName: TcxGridDBColumn
        Caption = 'Workstation'
        DataBinding.FieldName = 'computer_name'
      end
      object cxGridDBTableView6UserName: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user_name'
      end
    end
    object cxGridLevel6: TcxGridLevel
      GridView = cxGridDBTableView6
    end
  end
  object GroupBox_Data: TGroupBox
    Left = 735
    Top = 39
    Width = 242
    Height = 330
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      242
      330)
    object Label_report: TLabel
      Left = 16
      Top = 122
      Width = 48
      Height = 20
      Caption = 'Report:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 173
      Width = 46
      Height = 20
      Caption = 'Printer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label_CashDesk: TLabel
      Left = 16
      Top = 223
      Width = 64
      Height = 20
      Caption = 'Cashdesk:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 80
      Height = 20
      Caption = 'Workstation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 29
      Height = 20
      Caption = 'User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox_Printers: TComboBox
      Left = 16
      Top = 195
      Width = 222
      Height = 28
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cxButton_Print: TcxButton
      Left = 16
      Top = 282
      Width = 70
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Add'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_PrintClick
    end
    object cxButton_Modify: TcxButton
      Left = 92
      Top = 283
      Width = 70
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Modify'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_ModifyClick
    end
    object ComboBox_Reports: TComboBox
      Left = 16
      Top = 145
      Width = 222
      Height = 28
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Please select reports'
      Items.Strings = (
        'Please select reports')
    end
    object cxButton_Delete: TcxButton
      Left = 168
      Top = 283
      Width = 70
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 'Delete'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Foggy'
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_DeleteClick
    end
    object ComboBox_CashDesk: TComboBox
      Left = 16
      Top = 244
      Width = 222
      Height = 28
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit_Workstation: TJvEdit
      Left = 16
      Top = 43
      Width = 222
      Height = 28
      DisabledColor = clBtnFace
      Enabled = False
      TabOrder = 6
    end
    object ComboBox_Users: TComboBox
      Left = 16
      Top = 91
      Width = 222
      Height = 28
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'Please select reports'
      Items.Strings = (
        'Please select reports')
    end
  end
  object CheckBox_WorkStacion: TJvCheckBox
    Left = 657
    Top = 16
    Width = 32
    Height = 17
    Caption = 'All'
    TabOrder = 2
    OnClick = CheckBox_WorkStacionClick
    LinkedControls = <>
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select tbl_ReportsPrinters.id,tbl_reports.name, tbl_ReportsPrint' +
        'ers.PrinterName,'
      
        'tbl_ReportsPrinters.cd_name,tbl_ReportsPrinters.id_cd, tbl_Repor' +
        'tsPrinters.Computer_name,'
      'tbl_ReportsPrinters.user_name  from tbl_ReportsPrinters'
      
        'left join tbl_reports  on tbl_ReportsPrinters.id_reports=tbl_rep' +
        'orts.id'
      'order by tbl_reports.id')
    Left = 272
    Top = 424
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery1
    Left = 200
    Top = 424
  end
  object PgQuery_Execute: TPgQuery
    Connection = frmDatabase.KivosConnection
    Left = 816
    Top = 376
  end
  object PopupMenu: TPopupMenu
    Left = 496
    Top = 232
    object exportstoexcel1: TMenuItem
      Caption = 'exports to excel'
      OnClick = exportstoexcel1Click
    end
  end
end
