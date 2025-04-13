program Project1;

uses
  Vcl.Forms,
  Pokédex in 'Pokédex.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pokédex';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
