object fmrPrincipal: TfmrPrincipal
  Left = 0
  Top = 0
  Caption = 'Exercicios Delphi'
  ClientHeight = 481
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 424
    Width = 396
    Height = 24
    Caption = 'All rights reserved by Silvio Bis & Lucas Caires 2022'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Harlow Solid Italic'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 168
    Top = 16
    Width = 321
    Height = 89
    Caption = 'Atividade Delphi 2'
    Color = clInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Lucida Fax'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object btnImc: TButton
    Left = 24
    Top = 136
    Width = 297
    Height = 73
    Caption = #205'ndice De Massa Corporal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnImcClick
  end
  object btnParImpar: TButton
    Left = 352
    Top = 136
    Width = 297
    Height = 73
    Caption = 'Numeros '#205'mpares'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnParImparClick
  end
  object btnPositivo: TButton
    Left = 192
    Top = 224
    Width = 297
    Height = 73
    Caption = 'Positivos e Negativos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnPositivoClick
  end
  object btnVal: TButton
    Left = 192
    Top = 321
    Width = 297
    Height = 73
    Caption = 'Verificar Documento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Lucida Fax'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnValClick
  end
  object MainMenu1: TMainMenu
    Left = 616
    Top = 32
    object ormulariosdeAtividades1: TMenuItem
      Caption = 'F&ormularios de Atividades'
      object NumerosParesempares1: TMenuItem
        Caption = 'Numeros &Positivos e Negativos'
        OnClick = NumerosParesempares1Click
      end
      object numimpar: TMenuItem
        Caption = '&Numeros '#205'pares'
        OnClick = numimparClick
      end
      object ndiceDeMassaCorporal1: TMenuItem
        Caption = #205'ndice De Massa &Corporal'
        OnClick = ndiceDeMassaCorporal1Click
      end
      object VerificarDocumento1: TMenuItem
        Caption = 'Verificar CPF'
        OnClick = VerificarDocumento1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
