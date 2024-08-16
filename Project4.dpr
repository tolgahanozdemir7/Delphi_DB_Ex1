program Project4;

uses
  Vcl.Forms,
  DB_ora_ornek_1 in 'DB_ora_ornek_1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
