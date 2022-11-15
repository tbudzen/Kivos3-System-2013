inherited ChipsAmountChangeForm: TChipsAmountChangeForm
  Caption = 'Add / remove chips'
  ClientHeight = 192
  ClientWidth = 408
  Font.Charset = EASTEUROPE_CHARSET
  Font.Height = -15
  Font.Name = 'Segoe UI'
  ExplicitWidth = 414
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 20
  inherited Bevel: TBevel
    Top = 153
    Width = 408
    ExplicitTop = 153
    ExplicitWidth = 408
  end
  inherited btnOK: TcxButton
    Left = 205
    Top = 160
    TabOrder = 6
    ExplicitLeft = 205
    ExplicitTop = 160
  end
  inherited btnCancel: TcxButton
    Left = 304
    Top = 160
    TabOrder = 7
    ExplicitLeft = 304
    ExplicitTop = 160
  end
  object lbl_1: TcxLabel
    Left = 24
    Top = 24
    Caption = 'Purpose of change'
    Properties.Alignment.Horz = taLeftJustify
  end
  object cb_1: TcxComboBox
    Left = 184
    Top = 23
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Add'
      'Remove'
      'Destroy')
    Properties.MaskKind = emkRegExpr
    TabOrder = 0
    Text = 'Add'
    Width = 200
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 65
    Caption = 'Number of chips'
    Properties.Alignment.Horz = taLeftJustify
  end
  object cxLabel2: TcxLabel
    Left = 24
    Top = 105
    Caption = 'Description'
    Properties.Alignment.Horz = taLeftJustify
  end
  object edt_description: TcxTextEdit
    Left = 184
    Top = 104
    TabOrder = 4
    Width = 200
  end
  object edt_1: TcxCalcEdit
    Left = 184
    Top = 64
    EditValue = 0.000000000000000000
    TabOrder = 2
    Width = 200
  end
end
