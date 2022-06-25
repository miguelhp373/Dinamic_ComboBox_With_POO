program DinamicComboBoxSample;

uses
  Forms,
  U_Initial in 'U_Initial.pas' {Fr_Initial},
  DinamicComboBoxListReturn in 'class\DinamicComboBoxListReturn.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFr_Initial, Fr_Initial);
  Application.Run;
end.
