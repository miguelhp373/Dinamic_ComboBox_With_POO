unit DinamicComboBoxListReturn;

interface

uses
  Classes, Windows, Messages, SysUtils, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TDinamicComboBoxListReturn = class

  private
    { private declarations }

  public
    { public declarations }

   function returnDataForComboBox(filePath  : String): TStringList;

end;


implementation

{ TDinamicComboBoxListReturn }


function TDinamicComboBoxListReturn.returnDataForComboBox(filePath  : String): TStringList;
var
  FilePathLoad  : TextFile;
  AuxStringForStringList  : String;
begin

  Result  :=  TStringList.Create;

  AssignFile(FilePathLoad,filePath);
  reset(FilePathLoad);

  while not Eof(FilePathLoad) do
  begin
    ReadLn(FilePathLoad,AuxStringForStringList);
    Result.add(AuxStringForStringList);
  end;

  closeFile(FilePathLoad);  
  
end;

end.
