object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1080#1089#1085#1072#1103' '#1082#1085#1080#1078#1082#1072
  ClientHeight = 349
  ClientWidth = 590
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
    Left = 32
    Top = 45
    Width = 138
    Height = 33
    Caption = 'NOTEBOOK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 384
    Top = 45
    Width = 139
    Height = 25
    Caption = 'Enter/Add records'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 128
    Width = 139
    Height = 25
    Caption = 'Search by surname'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 384
    Top = 200
    Width = 139
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
  end
end
