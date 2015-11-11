unit dep_studentform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Spin, DB, ADODB, Grids, DBGrids,
  Mask, ExtCtrls, QrCtrls, Menus, Word2000, OleServer, jpeg, dbTables;

type
  TStudentForm = class(TForm)
    PageControl: TPageControl;
    OkBtn: TButton;
    CancelBtn: TButton;
    PersonalSheet: TTabSheet;
    ParentsSheet: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PhoneGroupBox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AddrGroupBox: TGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    DiplomeSheet: TTabSheet;
    Label11: TLabel;
    DocumSheet: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    InGroupBox: TGroupBox;
    Label17: TLabel;
    ParentsQuery: TADOQuery;
    ParentsCommand: TADOCommand;
    ParentsDataSourse: TDataSource;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    PlaceQuery: TADOQuery;
    PlaceDataSource: TDataSource;
    ParentsGroupBox: TGroupBox;
    PDelBtn: TButton;
    ParentsGrid: TDBGrid;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GroupBox3: TGroupBox;
    PlaceComboBox: TDBLookupComboBox;
    StPhoto: TDBImage;
    IsMaleEdit: TDBComboBox;
    TestsEdit: TDBComboBox;
    HotelCheckBox: TDBCheckBox;
    HomePhoneEdit: TDBEdit;
    CellPhoneEdit: TDBEdit;
    WorkPhoneEdit: TDBEdit;
    AddressEdit: TDBEdit;
    FNameEdit: TDBEdit;
    MNameEdit: TDBEdit;
    LNameEdit: TDBEdit;
    BirthDateEdit: TDBEdit;
    BirthDateLookupBtn: TButton;
    DocumentsEdit: TDBMemo;
    PassptDeptEdit: TDBMemo;
    PassptSeriaEdit: TDBEdit;
    PassptNumEdit: TDBEdit;
    PassptDateEdit: TDBEdit;
    GetDateLookupBtn: TButton;
    PolisNumEdit: TDBEdit;
    PolisSeriaEdit: TDBEdit;
    INNEdit: TDBEdit;
    SocialNumEdit: TDBEdit;
    BankDepEdit: TDBEdit;
    BankNumEdit: TDBEdit;
    DiplGetDateEdit: TDBEdit;
    DiplGetDateLookupBtn: TButton;
    DiplNumEdit: TDBEdit;
    DiplRegNumEdit: TDBEdit;
    ZipCodeEdit: TDBEdit;
    Label35: TLabel;
    IsCommercialCheckBox: TDBCheckBox;
    SchoolComboBox: TDBLookupComboBox;
    SchoolQuery: TADOQuery;
    SchoolDataSource: TDataSource;
    ParentLessEdit: TDBCheckBox;
    StudentQuery: TADOQuery;
    StudentsDataSource: TDataSource;
    InYearEdit: TDBEdit;
    OutYearEdit: TDBEdit;
    GroupBox4: TGroupBox;
    FirstDiplomeFormBtn: TButton;
    SecondDiplomeFormBtn: TButton;
    IsDiplomeCopyCheckBox: TCheckBox;
    DiplomingGroupBox: TGroupBox;
    Label18: TLabel;
    DProjectEdit: TDBEdit;
    Label19: TLabel;
    ExamDateEdit: TDBEdit;
    ExamDateLookupBtn: TButton;
    DMarkEdit: TDBEdit;
    Label23: TLabel;
    GOSGroupBox: TGroupBox;
    Label36: TLabel;
    GOSDateEdit: TDBEdit;
    GOSLookupBtn: TButton;
    Label37: TLabel;
    GOSMarkEdit: TDBEdit;
    Label38: TLabel;
    GOSNameEdit: TDBEdit;
    Label39: TLabel;
    ComissionDateEdit: TDBEdit;
    ComissionDateLookupBtn: TButton;
    Label40: TLabel;
    BeginSchoolComboBox: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Label41: TLabel;
    LangLookupComboBox: TDBLookupComboBox;
    LangQuery: TADOQuery;
    LangSource: TDataSource;
    DBCheckBox2: TDBCheckBox;
    SprBtn: TButton;
    IsOldDiplomeCheckBox: TCheckBox;
    IsSlimCheckBox: TCheckBox;
    AdditionalTabSheet: TTabSheet;
    DiplomCopyBtn: TButton;
    isDuplicateCheckBox: TCheckBox;
    InKindCheckBox: TDBCheckBox;
    OutKindCheckBox: TDBCheckBox;
    WordCheckBox: TCheckBox;
    StudentQueryst_FName: TStringField;
    StudentQueryst_MName: TStringField;
    StudentQueryst_LName: TStringField;
    StudentQueryst_BirthDate: TDateTimeField;
    StudentQueryst_Education: TStringField;
    StudentQueryst_ZipCode: TStringField;
    StudentQueryst_Address: TStringField;
    StudentQueryst_Documents: TStringField;
    StudentQueryst_OldSchool: TStringField;
    StudentQueryst_Tests: TStringField;
    StudentQueryst_InYear: TSmallintField;
    StudentQueryst_OutYear: TSmallintField;
    StudentQueryst_DProject: TStringField;
    StudentQueryst_DMark: TWordField;
    StudentQueryst_DiplGetDate: TDateTimeField;
    StudentQueryst_ExamDate: TDateTimeField;
    StudentQueryst_DiplNum: TStringField;
    StudentQueryst_DiplRegNum: TIntegerField;
    StudentQueryst_StudNumber: TSmallintField;
    StudentQueryst_ParentLess: TBooleanField;
    StudentQueryst_Hotel: TBooleanField;
    StudentQueryst_IsMale: TBooleanField;
    StudentQueryst_oldsccode: TGuidField;
    StudentQueryst_sccode: TGuidField;
    StudentQueryst_WorkPhone: TStringField;
    StudentQueryst_HomePhone: TStringField;
    StudentQueryst_Attributes: TWordField;
    StudentQueryst_IsCommercial: TBooleanField;
    StudentQueryst_CellPhone: TStringField;
    StudentQueryst_PassptDate: TDateTimeField;
    StudentQueryst_PassptDept: TStringField;
    StudentQueryst_Passport: TStringField;
    StudentQueryst_INN: TStringField;
    StudentQueryst_PolisSeria: TIntegerField;
    StudentQueryst_PolisNum: TLargeintField;
    StudentQueryst_Polis: TStringField;
    StudentQueryst_SocialNum: TStringField;
    StudentQueryst_BankNum: TStringField;
    StudentQueryst_BankDep: TStringField;
    StudentQueryst_Photo: TBlobField;
    StudentQueryst_Gender: TStringField;
    StudentQueryst_pcode: TGuidField;
    StudentQueryst_grcode: TGuidField;
    StudentQueryst_plcode: TGuidField;
    StudentQueryst_FullName: TStringField;
    StudentQueryst_Name: TStringField;
    StudentQueryst_oldcode: TLargeintField;
    StudentQueryst_Phones: TStringField;
    StudentQueryst_GOSDate: TDateTimeField;
    StudentQueryst_GOSMark: TWordField;
    StudentQueryst_GOSName: TStringField;
    StudentQueryst_ComissionDate: TDateTimeField;
    StudentQueryst_IsAdditional: TBooleanField;
    StudentQueryst_Lang: TWordField;
    StudentQueryst_IsRed: TBooleanField;
    StudentQueryst_DFName: TStringField;
    StudentQueryst_DMName: TStringField;
    StudentQueryst_DLName: TStringField;
    StudentQueryst_DFullName: TStringField;
    StudentQueryst_isInZaoch: TBooleanField;
    StudentQueryst_isOutZaoch: TBooleanField;
    StudentQueryst_PassptSeria: TStringField;
    StudentQueryst_PassptNum: TStringField;
    BirthPlaceEdit: TDBEdit;
    Label42: TLabel;
    StudentQueryst_BirthPlace: TStringField;
    Label43: TLabel;
    DocumentsSeriaEdit: TDBEdit;
    Label44: TLabel;
    DocumentsNumberEdit: TDBEdit;
    DocumentsYearEdit: TDBEdit;
    Label45: TLabel;
    Label15: TLabel;
    StudNumberEdit: TDBEdit;
    StudentQueryst_DocumentsYear: TIntegerField;
    StudentQueryst_DocumentsSeria: TStringField;
    StudentQueryst_DocumentsNumber: TStringField;
    PractSheet: TTabSheet;
    PractGrid: TDBGrid;
    PractDetailsBtn: TButton;
    PractQuery: TADOQuery;
    PractSource: TDataSource;
    Label46: TLabel;
    AVGMarkLabel: TDBText;
    StudentQueryst_pgpcode: TIntegerField;
    StudentQueryst_avgMark: TBCDField;
    procedure IsMaleEditChange(Sender: TObject);
    procedure TestsEditChange(Sender: TObject);
    procedure ParentLessEditClick(Sender: TObject);
    constructor Create(owner: TComponent; studentCode: string);
    procedure PDelBtnClick(Sender: TObject);
    procedure PractDetailsBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentForm   : TStudentForm;

