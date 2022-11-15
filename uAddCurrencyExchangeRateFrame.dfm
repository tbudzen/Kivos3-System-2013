inherited AddCurrencyExchangeRateFrame: TAddCurrencyExchangeRateFrame
  Width = 849
  Height = 665
  ParentBackground = True
  ParentColor = True
  Visible = False
  ExplicitWidth = 849
  ExplicitHeight = 665
  object btnModifyCurrencyExchangeRate: TcxButton
    Left = 659
    Top = 618
    Width = 182
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Modify exchange rate'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnModifyCurrencyExchangeRateClick
  end
  object btnAddCurrencyExchangeRate: TcxButton
    Left = 659
    Top = 579
    Width = 182
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Add exchange rate'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnAddCurrencyExchangeRateClick
  end
  object btnCancel: TcxButton
    Left = 518
    Top = 618
    Width = 135
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object edExchangeRateForSelling: TcxTextEdit
    Left = 191
    Top = 148
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 4
    OnEnter = edExchangeRateForSellingEnter
    OnExit = edExchangeRateForSellingExit
    OnKeyPress = edExchangeRateForSellingKeyPress
    Width = 202
  end
  object edExchangeRateForBuying: TcxTextEdit
    Left = 191
    Top = 113
    ParentFont = False
    Properties.OnChange = edExchangeRateForBuyingPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    OnEnter = edExchangeRateForBuyingEnter
    OnExit = edExchangeRateForBuyingExit
    OnKeyPress = edExchangeRateForBuyingKeyPress
    Width = 202
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 114
    AutoSize = False
    Caption = 'Exchange rate of buying:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 169
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 148
    AutoSize = False
    Caption = 'Exchange rate of selling:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 169
  end
  object edValidFrom: TcxDateEdit
    Left = 191
    Top = 44
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 1
    Width = 202
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 45
    AutoSize = False
    Caption = 'Valid from:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 169
  end
  object edValidTo: TcxDateEdit
    Left = 191
    Top = 80
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 2
    Visible = False
    Width = 202
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 79
    AutoSize = False
    Caption = 'Valid to:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 169
  end
  object edCurrency: TcxDBLookupComboBox
    Left = 191
    Top = 10
    DataBinding.DataField = 'id'
    DataBinding.DataSource = PgDataSource1
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        HeaderAlignment = taCenter
        FieldName = 'id'
      end
      item
        HeaderAlignment = taCenter
        FieldName = 'symbol'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListOptions.ShowHeader = False
    Properties.PopupAlignment = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.Shadow = False
    Style.TextStyle = []
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 0
    Width = 202
  end
  object cxLabel5: TcxLabel
    Left = 16
    Top = 12
    AutoSize = False
    Caption = 'Currency:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 169
  end
  object edId: TcxTextEdit
    Left = 591
    Top = 11
    Enabled = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Green'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 13
    Visible = False
    Width = 106
  end
  object cxLabel6: TcxLabel
    Left = 552
    Top = 12
    AutoSize = False
    Caption = 'Id:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
    Height = 28
    Width = 33
  end
  object cxGrid_PandingTransaction: TcxGrid
    Left = 16
    Top = 255
    Width = 817
    Height = 186
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    object cxGrid_PandingTransactionDBTableView1: TcxGridDBTableView
      DataController.DataSource = PgDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Editing = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 24
      object cxGrid1DBTableView_Name: TcxGridDBColumn
        Caption = 'CashDesk'
        DataBinding.FieldName = 'cd_name'
      end
      object cxGrid1DBTableView_Number: TcxGridDBColumn
        Caption = 'Number'
        DataBinding.FieldName = 'ct_number'
      end
      object cxGrid1DBTableView_Date: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'datetime'
      end
    end
    object cxGrid_PandingTransactionLevel1: TcxGridLevel
      GridView = cxGrid_PandingTransactionDBTableView1
    end
  end
  object cxLabel_PandingTransaction: TcxLabel
    Left = 16
    Top = 228
    AutoSize = False
    Caption = 'Pending transactions:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Visible = False
    Height = 29
    Width = 145
  end
  object cxTextEdit1: TcxTextEdit
    Left = 408
    Top = 113
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 17
    Width = 121
  end
  object cxTextEdit2: TcxTextEdit
    Left = 408
    Top = 147
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Foggy'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Foggy'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Foggy'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Foggy'
    TabOrder = 18
    Width = 121
  end
  object StaticText1: TStaticText
    Left = 535
    Top = 118
    Width = 173
    Height = 24
    Caption = 'Prev. currency buying rate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object StaticText2: TStaticText
    Left = 535
    Top = 151
    Width = 171
    Height = 24
    Caption = 'Prev. currency selling rate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object PgSQL1: TPgSQL
    Connection = frmDatabase.KivosConnection
    Left = 88
    Top = 8
  end
  object PgDataSource1: TPgDataSource
    DataSet = PgQuery2
    Left = 736
    Top = 192
  end
  object PgQuery1: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from tbl_currencies_exchange_rates')
    Left = 48
    Top = 8
  end
  object PgQuery2: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      
        'select dateTime, ct_number,tbl_cd.cd_name from tbl_cd_cash_trans' +
        'actions '
      'join tbl_cd on tbl_cd.id=tbl_cd_cash_transactions.id_cashdesk'
      'where confirmed=0 '
      'order by tbl_cd.cd_name,ct_number')
    Left = 688
    Top = 192
  end
  object q_tmp: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'select * from '
      'tbl_currencies_exchange_rates where 0=1')
    Left = 448
    Top = 56
  end
end
