program Project1;

uses
  Vcl.Forms,
  Pok�dex in 'Pok�dex.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pok�dex';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
