object PracticsForm: TPracticsForm
  Left = 735
  Top = 186
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1055#1088#1072#1082#1090#1080#1082#1072
  ClientHeight = 177
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 102
    Height = 13
    Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 58
    Height = 13
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object isForeignCheckBox: TCheckBox
    Left = 8
    Top = 8
    Width = 201
    Height = 17
    Caption = #1055#1088#1072#1082#1090#1080#1082#1072' '#1085#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1080
    TabOrder = 0
    OnClick = isForeignCheckBoxClick
  end
  object PlaceEdit: TEdit
    Left = 8
    Top = 56
    Width = 457
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 464
    Top = 56
    Width = 43
    Height = 22
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object JobEdit: TEdit
    Left = 8
    Top = 104
    Width = 497
    Height = 21
    TabOrder = 3
  end
  object CancelBtn: TButton
    Left = 440
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object OkBtn: TButton
    Left = 360
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 5
  end
end
