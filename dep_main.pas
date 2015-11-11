unit dep_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls, ActnList,
  ActnMan, ExtCtrls, ToolWin, ComCtrls, Spin, DateUtils, QRCtrls, QuickRpt;

type
  TMainForm = class(TForm)
    Connection: TADOConnection;
    MainMenu1: TMainMenu;
    GroupDataSource: TDataSource;
    GroupQuery: TADOQuery;
    StudentsDataSource: TDataSource;
    StudentsQuery: TADOQuery;
    ActionManager: TActionManager;
    ExitAction: TAction;
    ToolBar1: TToolBar;
    GroupPopupMenu: TPopupMenu;
    StudentsPopupMenu: TPopupMenu;
    Command: TADOCommand;
    StatusBar: TStatusBar;
    N8: TMenuItem;
    YearFilterCheckBox: TCheckBox;
    YearEdit: TSpinEdit;
    PageControl: TPageControl;
    ActiveTabSheet: TTabSheet;
    StudentsGrid: TDBGrid;
    GroupGrid: TDBGrid;
    Splitter1: TSplitter;
    KontingentItem: TMenuItem;
    N20: TMenuItem;
    StudentsDataReportItem: TMenuItem;
    StudentCardAction: TAction;
    CardItem: TMenuItem;
    N1: TMenuItem;
    ExitItem: TMenuItem;
    ExportItem: TMenuItem;
    PracticsItem: TMenuItem;
    ServiceGroup: TMenuItem;
    UpdateItem: TMenuItem;
    FindTabSheet: TTabSheet;
    GroupBox2: TGroupBox;
    FNameFilter: TCheckBox;
    FNameEdit: TEdit;
    MNameFilter: TCheckBox;
    MNameEdit: TEdit;
    LNameFilter: TCheckBox;
    LNameEdit: TEdit;
    ResultGrid: TDBGrid;
    FindQuery: TADOQuery;
    FindDataSource: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ExitActionExecute(Sender: TObject);
    procedure GroupDataSourceDataChange(Sender: TObject; Field: TField);
    procedure YearFilterCheckBoxClick(Sender: TObject);
    procedure YearEditChange(Sender: TObject);
    procedure PracticsItemClick(Sender: TObject);
    procedure ExportItemClick(Sender: TObject);
    procedure StudentsDataReportItemClick(Sender: TObject);
    procedure KontingentItemClick(Sender: TObject);
    procedure UpdateItemClick(Sender: TObject);
    procedure StudentsDataSourceDataChange(Sender: TObject; Field: TField);
    procedure StudentCardActionExecute(Sender: TObject);
  private
  repoFileName : String;
  repoFilePath : String;
  function FileInfo(NameApp: string): extended;
  procedure readConfig(fileName: string);
    { Private declarations }
  public
  procedure NotYet();
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses dep_studentform;

{$R *.dfm}

procedure TMainForm.NotYet();
begin
MessageDlg('Данная функция пока не реализована', mtInformation, [mbOk], 0);
end;


function TMainForm.FileInfo(NameApp: string): extended;
var
  dump: DWORD;
  size: integer;
  buffer: PChar;
  VersionPointer, TransBuffer: PChar;
  Temp: integer;
  CalcLangCharSet: string;
  res   : string;
  x     : integer;

