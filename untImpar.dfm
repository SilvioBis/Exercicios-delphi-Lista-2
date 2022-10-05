object frmNumimpar: TfrmNumimpar
  Left = 0
  Top = 0
  Caption = 'Numeros '#205'mpares'
  ClientHeight = 523
  ClientWidth = 638
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
    Left = 25
    Top = 24
    Width = 224
    Height = 27
    Caption = 'Numeros '#205'mpares'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 368
    Top = 84
    Width = 247
    Height = 17
    Caption = 'Numeros '#237'mpares de 100 a 200'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 64
    Top = 288
    Width = 185
    Height = 65
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object memoresult: TMemo
    Left = 392
    Top = 117
    Width = 193
    Height = 337
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btngerar: TBitBtn
    Left = 64
    Top = 117
    Width = 185
    Height = 57
    Caption = 'Gerar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btngerarClick
  end
  object btnlimpar: TBitBtn
    Left = 64
    Top = 200
    Width = 185
    Height = 65
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnlimparClick
  end
end
