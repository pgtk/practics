object StudentForm: TStudentForm
  Left = 488
  Top = 463
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090
  ClientHeight = 356
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    603
    356)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 603
    Height = 321
    ActivePage = PersonalSheet
    Align = alTop
    TabIndex = 0
    TabOrder = 0
    object PersonalSheet: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      object Label1: TLabel
        Left = 0
        Top = 3
        Width = 49
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label2: TLabel
        Left = 0
        Top = 27
        Width = 22
        Height = 13
        Caption = #1048#1084#1103
      end
      object Label3: TLabel
        Left = 0
        Top = 51
        Width = 47
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label8: TLabel
        Left = 0
        Top = 95
        Width = 79
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      end
      object Label9: TLabel
        Left = 0
        Top = 123
        Width = 68
        Height = 13
        Caption = #1055#1086#1083' '#1089#1090#1091#1076#1077#1085#1090#1072
      end
      object Label11: TLabel
        Left = 0
        Top = 146
        Width = 57
        Height = 13
        Caption = #1048#1089#1087#1099#1090#1072#1085#1080#1103
      end
      object Label12: TLabel
        Left = 197
        Top = 235
        Width = 121
        Height = 13
        Caption = #1047#1072#1074#1077#1088#1096#1080#1083'('#1072') '#1086#1073#1091#1095#1077#1085#1080#1077' '#1074
      end
      object Label13: TLabel
        Left = 196
        Top = 135
        Width = 85
        Height = 13
        Caption = #1043#1086#1076' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      end
      object Label14: TLabel
        Left = 197
        Top = 160
        Width = 74
        Height = 13
        Caption = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      end
      object Label35: TLabel
        Left = 197
        Top = 115
        Width = 89
        Height = 13
        Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1080#1085#1076#1077#1082#1089
      end
      object Label40: TLabel
        Left = 197
        Top = 175
        Width = 69
        Height = 13
        Caption = #1055#1086#1089#1090#1091#1087#1080#1083'('#1072') '#1074
      end
      object Label41: TLabel
        Left = 408
        Top = 251
        Width = 157
        Height = 13
        Caption = #1048#1079#1091#1095#1072#1077#1084#1099#1081' '#1080#1085#1086#1089#1090#1088#1072#1085#1085#1099#1081' '#1103#1079#1099#1082
      end
      object PhoneGroupBox: TGroupBox
        Left = 0
        Top = 162
        Width = 193
        Height = 97
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099':'
        TabOrder = 1
        object Label5: TLabel
          Left = 4
          Top = 16
          Width = 55
          Height = 13
          Caption = #1044#1086#1084#1072#1096#1085#1080#1081
        end
        object Label6: TLabel
          Left = 4
          Top = 45
          Width = 59
          Height = 13
          Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081
        end
        object Label7: TLabel
          Left = 4
          Top = 73
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1095#1080#1081
        end
        object HomePhoneEdit: TDBEdit
          Left = 72
          Top = 10
          Width = 113
          Height = 21
          DataField = 'st_HomePhone'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object CellPhoneEdit: TDBEdit
          Left = 72
          Top = 40
          Width = 113
          Height = 21
          DataField = 'st_CellPhone'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object WorkPhoneEdit: TDBEdit
          Left = 72
          Top = 69
          Width = 113
          Height = 21
          DataField = 'st_WorkPhone'
          DataSource = StudentsDataSource
          TabOrder = 2
        end
      end
      object AddrGroupBox: TGroupBox
        Left = 192
        Top = -2
        Width = 401
        Height = 84
        Caption = #1040#1076#1088#1077#1089#1072':'
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 37
          Width = 95
          Height = 13
          Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
        end
        object Label10: TLabel
          Left = 6
          Top = 63
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object Label42: TLabel
          Left = 8
          Top = 15
          Width = 85
          Height = 13
          Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        end
        object PlaceComboBox: TDBLookupComboBox
          Left = 112
          Top = 35
          Width = 281
          Height = 21
          DataField = 'st_plcode'
          DataSource = StudentsDataSource
          KeyField = 'pl_pcode'
          ListField = 'pl_FullName'
          ListSource = PlaceDataSource
          TabOrder = 0
        end
        object AddressEdit: TDBEdit
          Left = 40
          Top = 58
          Width = 353
          Height = 21
          DataField = 'st_Address'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object BirthPlaceEdit: TDBEdit
          Left = 112
          Top = 11
          Width = 281
          Height = 21
          DataField = 'st_BirthPlace'
          DataSource = StudentsDataSource
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 407
        Top = 81
        Width = 186
        Height = 165
        Caption = #1060#1086#1090#1086#1088#1072#1092#1080#1103
        TabOrder = 2
        object StPhoto: TDBImage
          Left = 2
          Top = 15
          Width = 182
          Height = 148
          Align = alClient
          DataField = 'st_Photo'
          DataSource = StudentsDataSource
          Stretch = True
          TabOrder = 0
        end
      end
      object IsMaleEdit: TDBComboBox
        Left = 88
        Top = 117
        Width = 97
        Height = 21
        DataField = 'st_Gender'
        DataSource = StudentsDataSource
        ItemHeight = 13
        Items.Strings = (
          #1046
          #1052)
        TabOrder = 3
        OnChange = IsMaleEditChange
      end
      object TestsEdit: TDBComboBox
        Left = 88
        Top = 141
        Width = 97
        Height = 21
        DataField = 'st_Tests'
        DataSource = StudentsDataSource
        ItemHeight = 13
        Items.Strings = (
          #1087#1088#1086#1096#1083#1072
          #1087#1088#1086#1096#1077#1083
          #1085#1077' '#1087#1088#1077#1076#1091#1089#1084#1086#1090#1088#1077#1085#1099)
        TabOrder = 4
        OnChange = TestsEditChange
      end
      object HotelCheckBox: TDBCheckBox
        Left = 192
        Top = 92
        Width = 185
        Height = 17
        Caption = #1055#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1086' '#1086#1073#1097#1077#1078#1080#1090#1080#1077
        DataField = 'st_Hotel'
        DataSource = StudentsDataSource
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object FNameEdit: TDBEdit
        Left = 64
        Top = 0
        Width = 121
        Height = 21
        DataField = 'st_FName'
        DataSource = StudentsDataSource
        TabOrder = 6
      end
      object MNameEdit: TDBEdit
        Left = 64
        Top = 23
        Width = 121
        Height = 21
        DataField = 'st_MName'
        DataSource = StudentsDataSource
        TabOrder = 7
      end
      object LNameEdit: TDBEdit
        Left = 64
        Top = 45
        Width = 121
        Height = 21
        DataField = 'st_LName'
        DataSource = StudentsDataSource
        TabOrder = 8
      end
      object BirthDateEdit: TDBEdit
        Left = 88
        Top = 90
        Width = 70
        Height = 21
        DataField = 'st_BirthDate'
        DataSource = StudentsDataSource
        TabOrder = 9
      end
      object BirthDateLookupBtn: TButton
        Left = 158
        Top = 90
        Width = 24
        Height = 19
        Caption = '...'
        TabOrder = 10
      end
      object ZipCodeEdit: TDBEdit
        Left = 328
        Top = 108
        Width = 73
        Height = 21
        DataField = 'st_ZipCode'
        DataSource = StudentsDataSource
        TabOrder = 11
      end
      object IsCommercialCheckBox: TDBCheckBox
        Left = 1
        Top = 71
        Width = 189
        Height = 17
        Caption = #1057' '#1087#1086#1083#1085#1099#1084' '#1074#1086#1079#1084#1077#1097#1077#1085#1080#1077#1084' '#1079#1072#1090#1088#1072#1090
        DataField = 'st_IsCommercial'
        DataSource = StudentsDataSource
        TabOrder = 12
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object SchoolComboBox: TDBLookupComboBox
        Left = 196
        Top = 250
        Width = 209
        Height = 21
        DataField = 'st_sccode'
        DataSource = StudentsDataSource
        KeyField = 'sc_pcode'
        ListField = 'sc_ShortName'
        ListSource = SchoolDataSource
        TabOrder = 13
      end
      object InYearEdit: TDBEdit
        Left = 328
        Top = 132
        Width = 73
        Height = 21
        DataField = 'st_InYear'
        DataSource = StudentsDataSource
        TabOrder = 14
      end
      object OutYearEdit: TDBEdit
        Left = 328
        Top = 156
        Width = 73
        Height = 21
        DataField = 'st_OutYear'
        DataSource = StudentsDataSource
        TabOrder = 15
      end
      object BeginSchoolComboBox: TDBLookupComboBox
        Left = 196
        Top = 189
        Width = 209
        Height = 21
        DataField = 'st_oldsccode'
        DataSource = StudentsDataSource
        KeyField = 'sc_pcode'
        ListField = 'sc_ShortName'
        ListSource = SchoolDataSource
        TabOrder = 16
      end
      object DBCheckBox1: TDBCheckBox
        Left = 0
        Top = 260
        Width = 153
        Height = 17
        Caption = #1055#1086#1089#1090#1091#1087#1080#1083' '#1085#1072' '#1074#1090#1086#1088#1086#1081' '#1082#1091#1088#1089
        DataField = 'st_IsAdditional'
        DataSource = StudentsDataSource
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object LangLookupComboBox: TDBLookupComboBox
        Left = 408
        Top = 272
        Width = 145
        Height = 21
        DataField = 'st_Lang'
        DataSource = StudentsDataSource
        KeyField = 'lg_index'
        ListField = 'lg_name'
        ListSource = LangSource
        TabOrder = 18
      end
      object InKindCheckBox: TDBCheckBox
        Left = 197
        Top = 216
        Width = 203
        Height = 17
        Caption = #1055#1086#1089#1090#1091#1087#1080#1083' '#1085#1072' '#1079#1072#1086#1095#1085#1091#1102' '#1092#1086#1088#1084#1091
        DataField = 'st_isInZaoch'
        DataSource = StudentsDataSource
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object OutKindCheckBox: TDBCheckBox
        Left = 196
        Top = 274
        Width = 203
        Height = 17
        Caption = #1047#1072#1074#1077#1088#1096#1080#1083' '#1086#1073#1091#1095#1077#1085#1080#1077' '#1079#1072#1086#1095#1085#1086
        DataField = 'st_isOutZaoch'
        DataSource = StudentsDataSource
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object DocumSheet: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 6
      object Label15: TLabel
        Left = 14
        Top = 130
        Width = 149
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1089#1090#1091#1076#1077#1085#1095#1077#1089#1082#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
      end
      object InGroupBox: TGroupBox
        Left = 0
        Top = 0
        Width = 252
        Height = 125
        Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
        TabOrder = 0
        object Label17: TLabel
          Left = 4
          Top = 36
          Width = 107
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        end
        object Label43: TLabel
          Left = 78
          Top = 19
          Width = 31
          Height = 13
          Caption = #1057#1077#1088#1080#1103
        end
        object Label44: TLabel
          Left = 154
          Top = 20
          Width = 11
          Height = 13
          Caption = #8470
        end
        object Label45: TLabel
          Left = 5
          Top = 18
          Width = 18
          Height = 13
          Caption = #1043#1086#1076
        end
        object DocumentsEdit: TDBMemo
          Left = 2
          Top = 52
          Width = 248
          Height = 71
          Align = alBottom
          DataField = 'st_Documents'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object DocumentsSeriaEdit: TDBEdit
          Left = 112
          Top = 16
          Width = 40
          Height = 21
          DataField = 'st_DocumentsSeria'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object DocumentsNumberEdit: TDBEdit
          Left = 168
          Top = 16
          Width = 81
          Height = 21
          DataField = 'st_DocumentsNumber'
          DataSource = StudentsDataSource
          TabOrder = 2
        end
        object DocumentsYearEdit: TDBEdit
          Left = 24
          Top = 16
          Width = 51
          Height = 21
          DataField = 'st_DocumentsYear'
          DataSource = StudentsDataSource
          TabOrder = 3
        end
      end
      object GroupBox1: TGroupBox
        Left = 254
        Top = 0
        Width = 285
        Height = 153
        Caption = #1055#1072#1089#1087#1086#1088#1090
        TabOrder = 1
        object Label24: TLabel
          Left = 6
          Top = 15
          Width = 31
          Height = 13
          Caption = #1057#1077#1088#1080#1103
        end
        object Label16: TLabel
          Left = 80
          Top = 15
          Width = 11
          Height = 13
          Caption = #8470
        end
        object Label25: TLabel
          Left = 5
          Top = 34
          Width = 33
          Height = 13
          Caption = #1042#1099#1076#1072#1085
        end
        object Label26: TLabel
          Left = 152
          Top = 15
          Width = 33
          Height = 13
          Caption = #1042#1099#1076#1072#1085
        end
        object PassptDeptEdit: TDBMemo
          Left = 2
          Top = 49
          Width = 281
          Height = 102
          Align = alBottom
          DataField = 'st_PassptDept'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object PassptSeriaEdit: TDBEdit
          Left = 40
          Top = 12
          Width = 37
          Height = 21
          DataField = 'st_PassptSeria'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object PassptNumEdit: TDBEdit
          Left = 96
          Top = 12
          Width = 53
          Height = 21
          DataField = 'st_PassptNum'
          DataSource = StudentsDataSource
          TabOrder = 2
        end
        object PassptDateEdit: TDBEdit
          Left = 188
          Top = 12
          Width = 64
          Height = 21
          DataField = 'st_PassptDate'
          DataSource = StudentsDataSource
          TabOrder = 3
        end
        object GetDateLookupBtn: TButton
          Left = 254
          Top = 13
          Width = 24
          Height = 19
          Caption = '...'
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 153
        Width = 538
        Height = 83
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
        TabOrder = 2
        object Label27: TLabel
          Left = 6
          Top = 20
          Width = 24
          Height = 13
          Caption = #1048#1053#1053
        end
        object Label28: TLabel
          Left = 291
          Top = 19
          Width = 92
          Height = 13
          Caption = #1055#1077#1085#1089#1080#1086#1085#1085#1086#1077' '#1089#1074'-'#1074#1086
        end
        object Label29: TLabel
          Left = 7
          Top = 40
          Width = 105
          Height = 13
          Caption = #1052#1077#1076#1080#1094#1080#1085#1089#1082#1080#1081' '#1087#1086#1083#1080#1089':'
        end
        object Label30: TLabel
          Left = 8
          Top = 59
          Width = 31
          Height = 13
          Caption = #1057#1077#1088#1080#1103
        end
        object Label31: TLabel
          Left = 84
          Top = 59
          Width = 11
          Height = 13
          Caption = #8470
        end
        object Label32: TLabel
          Left = 291
          Top = 40
          Width = 119
          Height = 13
          Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
        end
        object Label33: TLabel
          Left = 292
          Top = 59
          Width = 41
          Height = 13
          Caption = #1060#1080#1083#1080#1072#1083
        end
        object Label34: TLabel
          Left = 378
          Top = 60
          Width = 23
          Height = 13
          Caption = #1057#1095#1077#1090
        end
        object PolisNumEdit: TDBEdit
          Left = 96
          Top = 56
          Width = 73
          Height = 21
          DataField = 'st_PolisNum'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object PolisSeriaEdit: TDBEdit
          Left = 40
          Top = 56
          Width = 43
          Height = 21
          DataField = 'st_PolisSeria'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object INNEdit: TDBEdit
          Left = 40
          Top = 16
          Width = 129
          Height = 21
          DataField = 'st_INN'
          DataSource = StudentsDataSource
          TabOrder = 2
        end
        object SocialNumEdit: TDBEdit
          Left = 406
          Top = 16
          Width = 121
          Height = 21
          DataField = 'st_SocialNum'
          DataSource = StudentsDataSource
          TabOrder = 3
        end
        object BankDepEdit: TDBEdit
          Left = 336
          Top = 56
          Width = 41
          Height = 21
          DataField = 'st_BankDep'
          DataSource = StudentsDataSource
          TabOrder = 4
        end
        object BankNumEdit: TDBEdit
          Left = 406
          Top = 56
          Width = 121
          Height = 21
          DataField = 'st_BankNum'
          DataSource = StudentsDataSource
          TabOrder = 5
        end
      end
      object StudNumberEdit: TDBEdit
        Left = 169
        Top = 128
        Width = 82
        Height = 21
        DataField = 'st_StudNumber'
        DataSource = StudentsDataSource
        TabOrder = 3
      end
    end
    object ParentsSheet: TTabSheet
      Caption = #1056#1086#1076#1080#1090#1077#1083#1080
      ImageIndex = 1
      object ParentsGroupBox: TGroupBox
        Left = 0
        Top = 0
        Width = 595
        Height = 216
        Align = alTop
        Caption = #1056#1086#1076#1080#1090#1077#1083#1080
        TabOrder = 0
        DesignSize = (
          595
          216)
        object PDelBtn: TButton
          Left = 511
          Top = 184
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #1044#1077#1090#1072#1083#1080
          TabOrder = 0
          OnClick = PDelBtnClick
        end
        object ParentsGrid: TDBGrid
          Left = 2
          Top = 15
          Width = 591
          Height = 138
          Align = alTop
          DataSource = ParentsDataSourse
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'pr_FName'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_MName'
              Title.Caption = #1048#1084#1103
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_LName'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_JobPlace'
              Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
              Width = 192
              Visible = True
            end>
        end
      end
      object ParentLessEdit: TDBCheckBox
        Left = 4
        Top = 216
        Width = 97
        Height = 17
        Caption = #1057#1080#1088#1086#1090#1072
        DataField = 'st_ParentLess'
        DataSource = StudentsDataSource
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = ParentLessEditClick
      end
    end
    object PractSheet: TTabSheet
      Caption = #1055#1088#1072#1082#1090#1080#1082#1072
      ImageIndex = 5
      object PractGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 257
        Align = alTop
        DataSource = PractSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fpk_Title'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 348
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpk_Length'
            Title.Caption = #1044#1083#1080#1085#1072
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpm_place'
            Title.Caption = #1052#1077#1089#1090#1086' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103
            Width = 160
            Visible = True
          end>
      end
      object PractDetailsBtn: TButton
        Left = 520
        Top = 264
        Width = 75
        Height = 25
        Caption = #1044#1077#1090#1072#1083#1080
        TabOrder = 1
        OnClick = PractDetailsBtnClick
      end
    end
    object DiplomeSheet: TTabSheet
      Caption = #1043#1054#1057#1099' '#1080' '#1044#1080#1087#1083#1086#1084#1080#1088#1086#1074#1072#1085#1080#1077
      ImageIndex = 4
      object Label20: TLabel
        Left = 280
        Top = 161
        Width = 113
        Height = 13
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1076#1080#1087#1083#1086#1084#1072
      end
      object Label21: TLabel
        Left = 311
        Top = 208
        Width = 81
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1076#1080#1087#1083#1086#1084#1072
      end
      object Label22: TLabel
        Left = 266
        Top = 136
        Width = 126
        Height = 13
        Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
      end
      object Label39: TLabel
        Left = 312
        Top = 184
        Width = 79
        Height = 13
        Caption = #1044#1072#1090#1072' '#1082#1086#1084#1080#1089#1089#1080#1080
      end
      object Label46: TLabel
        Left = 8
        Top = 272
        Width = 73
        Height = 13
        Caption = #1057#1088#1077#1076#1085#1080#1081' '#1073#1072#1083#1083':'
      end
      object AVGMarkLabel: TDBText
        Left = 85
        Top = 272
        Width = 65
        Height = 17
        DataField = 'st_avgMark'
        DataSource = StudentsDataSource
      end
      object DiplGetDateEdit: TDBEdit
        Left = 400
        Top = 155
        Width = 93
        Height = 21
        DataField = 'st_DiplGetDate'
        DataSource = StudentsDataSource
        TabOrder = 0
      end
      object DiplGetDateLookupBtn: TButton
        Left = 496
        Top = 156
        Width = 24
        Height = 19
        Caption = '...'
        TabOrder = 1
      end
      object DiplNumEdit: TDBEdit
        Left = 400
        Top = 202
        Width = 121
        Height = 21
        DataField = 'st_DiplNum'
        DataSource = StudentsDataSource
        TabOrder = 2
      end
      object DiplRegNumEdit: TDBEdit
        Left = 400
        Top = 131
        Width = 121
        Height = 21
        DataField = 'st_DiplRegNum'
        DataSource = StudentsDataSource
        MaxLength = 5
        TabOrder = 3
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 125
        Width = 241
        Height = 106
        Caption = #1042#1099#1087#1080#1089#1082#1080
        TabOrder = 4
        object FirstDiplomeFormBtn: TButton
          Left = 8
          Top = 13
          Width = 110
          Height = 25
          Caption = #1055#1077#1088#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
          TabOrder = 0
        end
        object SecondDiplomeFormBtn: TButton
          Left = 120
          Top = 13
          Width = 112
          Height = 25
          Caption = #1042#1090#1086#1088#1072#1103' '#1089#1090#1086#1088#1086#1085#1072
          TabOrder = 1
        end
        object IsDiplomeCopyCheckBox: TCheckBox
          Left = 8
          Top = 55
          Width = 105
          Height = 17
          Hint = 
            #1050#1086#1087#1080#1103' '#1074#1099#1087#1080#1089#1082#1080' '#1073#1077#1079' '#1091#1082#1072#1079#1072#1085#1080#1103' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1085#1086#1084#1077#1088#1072' '#1080' '#1085#1086#1084#1077#1088#1072' '#1076#1080#1087#1083 +
            #1086#1084#1072
          Caption = #1050#1086#1087#1080#1103
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object IsOldDiplomeCheckBox: TCheckBox
          Left = 8
          Top = 70
          Width = 225
          Height = 17
          Caption = #1057#1090#1072#1088#1099#1081' '#1073#1083#1072#1085#1082
          TabOrder = 3
        end
        object IsSlimCheckBox: TCheckBox
          Left = 8
          Top = 86
          Width = 225
          Height = 17
          Caption = '"'#1055#1083#1086#1090#1085#1072#1103'" '#1074#1099#1087#1080#1089#1082#1072
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object DiplomCopyBtn: TButton
          Left = 119
          Top = 40
          Width = 113
          Height = 25
          Caption = #1044#1080#1087#1083#1086#1084
          TabOrder = 5
        end
        object isDuplicateCheckBox: TCheckBox
          Left = 8
          Top = 40
          Width = 105
          Height = 17
          Hint = 
            #1055#1077#1095#1072#1090#1072#1077#1090' '#1082#1086#1087#1080#1102' '#1074#1099#1087#1080#1089#1082#1080' '#1089' '#1085#1086#1084#1077#1088#1086#1084' '#1076#1080#1087#1083#1086#1084#1072', '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1084' '#1085#1086#1084#1077#1088#1086 +
            #1084' '#1080' '#1087#1088#1080#1087#1080#1089#1082#1086#1081' "'#1076#1091#1073#1083#1080#1082#1072#1090'"'
          Caption = #1044#1091#1073#1083#1080#1082#1072#1090
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object WordCheckBox: TCheckBox
          Left = 104
          Top = 69
          Width = 129
          Height = 17
          Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1074' Word'
          TabOrder = 7
        end
      end
      object DiplomingGroupBox: TGroupBox
        Left = 0
        Top = 0
        Width = 595
        Height = 62
        Align = alTop
        Caption = #1044#1080#1087#1083#1086#1084#1080#1088#1086#1074#1072#1085#1080#1077
        TabOrder = 5
        DesignSize = (
          595
          62)
        object Label18: TLabel
          Left = 29
          Top = 17
          Width = 91
          Height = 13
          Caption = #1058#1077#1084#1072' '#1076#1080#1087#1083#1086#1084#1085#1086#1075#1086
        end
        object Label19: TLabel
          Left = 52
          Top = 42
          Width = 69
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1044#1072#1090#1072' '#1079#1072#1097#1080#1090#1099
        end
        object Label23: TLabel
          Left = 368
          Top = 42
          Width = 41
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1054#1094#1077#1085#1082#1072' '
        end
        object DProjectEdit: TDBEdit
          Left = 128
          Top = 13
          Width = 406
          Height = 21
          DataField = 'st_DProject'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object ExamDateEdit: TDBEdit
          Left = 128
          Top = 36
          Width = 95
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'st_ExamDate'
          DataSource = StudentsDataSource
          TabOrder = 1
        end
        object ExamDateLookupBtn: TButton
          Left = 225
          Top = 36
          Width = 24
          Height = 19
          Anchors = [akLeft, akBottom]
          Caption = '...'
          TabOrder = 2
        end
        object DMarkEdit: TDBEdit
          Left = 413
          Top = 36
          Width = 121
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'st_DMark'
          DataSource = StudentsDataSource
          MaxLength = 1
          TabOrder = 3
        end
      end
      object GOSGroupBox: TGroupBox
        Left = 0
        Top = 62
        Width = 595
        Height = 63
        Align = alTop
        Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1084#1077#1078#1076#1080#1089#1094#1080#1087#1083#1080#1085#1072#1088#1085#1099#1081' '#1075#1086#1089'. '#1101#1082#1079#1072#1084#1077#1085
        TabOrder = 6
        DesignSize = (
          595
          63)
        object Label36: TLabel
          Left = 55
          Top = 42
          Width = 69
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1044#1072#1090#1072' '#1079#1072#1097#1080#1090#1099
        end
        object Label37: TLabel
          Left = 425
          Top = 43
          Width = 38
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1054#1094#1077#1085#1082#1072
        end
        object Label38: TLabel
          Left = 20
          Top = 19
          Width = 103
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1101#1082#1079#1072#1084#1077#1085#1072
        end
        object GOSDateEdit: TDBEdit
          Left = 128
          Top = 38
          Width = 95
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'st_GOSDate'
          DataSource = StudentsDataSource
          TabOrder = 0
        end
        object GOSLookupBtn: TButton
          Left = 225
          Top = 38
          Width = 24
          Height = 19
          Anchors = [akLeft, akBottom]
          Caption = '...'
          TabOrder = 1
        end
        object GOSMarkEdit: TDBEdit
          Left = 470
          Top = 38
          Width = 121
          Height = 21
          Anchors = [akRight, akBottom]
          DataField = 'st_GOSMark'
          DataSource = StudentsDataSource
          MaxLength = 1
          TabOrder = 2
        end
        object GOSNameEdit: TDBEdit
          Left = 128
          Top = 15
          Width = 406
          Height = 21
          DataField = 'st_GOSName'
          DataSource = StudentsDataSource
          TabOrder = 3
        end
      end
      object ComissionDateEdit: TDBEdit
        Left = 400
        Top = 179
        Width = 93
        Height = 21
        DataField = 'st_ComissionDate'
        DataSource = StudentsDataSource
        TabOrder = 7
      end
      object ComissionDateLookupBtn: TButton
        Left = 496
        Top = 180
        Width = 24
        Height = 19
        Caption = '...'
        TabOrder = 8
      end
      object DBCheckBox2: TDBCheckBox
        Left = 344
        Top = 224
        Width = 177
        Height = 17
        Caption = #1044#1080#1087#1083#1086#1084' '#1089' '#1086#1090#1083#1080#1095#1080#1077#1084' ('#1082#1088#1072#1089#1085#1099#1081')'
        DataField = 'st_IsRed'
        DataSource = StudentsDataSource
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object SprBtn: TButton
        Left = 8
        Top = 234
        Width = 109
        Height = 25
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1074' '#1042#1059#1047
        TabOrder = 10
      end
    end
    object AdditionalTabSheet: TTabSheet
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      ImageIndex = 5
    end
  end
  object OkBtn: TButton
    Left = 439
    Top = 326
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 519
    Top = 326
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object ParentsQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from parents;')
    Left = 216
    Top = 323
  end
  object ParentsCommand: TADOCommand
    Connection = MainForm.Connection
    Parameters = <>
    Left = 250
    Top = 323
  end
  object ParentsDataSourse: TDataSource
    DataSet = ParentsQuery
    Left = 280
    Top = 323
  end
  object PlaceQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Places ORDER BY pl_hit DESC, pl_Name;')
    Left = 315
    Top = 323
  end
  object PlaceDataSource: TDataSource
    DataSet = PlaceQuery
    Left = 344
    Top = 323
  end
  object SchoolQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Schools;')
    Left = 8
    Top = 323
  end
  object SchoolDataSource: TDataSource
    DataSet = SchoolQuery
    Left = 40
    Top = 323
  end
  object StudentQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *, dbo.getStudentAvgMark(st_pcode, 1) AS st_avgMark FROM ' +
        'Students WHERE st_Name LIKE '#39#1040'%'#39';')
    Left = 184
    Top = 323
    object StudentQueryst_FName: TStringField
      FieldName = 'st_FName'
      Size = 50
    end
    object StudentQueryst_MName: TStringField
      FieldName = 'st_MName'
      Size = 50
    end
    object StudentQueryst_LName: TStringField
      FieldName = 'st_LName'
      Size = 50
    end
    object StudentQueryst_BirthDate: TDateTimeField
      FieldName = 'st_BirthDate'
    end
    object StudentQueryst_Education: TStringField
      FieldName = 'st_Education'
      Size = 256
    end
    object StudentQueryst_ZipCode: TStringField
      FieldName = 'st_ZipCode'
      Size = 6
    end
    object StudentQueryst_Address: TStringField
      FieldName = 'st_Address'
      Size = 256
    end
    object StudentQueryst_Documents: TStringField
      FieldName = 'st_Documents'
      Size = 512
    end
    object StudentQueryst_OldSchool: TStringField
      FieldName = 'st_OldSchool'
      Size = 50
    end
    object StudentQueryst_Tests: TStringField
      FieldName = 'st_Tests'
      Size = 50
    end
    object StudentQueryst_InYear: TSmallintField
      FieldName = 'st_InYear'
    end
    object StudentQueryst_OutYear: TSmallintField
      FieldName = 'st_OutYear'
    end
    object StudentQueryst_DProject: TStringField
      FieldName = 'st_DProject'
      Size = 256
    end
    object StudentQueryst_DMark: TWordField
      FieldName = 'st_DMark'
    end
    object StudentQueryst_DiplGetDate: TDateTimeField
      FieldName = 'st_DiplGetDate'
    end
    object StudentQueryst_ExamDate: TDateTimeField
      FieldName = 'st_ExamDate'
    end
    object StudentQueryst_DiplNum: TStringField
      FieldName = 'st_DiplNum'
    end
    object StudentQueryst_DiplRegNum: TIntegerField
      FieldName = 'st_DiplRegNum'
    end
    object StudentQueryst_StudNumber: TSmallintField
      FieldName = 'st_StudNumber'
    end
    object StudentQueryst_ParentLess: TBooleanField
      FieldName = 'st_ParentLess'
    end
    object StudentQueryst_Hotel: TBooleanField
      FieldName = 'st_Hotel'
    end
    object StudentQueryst_IsMale: TBooleanField
      FieldName = 'st_IsMale'
    end
    object StudentQueryst_oldsccode: TGuidField
      FieldName = 'st_oldsccode'
      FixedChar = True
      Size = 38
    end
    object StudentQueryst_sccode: TGuidField
      FieldName = 'st_sccode'
      FixedChar = True
      Size = 38
    end
    object StudentQueryst_WorkPhone: TStringField
      FieldName = 'st_WorkPhone'
    end
    object StudentQueryst_HomePhone: TStringField
      FieldName = 'st_HomePhone'
    end
    object StudentQueryst_Attributes: TWordField
      FieldName = 'st_Attributes'
    end
    object StudentQueryst_IsCommercial: TBooleanField
      FieldName = 'st_IsCommercial'
    end
    object StudentQueryst_CellPhone: TStringField
      FieldName = 'st_CellPhone'
    end
    object StudentQueryst_PassptDate: TDateTimeField
      FieldName = 'st_PassptDate'
    end
    object StudentQueryst_PassptDept: TStringField
      FieldName = 'st_PassptDept'
      Size = 128
    end
    object StudentQueryst_Passport: TStringField
      FieldName = 'st_Passport'
      ReadOnly = True
      Size = 221
    end
    object StudentQueryst_INN: TStringField
      FieldName = 'st_INN'
      Size = 12
    end
    object StudentQueryst_PolisSeria: TIntegerField
      FieldName = 'st_PolisSeria'
    end
    object StudentQueryst_PolisNum: TLargeintField
      FieldName = 'st_PolisNum'
    end
    object StudentQueryst_Polis: TStringField
      FieldName = 'st_Polis'
      ReadOnly = True
      Size = 61
    end
    object StudentQueryst_SocialNum: TStringField
      FieldName = 'st_SocialNum'
      Size = 15
    end
    object StudentQueryst_BankNum: TStringField
      FieldName = 'st_BankNum'
      Size = 24
    end
    object StudentQueryst_BankDep: TStringField
      FieldName = 'st_BankDep'
      Size = 10
    end
    object StudentQueryst_Photo: TBlobField
      FieldName = 'st_Photo'
    end
    object StudentQueryst_Gender: TStringField
      FieldName = 'st_Gender'
      FixedChar = True
      Size = 1
    end
    object StudentQueryst_pcode: TGuidField
      FieldName = 'st_pcode'
      FixedChar = True
      Size = 38
    end
    object StudentQueryst_grcode: TGuidField
      FieldName = 'st_grcode'
      FixedChar = True
      Size = 38
    end
    object StudentQueryst_plcode: TGuidField
      FieldName = 'st_plcode'
      FixedChar = True
      Size = 38
    end
    object StudentQueryst_FullName: TStringField
      FieldName = 'st_FullName'
      ReadOnly = True
      Size = 152
    end
    object StudentQueryst_Name: TStringField
      FieldName = 'st_Name'
      ReadOnly = True
      Size = 56
    end
    object StudentQueryst_oldcode: TLargeintField
      FieldName = 'st_oldcode'
    end
    object StudentQueryst_Phones: TStringField
      FieldName = 'st_Phones'
      ReadOnly = True
      Size = 64
    end
    object StudentQueryst_GOSDate: TDateTimeField
      FieldName = 'st_GOSDate'
    end
    object StudentQueryst_GOSMark: TWordField
      FieldName = 'st_GOSMark'
    end
    object StudentQueryst_GOSName: TStringField
      FieldName = 'st_GOSName'
      Size = 256
    end
    object StudentQueryst_ComissionDate: TDateTimeField
      FieldName = 'st_ComissionDate'
    end
    object StudentQueryst_IsAdditional: TBooleanField
      FieldName = 'st_IsAdditional'
    end
    object StudentQueryst_Lang: TWordField
      FieldName = 'st_Lang'
    end
    object StudentQueryst_IsRed: TBooleanField
      FieldName = 'st_IsRed'
    end
    object StudentQueryst_DFName: TStringField
      FieldName = 'st_DFName'
      Size = 50
    end
    object StudentQueryst_DMName: TStringField
      FieldName = 'st_DMName'
      Size = 50
    end
    object StudentQueryst_DLName: TStringField
      FieldName = 'st_DLName'
      Size = 50
    end
    object StudentQueryst_DFullName: TStringField
      FieldName = 'st_DFullName'
      ReadOnly = True
      Size = 152
    end
    object StudentQueryst_isInZaoch: TBooleanField
      FieldName = 'st_isInZaoch'
    end
    object StudentQueryst_isOutZaoch: TBooleanField
      FieldName = 'st_isOutZaoch'
    end
    object StudentQueryst_PassptSeria: TStringField
      FieldName = 'st_PassptSeria'
      Size = 6
    end
    object StudentQueryst_PassptNum: TStringField
      FieldName = 'st_PassptNum'
      Size = 10
    end
    object StudentQueryst_BirthPlace: TStringField
      FieldName = 'st_BirthPlace'
      Size = 128
    end
    object StudentQueryst_DocumentsYear: TIntegerField
      FieldName = 'st_DocumentsYear'
    end
    object StudentQueryst_DocumentsSeria: TStringField
      FieldName = 'st_DocumentsSeria'
      Size = 10
    end
    object StudentQueryst_DocumentsNumber: TStringField
      FieldName = 'st_DocumentsNumber'
    end
    object StudentQueryst_pgpcode: TIntegerField
      FieldName = 'st_pgpcode'
    end
    object StudentQueryst_avgMark: TBCDField
      FieldName = 'st_avgMark'
      ReadOnly = True
      Precision = 5
      Size = 2
    end
  end
  object StudentsDataSource: TDataSource
    DataSet = StudentQuery
    Left = 154
    Top = 323
  end
  object LangQuery: TADOQuery
    Connection = MainForm.Connection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Languages;')
    Left = 121
    Top = 323
  end
  object LangSource: TDataSource
    DataSet = LangQuery
    Left = 92
    Top = 323
  end
  object PractQuery: TADOQuery
    Connection = MainForm.Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 10 * FROM FnPractics, FpMarks'
      'WHERE (fpk_pcode = fpm_fpcode);')
    Left = 408
    Top = 324
  end
  object PractSource: TDataSource
    DataSet = PractQuery
    Left = 379
    Top = 324
  end
end
