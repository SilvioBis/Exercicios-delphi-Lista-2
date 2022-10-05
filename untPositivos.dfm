object frmPositivo: TfrmPositivo
  Left = 0
  Top = 0
  Caption = 'Positivo e Negativo'
  ClientHeight = 544
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 40
    Width = 507
    Height = 24
    Caption = 'Numeros Positivos e Negativos entre -20 e 20'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 372
    Width = 59
    Height = 22
    Caption = 'Positivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 488
    Top = 372
    Width = 67
    Height = 22
    Caption = 'Negativo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnVoltar: TSpeedButton
    Left = 328
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Voltar'
    OnClick = btnVoltarClick
  end
  object memPositivo: TMemo
    Left = 104
    Top = 104
    Width = 185
    Height = 249
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object memNegativo: TMemo
    Left = 426
    Top = 104
    Width = 185
    Height = 249
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnGerar: TBitBtn
    Left = 328
    Top = 144
    Width = 75
    Height = 49
    Caption = 'Gerar'
    TabOrder = 2
    OnClick = btnGerarClick
  end
  object btnLimpar: TBitBtn
    Left = 328
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btnLimparClick
  end
end
