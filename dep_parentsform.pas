unit dep_parentsform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TParentsForm = class(TForm)
    OkBtn: TButton;
    CancelBtn: TButton;
    FNameEdit: TLabeledEdit;
    MNameEdit: TLabeledEdit;
    LNameEdit: TLabeledEdit;
    WorkPhoneEdit: TLabeledEdit;
    HomePhoneEdit: TLabeledEdit;
    CellPhoneEdit: TLabeledEdit;
    JobPlaceEdit: TLabeledEdit;
    JobEdit: TLabeledEdit;
    IsMotherComboBox: TComboBox;
    IsNativComboBox: TComboBox;
    Label1: TLabel;
    NoteEdit: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  procedure setEnabled(ro : boolean);
    { Public declarations }
  end;

var
  ParentsForm: TParentsForm;

implementation

{$R *.dfm}

procedure TParentsForm.setEnabled(ro: boolean);
begin
  FNameEdit.Enabled := ro;
  MNameEdit.Enabled := ro;
  LNameEdit.Enabled := ro;
  WorkPhoneEdit.Enabled := ro;
  HomePhoneEdit.Enabled := ro;
  CellPhoneEdit.Enabled := ro;
  IsMotherComboBox.Enabled := ro;
  isNativComboBox.Enabled := ro;
  JobEdit.Enabled := ro;
  JobPlaceEdit.Enabled := ro;
  NoteEdit.Enabled := ro;
end;

procedure TParentsForm.FormCreate(Sender: TObject);
begin
  IsMotherComboBox.ItemIndex := 0;
  IsNativComboBox.ItemIndex := 1;
end;

end.