implementation

uses dep_main, dep_parentsform, dep_practics;

{$R *.dfm}

constructor TStudentForm.Create(owner: TComponent; studentCode: string);
begin
inherited Create(owner);
//ParentsQuery.Connection := MainForm.Connection;
//LangQuery.Connection := MainForm.Connection;
try
  if not PlaceQuery.Active then
    PlaceQuery.Open;
  if not SchoolQuery.Active then
    SchoolQuery.Open;
  if not LangQuery.Active then
    LangQuery.Open;
  if StudentQuery.Active then
    StudentQuery.Close;
  StudentQuery.SQL.Clear;
  StudentQuery.SQL.Add(
    'SELECT *, dbo.getStudentAvgMark(st_pcode, 1) AS st_avgMark FROM Students WHERE (st_pcode = '''+
    studentCode+''')');
  StudentQuery.Open;
  if ParentsQuery.Active then
    ParentsQuery.Close;
  ParentsQuery.SQL.Clear;
  ParentsQuery.SQL.Add('SELECT * FROM Parents WHERE (pr_stcode = '''+
    StudentQuery.FieldByName('st_pcode').AsString+''')');
  ParentsQuery.Open;
  if PractQuery.Active then
    PractQuery.Close;
  PractQuery.SQL.Clear;
  PractQuery.SQL.Add('SELECT * FROM FnPractics, FpMarks WHERE (fpm_fpcode = fpk_pcode) '+
    'AND (fpk_grcode = '''+StudentQuery.FieldByName('st_grcode').AsString+''') '+
    ' AND (fpm_stcode = '''+StudentQuery.FieldByName('st_pcode').AsString+''') ORDER BY fpk_Number;');
  PractQuery.Open;
  PersonalSheet.Enabled := false;
  DocumSheet.Enabled := false;
  DiplomeSheet.Enabled := false;
  ParentLessEdit.Enabled := false;
except
  on e: Exception do
    MessageDlg('Произошла ошибка: '+e.Message, mtError, [mbOk], 0);
end; // try
end;

procedure TStudentForm.IsMaleEditChange(Sender: TObject);
begin
if IsMaleEdit.ItemIndex >= 0 then
  TestsEdit.ItemIndex := IsMaleEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Tests').AsString := TestsEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.TestsEditChange(Sender: TObject);
begin
if (TestsEdit.ItemIndex >= 0) and (TestsEdit.ItemIndex < 2) then
  IsMaleEdit.ItemIndex := TestsEdit.ItemIndex;
StudentQuery.FieldByName('st_IsMale').AsBoolean := (IsMaleEdit.ItemIndex > 0);
StudentQuery.FieldByName('st_Gender').AsString := IsMaleEdit.Text;
OkBtn.Enabled := (TestsEdit.ItemIndex>=0) and (IsMaleEdit.ItemIndex>=0);
end;

procedure TStudentForm.ParentLessEditClick(Sender: TObject);
begin
if (StudentQuery.State = dsInsert) then
 begin
 ParentsQuery.Active := false;
 ParentsGroupBox.Visible := false;
end
else if (StudentQuery.State = dsEdit) then
 begin
 ParentsQuery.Active := not ParentLessEdit.Checked;
 ParentsGroupBox.Visible := not ParentLessEdit.Checked;
end;
end;

procedure TStudentForm.PDelBtnClick(Sender: TObject);
var
form : TParentsForm;
begin
form := TParentsForm.Create(self);
if (not ParentsQuery.FieldByName('pr_isNativ').asBoolean) then
  form.IsNativComboBox.ItemIndex := 0;
if (ParentsQuery.FieldByName('pr_isMother').asBoolean) then
  form.IsMotherComboBox.ItemIndex := 1;
form.FNameEdit.Text := ParentsQuery.FieldByName('pr_FName').AsString;
form.MNameEdit.Text := ParentsQuery.FieldByName('pr_MName').AsString;
form.LNameEdit.Text := ParentsQuery.FieldByName('pr_LName').AsString;
form.WorkPhoneEdit.Text := ParentsQuery.FieldByName('pr_WorkPhone').AsString;
form.HomePhoneEdit.Text := ParentsQuery.FieldByName('pr_HomePhone').AsString;
form.CellPhoneEdit.Text := ParentsQuery.FieldByName('pr_CellPhone').AsString;
form.JobPlaceEdit.Text := ParentsQuery.FieldByName('pr_JobPlace').AsString;
form.JobEdit.Text := ParentsQuery.FieldByName('pr_Job').AsString;
form.NoteEdit.Text := ParentsQuery.FieldByName('pr_Note').AsString;
form.setEnabled(false);
form.ShowModal;
form.Free;
end;

procedure TStudentForm.PractDetailsBtnClick(Sender: TObject);
var
form : TPracticsForm;

begin
form := TPracticsForm.Create(self);
form.setForeign(PractQuery.FieldByName('fpk_isForeign').AsBoolean);
form.PlaceEdit.Text := PractQuery.FieldByName('fpm_place').AsString;
form.JobEdit.Text := PractQuery.FieldByName('fpm_job').AsString;
try
  if form.ShowModal = mrOk then
    begin
    ParentsCommand.CommandText := 'BEGIN TRAN updPract;';
    ParentsCommand.Execute;
    if form.isForeignCheckBox.Checked then
      begin
      // Set practics place and job
      ParentsCommand.CommandText :=
        'UPDATE FnPractics SET fpk_isForeign = 1 WHERE (fpk_pcode = '''+
        PractQuery.FieldByName('fpk_pcode').AsString+''')';
      ParentsCommand.Execute;
      ParentsCommand.CommandText :=
        'UPDATE fpMarks SET fpm_place = '''+form.PlaceEdit.Text+''', fpm_job = '''+
        form.JobEdit.Text+''' WHERE (fpm_stcode = '''+
        StudentQuery.FieldByName('st_pcode').AsString+''') AND (fpm_fpcode = '''+
        PractQuery.FieldByName('fpk_pcode').AsString+''')';
      ParentsCommand.Execute;
      end else
      begin
      // Set practics place and job
      ParentsCommand.CommandText :=
        'UPDATE FnPractics SET fpk_isForeign = 0 WHERE (fpk_pcode = '''+
        PractQuery.FieldByName('fpk_pcode').AsString+''')';
      ParentsCommand.Execute;
      ParentsCommand.CommandText :=
        'UPDATE fpMarks SET fpm_place = '''', fpm_job = '''' WHERE (fpm_stcode = '''+
        StudentQuery.FieldByName('st_pcode').AsString+''') AND (fpm_fpcode = '''+
        PractQuery.FieldByName('fpk_pcode').AsString+''')';
      ParentsCommand.Execute;
      end;
    ParentsCommand.CommandText := 'COMMIT TRAN updPract;';
    ParentsCommand.Execute;
    PractQuery.Requery;
    end;
except
  on e : Exception do
    begin
    MessageDlg('Ошибка: '+e.Message, mtError, [mbOk], 0);
    ParentsCommand.CommandText := 'ROLLBACK TRAN updPract;';
    ParentsCommand.Execute;
    end;
end; // try
form.Free;
end;

end.
