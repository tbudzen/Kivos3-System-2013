inherited StListOfCategory: TStListOfCategory
  Width = 953
  Height = 583
  ExplicitWidth = 953
  ExplicitHeight = 583
  object Label1: TLabel
    Left = 83
    Top = 32
    Width = 56
    Height = 13
    Caption = 'Gaming day'
  end
  object Label2: TLabel
    Left = 93
    Top = 57
    Width = 45
    Height = 13
    Caption = 'Category'
  end
  object Label3: TLabel
    Left = 312
    Top = 30
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object cxGrid1: TcxGrid
    Left = 3
    Top = 91
    Width = 822
    Height = 272
    PopupMenu = PopupMenu1
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Stardust'
    object cxGrid1DBTableView_Entry: TcxGridDBTableView
      OnCellClick = cxGrid1DBTableView_EntryCellClick
      OnFocusedRecordChanged = cxGrid1DBTableView_EntryFocusedRecordChanged
      DataController.DataSource = PgDataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView_EntryColumn_IDvalue: TcxGridDBColumn
        DataBinding.FieldName = 'id_value'
        Visible = False
      end
      object cxGrid1DBTableView_EntryColumn_Name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 150
      end
      object cxGrid1DBTableView_EntryColumn_Description: TcxGridDBColumn
        DataBinding.FieldName = 'description'
        Width = 111
      end
      object cxGrid1DBTableView_EntryColumn_Figure: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'value_figure'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 141
      end
      object cxGrid1DBTableView_EntryColumn_Remark: TcxGridDBColumn
        DataBinding.FieldName = 'remark'
        Width = 191
      end
      object cxGrid1DBTableView_EntryColumn_StringValue: TcxGridDBColumn
        Caption = 'String values'
        DataBinding.FieldName = 'result'
        Visible = False
        Width = 107
      end
      object cxGrid1DBTableView_EntryColumn_Type: TcxGridDBColumn
        DataBinding.FieldName = 'type'
        Visible = False
      end
      object cxGrid1DBTableView_EntryColumnId: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGrid1DBTableView_EntryColumn_header: TcxGridDBColumn
        DataBinding.FieldName = 'idheader'
        Visible = False
      end
      object cxGrid1DBTableView_EntryColumn_types: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'types'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView_Entry
    end
    object cxGrid1Level2: TcxGridLevel
    end
  end
  object ComboBox_Category: TComboBox
    Left = 144
    Top = 54
    Width = 202
    Height = 22
    AutoDropDown = True
    Style = csOwnerDrawFixed
    Enabled = False
    TabOrder = 0
    OnSelect = ComboBox_CategorySelect
  end
  object cxTextEdit_Data: TcxTextEdit
    Left = 344
    Top = 27
    TabStop = False
    Enabled = False
    TabOrder = 1
    Width = 193
  end
  object GroupBox1: TGroupBox
    Left = 11
    Top = 360
    Width = 540
    Height = 145
    TabOrder = 4
    DesignSize = (
      540
      145)
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
    object cxButton_Add: TcxButton
      Left = 255
      Top = 105
      Width = 80
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Add'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_AddClick
    end
    object cxButton_Delete: TcxButton
      Left = 349
      Top = 9
      Width = 80
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Delete'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_DeleteClick
    end
    object cxButton_Save: TcxButton
      Left = 435
      Top = 9
      Width = 80
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Save'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton_SaveClick
    end
    object cxTextEdit_Numeric: TcxCurrencyEdit
      Left = 47
      Top = 53
      Properties.DisplayFormat = ',0.00;-,0.00'
      TabOrder = 4
      Width = 202
    end
    object cxTextEdit_text: TcxTextEdit
      Left = 47
      Top = 53
      TabOrder = 5
      Width = 202
    end
  end
  object cxLabel5: TcxLabel
    Left = 3
    Top = 69
    Caption = 'Entry'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object DateEdit_GamingDay: TJvDateEdit
    Left = 145
    Top = 27
    Width = 161
    Height = 21
    ShowNullDate = False
    TabOrder = 5
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from  tbl_st_category')
    Left = 672
    Top = 16
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgTable1
    Left = 616
    Top = 16
  end
  object PgTable1: TPgTable
    TableName = 'tbl_st_category'
    Connection = frmDatabase.KivosConnection
    Left = 560
    Top = 16
  end
  object PgTable2: TPgTable
    TableName = 'tbl_st_category'
    Connection = frmDatabase.KivosConnection
    Left = 456
    Top = 256
  end
  object PgDataSource2: TPgDataSource
    DataSet = PgQuery2
    Left = 336
    Top = 256
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select A.*, B.name,'
      
        'case when b.type=0 then '#39'numeric'#39' when b.type=1 then '#39'result'#39' el' +
        'se '#39'string'#39' end  as types, '
      'B.Type from tbl_st_enter_category_values_details  A'
      'Join tbl_st_valuescategory b on b.id=A.id_Value'
      ''
      'where idheader=(select MAX(idHeader) from '
      'tbl_st_enter_category_values_details) and idCategory=-10000')
    Left = 408
    Top = 256
  end
  object PgDataSource3: TPgDataSource
    DataSet = PgQuery3
    Left = 640
    Top = 408
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
      
        'Select * from tbl_st_valuescategory where idValuescategory=:id_v' +
        'alue')
    DetailFields = 'idvaluescategory'
    Left = 560
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_value'
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 176
    object exporttoexcel1: TMenuItem
      Caption = 'export to excel'
      OnClick = exporttoexcel1Click
    end
  end
end
