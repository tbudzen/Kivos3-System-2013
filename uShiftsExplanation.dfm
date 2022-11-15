inherited ShiftsExplanation: TShiftsExplanation
  Width = 996
  Height = 615
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 996
  ExplicitHeight = 615
  object Panel_: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 49
    Align = alTop
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      996
      49)
    object cxDateEdit_from: TcxDateEdit
      Left = 16
      Top = 15
      EditValue = 40909d
      ParentFont = False
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.InputKind = ikRegExpr
      Properties.MinDate = 40909.000000000000000000
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Foggy'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Foggy'
      StyleFocused.LookAndFeel.SkinName = 'Foggy'
      StyleHot.LookAndFeel.SkinName = 'Foggy'
      TabOrder = 0
      Width = 121
    end
    object cxTimeEdit_From: TcxTimeEdit
      Left = 151
      Top = 15
      EditValue = 0d
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Foggy'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Foggy'
      StyleFocused.LookAndFeel.SkinName = 'Foggy'
      StyleHot.LookAndFeel.SkinName = 'Foggy'
      TabOrder = 1
      Width = 121
    end
    object cxButton_Refresh: TcxButton
      Left = 568
      Top = 15
      Width = 89
      Height = 21
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
    object cxDateEdit_To: TcxDateEdit
      Left = 292
      Top = 15
      EditValue = 40909d
      ParentFont = False
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.InputKind = ikRegExpr
      Properties.MinDate = 40909.000000000000000000
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Foggy'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Foggy'
      StyleFocused.LookAndFeel.SkinName = 'Foggy'
      StyleHot.LookAndFeel.SkinName = 'Foggy'
      TabOrder = 3
      Width = 121
    end
    object cxTimeEdit_To: TcxTimeEdit
      Left = 415
      Top = 15
      EditValue = 0d
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = 'Foggy'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Foggy'
      StyleFocused.LookAndFeel.SkinName = 'Foggy'
      StyleHot.LookAndFeel.SkinName = 'Foggy'
      TabOrder = 4
      Width = 121
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 996
    Height = 566
    ActivePage = TabSheet_Shifts
    Align = alClient
    MultiLine = True
    ScrollOpposite = True
    TabOrder = 1
    object TabSheet_Shifts: TTabSheet
      Caption = 'Shifts'
      ImageIndex = 1
      TabVisible = False
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 988
        Height = 556
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        object cxDBTreeList_ReportsShifts: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 984
          Height = 448
          Align = alClient
          Bands = <
            item
              Caption.MultiLine = True
              Caption.Text = 'Where'
            end
            item
              Caption.Text = 'Shift'
            end
            item
              Caption.Text = 'Expected values'
            end
            item
              Caption.Text = 'Balance'
            end>
          DataController.DataSource = PgDataSource_List
          DataController.ParentField = 'id_cd_transaction'
          DataController.KeyField = 'id'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Foggy'
          OptionsBehavior.MultiSort = False
          OptionsBehavior.Sorting = False
          OptionsBehavior.WaitForExpandNodeTime = 0
          OptionsCustomizing.BandsQuickCustomization = True
          OptionsCustomizing.BandsQuickCustomizationMaxDropDownCount = 10
          OptionsCustomizing.ColumnMoving = False
          OptionsCustomizing.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsData.SmartRefresh = True
          OptionsData.SyncMode = False
          OptionsView.Bands = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.CheckGroups = True
          OptionsView.FixedSeparatorWidth = 24
          OptionsView.GridLines = tlglBoth
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.TreeLineStyle = tllsSolid
          PopupMenu = PopupMenu1
          RootValue = 1
          TabOrder = 0
          OnClick = cxDBTreeList_ReportsShiftsClick
          object cxDBTreeList_ReportsShiftscxDB_id: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_id_cd_transaction: TcxDBTreeListColumn
            Visible = False
            DataBinding.FieldName = 'id_cd_transaction'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShift_cd_cashDeskName: TcxDBTreeListColumn
            Caption.Text = 'Cash desk'
            DataBinding.FieldName = 'cd_name'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_Operation: TcxDBTreeListColumn
            Caption.Text = 'Operation'
            DataBinding.FieldName = 'operation'
            Width = 30
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDB_User: TcxDBTreeListColumn
            Caption.Text = 'User'
            DataBinding.FieldName = 'user'
            Width = 80
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsData: TcxDBTreeListColumn
            Caption.Text = 'Data'
            DataBinding.FieldName = 'date'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_CURR: TcxDBTreeListColumn
            Caption.Text = 'Curr.'
            DataBinding.FieldName = 'currsymbol'
            Width = 20
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsc_Amount: TcxDBTreeListColumn
            Caption.Text = 'Amount'
            DataBinding.FieldName = 'totalamount'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftsAmountCHF: TcxDBTreeListColumn
            Caption.Text = 'Amount CHF'
            DataBinding.FieldName = 'amountchf'
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 2
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_gamingdate: TcxDBTreeListColumn
            Caption.Text = 'Gaming date'
            DataBinding.FieldName = 'gaming_date'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_Balance: TcxDBTreeListColumn
            DataBinding.FieldName = 'balance'
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShifts_Diferewnce: TcxDBTreeListColumn
            DataBinding.FieldName = 'difference'
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 3
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDBTreeListColumn_category_diffrence: TcxDBTreeListColumn
            Visible = False
            Caption.Text = 'Category diffrence'
            DataBinding.FieldName = 'id_category_diff_s'
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDBTreeListColumn_Exploation: TcxDBTreeListColumn
            Caption.Text = 'Explanation'
            DataBinding.FieldName = 'explanation_supervisor'
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDBTreeListColumn_User_explanation: TcxDBTreeListColumn
            Caption.Text = 'Explanation user'
            DataBinding.FieldName = 'id_explanation_supervisor'
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList_ReportsShiftscxDBTreeListColumn_Catsname: TcxDBTreeListColumn
            Caption.Text = 'Category diffrence'
            DataBinding.FieldName = 'catsname'
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object Panel_Down: TPanel
          Left = 0
          Top = 448
          Width = 984
          Height = 104
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            984
            104)
          object Label_Category: TLabel
            Left = 50
            Top = 43
            Width = 48
            Height = 15
            Alignment = taRightJustify
            Caption = 'Category'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label_Exploation: TLabel
            Left = 37
            Top = 68
            Width = 61
            Height = 15
            Alignment = taRightJustify
            Caption = 'Explanation'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object cxDBLookupComboBox_ShiftsCategory: TcxDBLookupComboBox
            Left = 104
            Top = 39
            DataBinding.DataField = 'id'
            DataBinding.DataSource = PgDataSource_CategoryShifts
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                MinWidth = 0
                Width = 0
                FieldName = 'id'
              end
              item
                FieldName = 'name'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListOptions.ColumnSorting = False
            Properties.ListSource = PgDataSource_RepItemCategory
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnEnter = cxDBLookupComboBox_ShiftsCategoryEnter
            Width = 201
          end
          object cxButton_Save: TcxButton
            Left = 521
            Top = 61
            Width = 68
            Height = 24
            Anchors = [akLeft, akBottom]
            Caption = 'Save'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Foggy'
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton_SaveClick
          end
          object Memo_Explanation: TcxTextEdit
            Left = 104
            Top = 63
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 411
          end
        end
      end
    end
  end
  object PgQuery_CategoryNameItems: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_difference_categories')
    Left = 200
    Top = 448
  end
  object PgDataSource_RepItemCategory: TPgDataSource
    DataSet = PgQuery_CategoryNameItems
    Left = 312
    Top = 448
  end
  object PgQuery_List: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select '
      '       cdt.id as id, 0 as id_cd_transaction,  cd.cd_name,'
      '       cdt.base_ct_Number, 0 as exchange_rate, cdt.ct_number,'
      '      cdt.difference as difference,'
      
        '        (  select sum (ctv.nr * tbval.multiplier * ctv.exchange_' +
        'rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      '          where cdt.id = ctv.id_cd_transaction)as totalamount,'
      '       cdt.DateTime  as date,'
      '       '
      '       '#39' '#39' as catName,'
      '       cdt.Gaming_date, '
      '       case when substr(cdt.ct_number,1,2)='#39'OP'#39' then '#39'open'#39' '
      
        '            when substr(cdt.ct_number,1,2)='#39'CL'#39' then '#39'close'#39' end' +
        ' as operation,'
      '       us.first_name ||'#39' '#39'|| us.last_name as user,'
      '       '#39'CHF'#39' as currSymbol,  '
      '       '
      
        '       case when cdt.difference < 0 then sum(cdt.difference +  (' +
        '  select sum (ctv.nr * tbval.multiplier * ctv.exchange_rate) '
      
        '          from  tbl_cd_cash_transactions_subt_categories_values ' +
        'as ctv'
      
        '          left join tbl_values as tbval on ctv.id_cd_value = tbv' +
        'al.id '
      
        '          where cdt.id = ctv.id_cd_transaction))  else 0 end as ' +
        'balance ,  '
      '       0 as currrate, '
      '       0 as amountchf,'
      '       cdt.explanation_supervisor,'
      '       cdt.id_category_diff_s,'
      '       cats.name as catsname,'
      '       cdt.id_explanation_supervisor  '
      'from tbl_cd_cash_transactions cdt'
      'left join tbl_cd cd on cd.id=cdt.id_cashDesk'
      'left join tbl_users us on cdt.id_user=us.id'
      
        'left join tbl_difference_categories cats on cats.id=cdt.id_categ' +
        'ory_diff_s'
      'where  cdt.type = 3 and cdt.id=-1000'
      'group by cdt.id,cd.cd_name ,us.first_name,us.last_name,cats.name')
    Left = 520
    Top = 232
  end
  object PgDataSource_List: TPgDataSource
    DataSet = PgQuery_List
    Left = 608
    Top = 232
  end
  object PgQuery_CategoryShifts: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_difference_categories')
    Left = 112
    Top = 408
  end
  object PgDataSource_CategoryShifts: TPgDataSource
    DataSet = PgQuery_CategoryShifts
    Left = 24
    Top = 440
  end
  object PgQuery_Execute: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_difference_categories')
    Left = 848
    Top = 448
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 160
    object Exporttoexcel1: TMenuItem
      Caption = 'Export to excel'
      OnClick = Exporttoexcel1Click
    end
  end
end