begin
try
  size := GetFileVersionInfoSize(PChar(NameApp), dump);
  buffer := StrAlloc(size+1);
  try
    GetFileVersionInfo(PChar(NameApp), 0, size, buffer);
    VerQueryValue(buffer, '\VarFileInfo\Translation', pointer(TransBuffer),
    dump);
    if dump >= 4 then
    begin
      temp:=0;
      StrLCopy(@temp, TransBuffer, 2);
      CalcLangCharSet:=IntToHex(temp, 4);
      StrLCopy(@temp, TransBuffer+2, 2);
      CalcLangCharSet := CalcLangCharSet+IntToHex(temp, 4);
    end;

    VerQueryValue(buffer, pchar('\StringFileInfo\'+CalcLangCharSet+
    '\'+'FileVersion'), pointer(VersionPointer), dump);
    if (dump > 1) then
    begin
      SetLength(Res, dump);
      StrLCopy(Pchar(Res), VersionPointer, dump);
    end
    else
      res := '0.0.0.0';
  finally
    StrDispose(Buffer);
  end;
except
res := '0.0.0.0';
end;
res := trim(res);
for x := 1 to length(res) do
  if res[x] = '.' then
    res[x] := '0';
Result := StrToFloatDef(res,0);
end;


procedure TMainForm.readConfig(fileName: string);
var
cfile      : textfile;
str        : string;
pos        : integer;
param      : string;
value      : string;

begin
try
  if FileExists(fileName) then
    begin
    AssignFile(cfile, fileName);
    reset(cfile);
    while not EOF(cfile) do
      begin
      readln(cfile, str);
      pos := AnsiPos('#', str);
      if (pos > 0) then str := trim(copy(str, 1, pos-1));
      if (length(str) > 0) then
        begin
        pos := AnsiPos('=', str);
        if (pos > 0) then
          begin
          param := uppercase(trim(copy(str, 1, pos-1)));
          value := trim(copy(str, pos+1, (length(str)-pos)));
          if (param = 'FILE') then repoFileName := value;
          if (param = 'PATH') then repoFilePath := value;
          { $ifdef debug }
//          showmessage('param: '+param+#$D+'value: '+value);
          { $endif }
          end;
        end;
      end;
    CloseFile(cfile);
    end else
    MessageDlg('Не обнаружен файл конфигурации программы ('+
      fileName+')', mtError, [mbOk], 0);
except
  MessageDlg('Ошибка при работе программы!', mtError, [mbOk], 0);
end; // try
end;



procedure TMainForm.FormCreate(Sender: TObject);
var
path        : string;
error       : boolean;

begin
// init params
repoFileName := '';
repoFilePath := '';
error := false;
readConfig(ExtractFilePath(Application.ExeName)+'updater.conf');
YearEdit.Value := CurrentYear;
path := ExtractFilePath(Application.ExeName);
if Connection.Connected then
Connection.Close;
Connection.ConnectionString := 'FILE NAME='+path+'connection.udl';
try
  Connection.Open;
except
  on e : Exception do
    begin
    MessageDlg('Ошибка соединения с базой данных ('+e.Message+')',mtError,[mbOk],0);
    error := true;
    end;
end;
if  not error then
begin
 if GroupQuery.Active then
  GroupQuery.Close;
 GroupQuery.SQL.Clear;
   GroupQuery.SQL.Add('SELECT * FROM Groups WHERE ('''+IntToStr(CurrentYear)+
     ''' - gr_CreateYear <= 6) AND (gr_isZaoch = 0) ORDER BY gr_CreateYear, gr_Name;');
 {$ifdef debug}
 ShowMessage(GroupQuery.SQL.Text);
 {$endif}
 GroupQuery.Open;
end else // if error
  Application.Terminate;
end;

procedure TMainForm.ExitActionExecute(Sender: TObject);
begin
if StudentsQuery.Active then
StudentsQuery.Close;
if GroupQuery.Active then
GroupQuery.Close;
Application.Terminate;
end;

procedure TMainForm.GroupDataSourceDataChange(Sender: TObject;
  Field: TField);

begin
if (GroupQuery.State = dsBrowse) and (GroupQuery.RecNo > 0)  then
begin
if StudentsQuery.Active then
StudentsQuery.Close;
StudentsQuery.SQL.Clear;
StudentsQuery.SQL.Add(
  'SELECT st_pcode, st_FName, st_MName, st_LName, st_Name, st_FullName, st_BirthDate, st_grcode ');
StudentsQuery.SQL.Add('FROM Students WHERE (st_grcode = '''+
GroupQuery.FieldByName('gr_pcode').AsString+
''') AND (((st_Attributes & 128) = 128) OR ((st_Attributes & 128) = 0)) ORDER BY st_Name;');
{$ifdef debug}
ShowMessage(StudentsQuery.SQL.Text);
{$endif}
StudentsQuery.Open;
StatusBar.SimpleText := GroupQuery.FieldByName('gr_Name').AsString+' ('+
IntToStr(StudentsQuery.RecordCount)+' чел.)';
end;
StudentsQuery.Active := GroupQuery.RecordCount > 0;
end;

procedure TMainForm.YearFilterCheckBoxClick(Sender: TObject);
begin
  if PageControl.ActivePage = ActiveTabSheet then
    begin
    GroupQuery.Filtered := YearFilterCheckBox.Checked;
    end;
end;

procedure TMainForm.YearEditChange(Sender: TObject);
begin
  if PageControl.ActivePage = ActiveTabSheet then
    begin
    GroupQuery.Filtered := false;
    GroupQuery.Filter := 'gr_CreateYear = '''+IntToStr(YearEdit.Value)+'''';
    GroupQuery.Filtered := YearFilterCheckBox.Checked;
    end;
end;

procedure TMainForm.PracticsItemClick(Sender: TObject);
begin
// TODO Add Practics form
NotYet();
end;

procedure TMainForm.ExportItemClick(Sender: TObject);
begin
// TODO Add students export form
NotYet();
end;

procedure TMainForm.StudentsDataReportItemClick(Sender: TObject);
begin
NotYet();
end;

procedure TMainForm.KontingentItemClick(Sender: TObject);
begin
NotYet();
end;

procedure TMainForm.UpdateItemClick(Sender: TObject);
var
updater : string;
lfile   : extended;
rfile   : extended;

begin
if FileExists(repoFilePath+repoFileName) then
  begin
  lfile := FileInfo(Application.ExeName);
  rfile := FileInfo(repoFilePath+repoFileName);
  if (rfile > lfile) then
    begin
    updater := ExtractFilePath(Application.ExeName)+'updater.exe';
    if (FileExists(updater)) then
      begin
      if (MessageDlg('Обновить программу до более новой версии?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
        begin
        winexec(PChar(updater), SW_SHOWNORMAL);
        Application.Terminate;
        end;
      end
    else
      MessageDlg('Отсутствует утилита обновления '+updater+'!', mtError, [mbOk], 0);
    end
  else if (rfile < lfile) then
    begin
    if (MessageDlg('Обновить программу в репозитории до более новой версии?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes) then
      begin
      if CopyFile(PChar(Application.ExeName),PChar(repoFilePath+repoFileName), false) then
        MessageDlg('Обновление завершено успешно!', mtInformation, [mbOk], 0)
      else
        MessageDlg('Не удалось обновить репозиторий!', mtError, [mbOk], 0);
      end;
    end else
      MessageDlg('Программа не нуждается в обновлении!', mtInformation, [mbOk], 0)
  end else
    MessageDlg('Репозиторий указан неправильно! Проверьте конфигурационный файл.',
      mtInformation, [mbOk], 0)
end;

procedure TMainForm.StudentsDataSourceDataChange(Sender: TObject;
  Field: TField);
begin
StudentCardAction.Enabled := ((StudentsDataSource.State = dsBrowse)
  and (StudentsQuery.RecordCount > 0));
end;

procedure TMainForm.StudentCardActionExecute(Sender: TObject);
var
form : TStudentForm;
begin
form := TStudentForm.Create(self, StudentsQuery.FieldByName('st_pcode').AsString);
form.ShowModal;
form.Free;
end;

end.
