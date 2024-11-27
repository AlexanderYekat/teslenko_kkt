object hfUsrAuth: ThfUsrAuth
  Left = 428
  Top = 311
  Caption = 'hfUsrAuth'
  ClientHeight = 169
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  TextHeight = 13
  object ActionList1: TActionList
    Left = 24
    Top = 8
    object aBarCodeSend: TAction
      Caption = 'aBarCodeSend'
      OnExecute = aBarCodeSendExecute
    end
  end
end
