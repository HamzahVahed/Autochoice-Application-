program Project1;

uses
  Forms,
  Admin in '..\IT PAT 2021\PAT\PAT\Admin.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
