object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculator'
  ClientHeight = 411
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 217
    Height = 65
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = 'C'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 144
    Top = 96
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 144
    Top = 160
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 144
    Top = 216
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 80
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 7
    OnClick = Button7Click
  end
end
