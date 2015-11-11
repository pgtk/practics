object MainForm: TMainForm
  Left = 398
  Top = 221
  Width = 825
  Height = 574
  Caption = #1052#1086#1076#1091#1083#1100' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 817
    Height = 29
    Caption = 'MainToolBar'
    TabOrder = 0
    object YearFilterCheckBox: TCheckBox
      Left = 0
      Top = 2
      Width = 105
      Height = 22
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1075#1086#1076#1091
      TabOrder = 0
      OnClick = YearFilterCheckBoxClick
    end
    object YearEdit: TSpinEdit
      Left = 105
      Top = 2
      Width = 56
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnChange = YearEditChange
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 509
    Width = 817
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object PageControl: TPageControl
    Left = 0
    Top = 29
    Width = 817
    Height = 480
    ActivePage = ActiveTabSheet
    Align = alClient
    MultiLine = True
    TabIndex = 0
    TabOrder = 2
    TabPosition = tpBottom
    object ActiveTabSheet: TTabSheet
      Caption = #1057#1090#1091#1076#1077#1085#1090#1099' '#1080' '#1075#1088#1091#1087#1087#1099
      object Splitter1: TSplitter
        Left = 129
        Top = 0
        Width = 3
        Height = 454
        Cursor = crHSplit
      end
      object StudentsGrid: TDBGrid
        Left = 132
        Top = 0
        Width = 677
        Height = 454
        Align = alClient
        DataSource = StudentsDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        PopupMenu = StudentsPopupMenu
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = StudentCardActionExecute
        Columns = <
          item
            Expanded = False
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 129
            Visible = True
          end>
      end
      object GroupGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 129
        Height = 454
        Align = alLeft
        DataSource = GroupDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = GroupPopupMenu
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
            FieldName = 'gr_Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 95
            Visible = True
          end>
      end
    end
    object FindTabSheet: TTabSheet
      Caption = #1055#1086#1080#1089#1082
      ImageIndex = 6
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 702
        Height = 49
        Align = alTop
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 0
        object FNameFilter: TCheckBox
          Left = 8
          Top = 18
          Width = 81
          Height = 17
          Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 0
        end
        object FNameEdit: TEdit
          Left = 88
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 1
        end
        object MNameFilter: TCheckBox
          Left = 232
          Top = 18
          Width = 49
          Height = 17
          Caption = #1048#1084#1103
          TabOrder = 2
        end
        object MNameEdit: TEdit
          Left = 280
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 3
        end
        object LNameFilter: TCheckBox
          Left = 424
          Top = 18
          Width = 81
          Height = 17
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          TabOrder = 4
        end
        object LNameEdit: TEdit
          Left = 496
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 5
        end
      end
      object ResultGrid: TDBGrid
        Left = 0
        Top = 49
        Width = 702
        Height = 279
        Align = alClient
        DataSource = FindDataSource
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
            FieldName = 'gr_Name'
            Title.Caption = #1043#1088#1091#1087#1087#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_FName'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_MName'
            Title.Caption = #1048#1084#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_LName'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_inYear'
            Title.Caption = #1055#1086#1089#1090#1091#1087#1080#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_OutYear'
            Title.Caption = #1054#1082#1086#1085#1095#1080#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Attributes'
            Title.Caption = #1040#1090#1088#1080#1073#1091#1090#1099
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'st_Address'
            Title.Caption = #1040#1076#1088#1077#1089
            Visible = True
          end>
      end
    end
  end
  object Connection: TADOConnection
    CommandTimeout = 120
    ConnectionString = 'FILE NAME=W:\department\connection.udl'
    Provider = 'SQLOLEDB.1'
    Left = 344
  end
  object MainMenu1: TMainMenu
    Left = 168
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object ExitItem: TMenuItem
        Action = ExitAction
        AutoCheck = True
      end
    end
    object N8: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object KontingentItem: TMenuItem
        Caption = #1050#1086#1085#1090#1080#1085#1075#1077#1085#1090
        OnClick = KontingentItemClick
      end
    end
    object N20: TMenuItem
      Caption = #1057#1087#1080#1089#1082#1080
      object StudentsDataReportItem: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
        OnClick = StudentsDataReportItemClick
      end
    end
    object ServiceGroup: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object UpdateItem: TMenuItem
        Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        OnClick = UpdateItemClick
      end
    end
  end
  object GroupDataSource: TDataSource
    DataSet = GroupQuery
    OnDataChange = GroupDataSourceDataChange
    Left = 563
  end
  object GroupQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from groups;')
    Left = 592
  end
  object StudentsDataSource: TDataSource
    DataSet = StudentsQuery
    OnDataChange = StudentsDataSourceDataChange
    Left = 628
  end
  object StudentsQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select st_pcode, st_FName, st_MName, st_LName, st_Name, st_FullN' +
        'ame,'
      
        'st_grcode, st_Attributes from students where st_Attributes = 0 A' +
        'ND st_Name LIKE '#39#1040#1085'%'#39)
    Left = 656
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 304
    ActionBars = <>
    LinkedActionLists = <>
    Left = 372
    object ExitAction: TAction
      AutoCheck = True
      Caption = #1042#1099#1093#1086#1076
      OnExecute = ExitActionExecute
    end
    object StudentCardAction: TAction
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnExecute = StudentCardActionExecute
    end
  end
  object GroupPopupMenu: TPopupMenu
    Left = 196
    object PracticsItem: TMenuItem
      Caption = #1055#1088#1072#1082#1090#1080#1082#1072'...'
      OnClick = PracticsItemClick
    end
    object ExportItem: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1089#1087#1080#1089#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1075#1088#1091#1087#1087#1099
      OnClick = ExportItemClick
    end
  end
  object StudentsPopupMenu: TPopupMenu
    Left = 224
    object CardItem: TMenuItem
      Action = StudentCardAction
    end
  end
  object Command: TADOCommand
    Connection = Connection
    Parameters = <>
    Left = 400
  end
  object FindQuery: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT gr_Name, st_FName, st_MName, st_LName, st_BirthDate, '
      '  st_inYear, st_OutYear, st_Attributes, '
      '(pl_fullname + st_Address) AS st_Address'
      'FROM Students, Groups, Places'
      'WHERE (st_grcode = gr_pcode) AND (st_plcode = pl_pcode)')
    Left = 16
    Top = 136
  end
  object FindDataSource: TDataSource
    DataSet = FindQuery
    Left = 48
    Top = 136
  end
end
