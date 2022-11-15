inherited SystemParametersFrame: TSystemParametersFrame
  Width = 838
  Height = 575
  ParentBackground = True
  ParentColor = True
  ExplicitWidth = 838
  ExplicitHeight = 575
  object cxLabel3: TcxLabel
    Left = 59
    Top = 21
    AutoSize = False
    Caption = 'Alert for currency exchange rate:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 231
    AnchorX = 290
  end
  object cxLabel1: TcxLabel
    Left = 447
    Top = 21
    AutoSize = False
    Caption = '[%]'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 34
  end
  object cxLabel4: TcxLabel
    Left = 120
    Top = 55
    AutoSize = False
    Caption = 'End gaming date:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 169
    AnchorX = 289
  end
  object btn_Save: TcxButton
    Left = 295
    Top = 522
    Width = 161
    Height = 36
    Caption = 'Save'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Foggy'
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_SaveClick
  end
  object cxTimeEdit_GamingDate: TcxTimeEdit
    Left = 295
    Top = 55
    EditValue = 0d
    ParentFont = False
    Properties.TimeFormat = tfHourMin
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
    Width = 146
  end
  object cxLabel5: TcxLabel
    Left = 105
    Top = 89
    AutoSize = False
    Caption = 'Default currency:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 185
    AnchorX = 290
  end
  object cxDBLookupComboBox_DefalutTransactions: TcxDBLookupComboBox
    Left = 296
    Top = 123
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 6
    Width = 345
  end
  object cxLabel6: TcxLabel
    Left = 120
    Top = 121
    AutoSize = False
    Caption = 'Default transactions:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 170
    AnchorX = 290
  end
  object cxLabel7: TcxLabel
    Left = 120
    Top = 155
    AutoSize = False
    Caption = 'Table drop transaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 170
    AnchorX = 290
  end
  object cxDBLookupComboBox_TableDropTransaction: TcxDBLookupComboBox
    Left = 296
    Top = 154
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 9
    Width = 345
  end
  object cxLabel8: TcxLabel
    Left = 120
    Top = 189
    AutoSize = False
    Caption = 'Table fill transaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 170
    AnchorX = 290
  end
  object cxDBLookupComboBox_TableFillTransaction: TcxDBLookupComboBox
    Left = 296
    Top = 185
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 11
    Width = 345
  end
  object cxLabel9: TcxLabel
    Left = 105
    Top = 217
    AutoSize = False
    Caption = 'Table credit transaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 185
    AnchorX = 290
  end
  object cxDBLookupComboBox_TableCreditTransaction: TcxDBLookupComboBox
    Left = 296
    Top = 216
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 13
    Width = 345
  end
  object cxDBLookupComboBox_TITO: TcxDBLookupComboBox
    Left = 296
    Top = 250
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
    Properties.OnEditValueChanged = cxDBLookupComboBox_TITOPropertiesEditValueChanged
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
    TabOrder = 14
    Width = 345
  end
  object cxLabel10: TcxLabel
    Left = 143
    Top = 249
    AutoSize = False
    Caption = 'TITO transaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 147
    AnchorX = 290
  end
  object cxLabel11: TcxLabel
    Left = 167
    Top = 373
    AutoSize = False
    Caption = 'Difference:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 23
    Width = 123
    AnchorX = 290
  end
  object cxCurrencyEdit_Difrence: TcxCurrencyEdit
    Left = 296
    Top = 370
    ParentFont = False
    Properties.DisplayFormat = ',0.00;-,0.00 '
    Properties.UseDisplayFormatWhenEditing = True
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
  object GroupBox_Import: TGroupBox
    Left = 296
    Top = 404
    Width = 345
    Height = 104
    Caption = '  Import transaction  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    object Label1: TLabel
      Left = 116
      Top = 30
      Width = 62
      Height = 20
      Alignment = taRightJustify
      Caption = 'Time out:'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 15
      Top = 64
      Width = 83
      Height = 20
      Alignment = taRightJustify
      Caption = 'Workstation:'
      Layout = tlCenter
    end
    object CheckBox_Import: TCheckBox
      Left = 18
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Enabled'
      TabOrder = 0
    end
    object cxCurrencyEdit_timeout: TcxCurrencyEdit
      Left = 184
      Top = 26
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0;-,0'
      Properties.UseDisplayFormatWhenEditing = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Foggy'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Foggy'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Foggy'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Foggy'
      TabOrder = 1
      Width = 137
    end
    object cxDBLookupComboBox_Workstation: TcxDBLookupComboBox
      Left = 112
      Top = 60
      ParentFont = False
      Properties.ListColumns = <
        item
          Caption = 'Name'
          Width = 100
          FieldName = 'Name'
        end>
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
      Width = 209
    end
  end
  object cxCurrencyRateAlert: TcxCurrencyEdit
    Left = 296
    Top = 23
    ParentFont = False
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = ',0.00;-,0.00 '
    Properties.EditFormat = ',0.00;-,0.00 '
    Properties.MaxLength = 0
    Properties.MaxValue = 100.000000000000000000
    Properties.Nullable = False
    Properties.UseDisplayFormatWhenEditing = True
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
    TabOrder = 19
    Width = 145
  end
  object cxDBLookupComboBox_DefaultCurrency: TcxDBLookupComboBox
    Left = 296
    Top = 89
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ListColumns = <
      item
        Caption = 'Symbol'
        Width = 100
        FieldName = 'Symbol'
      end>
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
    TabOrder = 20
    Width = 145
  end
  object cxLabel2: TcxLabel
    Left = 72
    Top = 283
    AutoSize = False
    Caption = 'TITO Handpays subtransaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 218
    AnchorX = 290
  end
  object cxLabel12: TcxLabel
    Left = 88
    Top = 317
    AutoSize = False
    Caption = 'TITO Tickets subtransaction:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 28
    Width = 202
    AnchorX = 290
  end
  object cxDBLookupComboBox_TITO_Handpays: TcxDBLookupComboBox
    Left = 296
    Top = 283
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 23
    Width = 257
  end
  object cxDBLookupComboBox_TITO_Tickets: TcxDBLookupComboBox
    Left = 296
    Top = 317
    ParentFont = False
    Properties.ListColumns = <
      item
        Caption = 'Name'
        Width = 100
        FieldName = 'Name'
      end>
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
    TabOrder = 24
    Width = 257
  end
  object PgQuery_Execute: TPgQuery
    Connection = frmDatabase.KivosConnection
    SQL.Strings = (
      'Select * from tbl_parametres')
    Left = 680
    Top = 120
  end
end
