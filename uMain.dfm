object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 264
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object txtNumA: TLabeledEdit
    Left = 80
    Top = 24
    Width = 57
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Num A'
    LabelPosition = lpLeft
    NumbersOnly = True
    TabOrder = 0
  end
  object txtNumB: TLabeledEdit
    Left = 80
    Top = 51
    Width = 57
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Num B'
    LabelPosition = lpLeft
    NumbersOnly = True
    TabOrder = 1
  end
  object txtResult: TLabeledEdit
    Left = 80
    Top = 228
    Width = 57
    Height = 21
    Alignment = taRightJustify
    Color = cl3DLight
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Resultado'
    LabelPosition = lpLeft
    ReadOnly = True
    TabOrder = 2
  end
  object boxOperations: TRadioGroup
    Left = 40
    Top = 78
    Width = 97
    Height = 89
    Caption = 'Operacion'
    ItemIndex = 0
    Items.Strings = (
      'Suma'
      'Resta'
      'Multiplicacion'
      'Division')
    TabOrder = 3
  end
  object btnRequest: TButton
    Left = 40
    Top = 184
    Width = 137
    Height = 25
    Caption = 'Solicitar resultado SOAP'
    TabOrder = 4
    OnClick = btnRequestClick
  end
end
