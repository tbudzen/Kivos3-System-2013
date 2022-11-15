inherited uModifyEntryStatisticFrame: TuModifyEntryStatisticFrame
  Width = 763
  Height = 615
  ExplicitWidth = 763
  ExplicitHeight = 615
  object GroupBox1: TGroupBox
    Left = 3
    Top = 447
    Width = 348
    Height = 138
    TabOrder = 0
    DesignSize = (
      348
      138)
    object cxLabel2: TcxLabel
      Left = 10
      Top = 28
      Caption = 'Name'
    end
    object cxTextEdit_Name: TcxTextEdit
      Left = 47
      Top = 25
      Enabled = False
      TabOrder = 1
      Width = 202
    end
    object cxLabel3: TcxLabel
      Left = 11
      Top = 57
      Caption = 'Value'
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 80
      Caption = 'Remark'
    end
    object cxMaskEdit_Remark: TcxMaskEdit
      Left = 47
      Top = 78
      Enabled = False
      TabOrder = 6
      Width = 202
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 105
      Caption = 'Result'
    end
    object ComboBox_Result: TComboBox
      Left = 47
      Top = 105
      Width = 202
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 8
    end
    object cxButton_Modify: TcxButton
      Left = 255
      Top = 105
      Width = 80
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Modify'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_ModifyClick
    end
    object cxTextEdit_Numeric: TcxCurrencyEdit
      Left = 47
      Top = 52
      Properties.DisplayFormat = ',0.00;-,0.00'
      TabOrder = 4
      Width = 202
    end
    object cxTextEdit_Text: TcxTextEdit
      Left = 47
      Top = 52
      TabOrder = 5
      Width = 202
    end
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 19
    Width = 741
    Height = 200
    PopupMenu = PopupMenu1
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Stardust'
    object cxGrid1DBTableView_Header: TcxGridDBTableView
      OnCellClick = cxGrid1DBTableView_HeaderCellClick
      DataController.DataSource = PgDataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView_HeaderColumn_ID: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGrid1DBTableView_HeaderColumn_Gaming_Date: TcxGridDBColumn
        Caption = 'Gaming date'
        DataBinding.FieldName = 'gaming_date'
        Width = 80
      end
      object cxGrid1DBTableView_HeaderColumn_Time: TcxGridDBColumn
        Caption = 'Time'
        DataBinding.FieldName = 'datetime'
        Width = 140
      end
      object cxGrid1DBTableView_HeaderColumn_Category: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'name'
        Width = 100
      end
      object cxGrid1DBTableView_HeaderColumn_creationUser: TcxGridDBColumn
        Caption = 'Creation user'
        DataBinding.FieldName = 'user_creator'
        Width = 100
      end
      object cxGrid1DBTableView_HeaderColumn_ModifyUSer: TcxGridDBColumn
        Caption = 'Modify user'
        DataBinding.FieldName = 'user_modyfier'
        Width = 100
      end
      object cxGrid1DBTableView_HeaderColumn_ModifyDate: TcxGridDBColumn
        Caption = 'Modify date'
        DataBinding.FieldName = 'modyfy_date'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView_Header
    end
    object cxGrid1Level2: TcxGridLevel
    end
  end
  object cxGrid2: TcxGrid
    Left = 3
    Top = 242
    Width = 741
    Height = 208
    PopupMenu = PopupMenu2
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Stardust'
    object cxGridDBTableView_Details: TcxGridDBTableView
      OnCellClick = cxGridDBTableView_DetailsCellClick
      DataController.DataSource = PgDataSource3
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGridDBTableView_DetailsColumn_ID: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridDBTableView_DetailsColumn_name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 100
      end
      object cxGridDBTableView_DetailsColumn_remark: TcxGridDBColumn
        Caption = 'Remark'
        DataBinding.FieldName = 'remark'
      end
      object cxGridDBTableView_DetailsColumn_ValueFigure: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'value_figure'
        Width = 200
      end
      object cxGridDBTableView_DetailsColumn_Type: TcxGridDBColumn
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cxGridDBTableView_DetailsColumn_ID_Value: TcxGridDBColumn
        DataBinding.FieldName = 'id_value'
        Visible = False
      end
      object cxGridDBTableView_DetailsColumn_Result: TcxGridDBColumn
        Caption = 'Result'
        DataBinding.FieldName = 'result'
        Width = 100
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView_Details
    end
    object cxGridLevel2: TcxGridLevel
    end
  end
  object cxLabel5: TcxLabel
    Left = 3
    Top = 3
    Caption = 'Entry'
  end
  object cxLabel6: TcxLabel
    Left = 3
    Top = 222
    Caption = 'Entry values'
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 152
    Top = 96
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select A.*,B.Name from tbl_st_entry_category_values_header A'
      'join tbl_st_category B on a.id_category=B.id'
      'order by A.datetime desc')
    Left = 208
    Top = 96
  end
  object PgTable2: TPgTable
    TableName = 'tbl_st_category'
    Connection = frmDatabase.KivosConnection
    Left = 296
    Top = 144
  end
  object PgQuery3: TPgQuery
    SQLUpdate.Strings = (
      'UPDATE tbl_st_enter_category_values_details'
      'SET'
      
        '  id = :id, id_value = :id_value, value_figure = :value_figure, ' +
        'remark = :remark, result = :result, idheader = :idheader'
      'WHERE'
      '  id = :Old_id')
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'Select A.*,B.Type,B.name from tbl_st_enter_category_values_detai' +
        'ls A'
      'Join tbl_st_valuescategory B on A.id_Value=B.id'
      'where A.id=-10000')
    DetailFields = 'idvaluescategory'
    Left = 552
    Top = 472
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 496
    Top = 472
  end
  object PgTable1: TPgTable
    TableName = 'tbl_st_enter_category_values_details'
    Connection = frmDatabase.KivosConnection
    Left = 432
    Top = 472
  end
  object PgQuery_ComboBox: TPgQuery
    SQLUpdate.Strings = (
      'UPDATE tbl_st_enter_category_values_details'
      'SET'
      
        '  id = :id, id_value = :id_value, value_figure = :value_figure, ' +
        'remark = :remark, result = :result, idheader = :idheader'
      'WHERE'
      '  id = :Old_id')
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select A.*,B.Type from tbl_st_enter_category_values_details A'
      'Join tbl_st_valuescategory B on A.id_Value=B.id'
      'where A.id=-10000')
    DetailFields = 'idvaluescategory'
    Left = 256
    Top = 496
  end
  object PgQuery_execute: TPgQuery
    SQLUpdate.Strings = (
      'UPDATE tbl_st_enter_category_values_details'
      'SET'
      
        '  id = :id, id_value = :id_value, value_figure = :value_figure, ' +
        'remark = :remark, result = :result, idheader = :idheader'
      'WHERE'
      '  id = :Old_id')
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select A.*,B.Type from tbl_st_enter_category_values_details A'
      'Join tbl_st_valuescategory B on A.id_Value=B.id'
      'where A.id=-10000')
    DetailFields = 'idvaluescategory'
    Left = 296
    Top = 480
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 88
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 336
    Top = 360
    object exporttoexcel2: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel2Click
    end
  end
end
