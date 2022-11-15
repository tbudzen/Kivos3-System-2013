inherited ChipsAmountChangesHistoryForm: TChipsAmountChangesHistoryForm
  Caption = 'Chips amount changes history'
  Font.Charset = EASTEUROPE_CHARSET
  Font.Height = -15
  Font.Name = 'Segoe UI'
  PixelsPerInch = 96
  TextHeight = 20
  object q_history: TPgQuery
    Connection = frmDatabase.KivosConnection
    Left = 64
    Top = 32
  end
end
