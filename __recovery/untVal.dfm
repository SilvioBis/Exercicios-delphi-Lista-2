object frmValidador: TfrmValidador
  Left = 0
  Top = 0
  Cursor = crAppStart
  Caption = 'Validar CPF'
  ClientHeight = 231
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnVerificar: TSpeedButton
    Left = 416
    Top = 24
    Width = 97
    Height = 81
    Cursor = crAppStart
    Caption = 'Verificar'
    Layout = blGlyphBottom
    OnClick = btnVerificarClick
  end
  object btnLimpar: TSpeedButton
    Left = 416
    Top = 111
    Width = 97
    Height = 81
    Caption = 'Limpar'
    OnClick = btnLimparClick
  end
  object Label1: TLabel
    Left = 232
    Top = 24
    Width = 110
    Height = 13
    Caption = 'Numero Do Documento'
  end
  object btnVoltar: TSpeedButton
    Left = 281
    Top = 156
    Width = 129
    Height = 36
    Caption = 'Voltar'
    OnClick = btnVoltarClick
  end
  object radTipoDoc: TRadioGroup
    Left = 24
    Top = 24
    Width = 185
    Height = 123
    Caption = 'Tipo Do Documento'
    ItemIndex = 0
    Items.Strings = (
      'CPF:'
      'CNPJ:')
    TabOrder = 0
    OnClick = radTipoDocClick
  end
  object edtDoc: TMaskEdit
    Left = 232
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = ''
  end
end
