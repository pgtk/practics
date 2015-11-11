object ParentsForm: TParentsForm
  Left = 685
  Top = 105
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1056#1086#1076#1080#1090#1077#1083#1100
  ClientHeight = 373
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    329
    373)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 240
    Width = 63
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object OkBtn: TButton
    Left = 88
    Top = 338
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1050
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 168
    Top = 338
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object FNameEdit: TLabeledEdit
    Left = 8
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
  end
  object MNameEdit: TLabeledEdit
    Left = 8
    Top = 64
    Width = 153
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1084#1103
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 3
  end
  object LNameEdit: TLabeledEdit
    Left = 8
    Top = 104
    Width = 153
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 4
  end
  object WorkPhoneEdit: TLabeledEdit
    Left = 168
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 89
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1088#1072#1073#1086#1095#1080#1081
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 5
  end
  object HomePhoneEdit: TLabeledEdit
    Left = 168
    Top = 64
    Width = 153
    Height = 21
    EditLabel.Width = 100
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1076#1086#1084#1072#1096#1085#1080#1081
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 6
  end
  object CellPhoneEdit: TLabeledEdit
    Left = 168
    Top = 104
    Width = 153
    Height = 21
    EditLabel.Width = 91
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1089#1086#1090#1086#1074#1099#1081
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 7
  end
  object JobPlaceEdit: TLabeledEdit
    Left = 8
    Top = 144
    Width = 313
    Height = 21
    EditLabel.Width = 72
    EditLabel.Height = 13
    EditLabel.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 8
  end
  object JobEdit: TLabeledEdit
    Left = 8
    Top = 184
    Width = 313
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 9
  end
  object IsMotherComboBox: TComboBox
    Left = 8
    Top = 216
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      #1054#1090#1077#1094
      #1052#1072#1090#1100)
  end
  object IsNativComboBox: TComboBox
    Left = 168
    Top = 216
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      #1053#1077#1088#1086#1076#1085#1086#1081'('#1072#1103')'
      #1056#1086#1076#1085#1086#1081'('#1072#1103')')
  end
  object NoteEdit: TMemo
    Left = 8
    Top = 256
    Width = 313
    Height = 73
    TabOrder = 12
  end
end
