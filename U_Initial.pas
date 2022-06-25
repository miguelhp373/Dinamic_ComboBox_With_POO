unit U_Initial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFr_Initial = class(TForm)
    Label1: TLabel;
    cb_stateSelection: TComboBox;
    optionSelected: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cb_stateSelectionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fr_Initial: TFr_Initial;

  ArrayListForCombo : TStringList;

implementation

uses  DinamicComboBoxListReturn;

{$R *.dfm}

procedure TFr_Initial.FormCreate(Sender: TObject);
var
  InstanceForCombo  : TDinamicComboBoxListReturn;
  ListCounter       : Integer;
begin

  InstanceForCombo  :=  TDinamicComboBoxListReturn.Create;

  for ListCounter :=  0 to  Pred(InstanceForCombo.returnDataForComboBox('statesListFromBrazil.txt').Count)  do
  begin
    cb_stateSelection.Items.add(InstanceForCombo.returnDataForComboBox('statesListFromBrazil.txt')[ListCounter]);
  end;

  optionSelected.Caption      :=  '';
  cb_stateSelection.ItemIndex :=  0;  

end;

procedure TFr_Initial.cb_stateSelectionChange(Sender: TObject);
begin
  optionSelected.Caption  :=  cb_stateSelection.Text;
end;

end.
