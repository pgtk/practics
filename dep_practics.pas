unit dep_practics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TPracticsForm = class(TForm)
    isForeignCheckBox: TCheckBox;
    Label1: TLabel;
    PlaceEdit: TEdit;
    Button1: TButton;
    Label2: TLabel;
    JobEdit: TEdit;
    CancelBtn: TButton;
    OkBtn: TButton;
    procedure Button1Click(Sender: TObject);
    procedure isForeignCheckBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
  procedure setForeign(const foreign: boolean);
    { Public declarations }
  end;

var
  PracticsForm: TPracticsForm;

implementation
uses dep_main;

{$R *.dfm}

procedure TPracticsForm.setForeign(const foreign: boolean);
begin
isforeignCheckBox.Checked := foreign;
if foreign then
  begin
  PlaceEdit.Enabled := true;
  JobEdit.Enabled := true;
  end;
end;

procedure TPracticsForm.Button1Click(Sender: TObject);
begin
MainForm.NotYet;
end;

procedure TPracticsForm.isForeignCheckBoxClick(Sender: TObject);
begin
if isForeignCheckBox.Checked then
  begin
  PlaceEdit.Enabled := true;
  JobEdit.Enabled := true;
  end;
end;

end.
