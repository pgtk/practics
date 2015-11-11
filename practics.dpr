program practics;

uses
  Forms,
  dep_main in 'dep_main.pas' {MainForm},
  dep_studentform in 'dep_studentform.pas' {StudentForm},
  dep_parentsform in 'dep_parentsform.pas' {ParentsForm},
  dep_practics in 'dep_practics.pas' {PracticsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
