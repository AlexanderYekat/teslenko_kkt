object sfMF: TsfMF
  Left = 400
  Top = 269
  ClientHeight = 216
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  TextHeight = 13
  object ActionList1: TActionList
    Left = 168
    Top = 8
    object aSetDiscount: TAction
      Caption = 'aSetDiscount'
      OnExecute = aSetDiscountExecute
    end
  end
end
