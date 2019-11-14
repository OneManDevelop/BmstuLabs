object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Search records'
  ClientHeight = 300
  ClientWidth = 390
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
    Left = 40
    Top = 32
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 40
    Top = 144
    Width = 30
    Height = 13
    Caption = 'Phone'
  end
  object Label4: TLabel
    Left = 40
    Top = 192
    Width = 39
    Height = 13
    Caption = 'Address'
  end
  object Edit1: TEdit
    Left = 210
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 210
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 210
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 210
    Top = 189
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 210
    Top = 256
    Width = 75
    Height = 25
    Caption = 'End'
    TabOrder = 5
    OnClick = Button2Click
  end
end
