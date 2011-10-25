program Project1;

uses
  Forms,
  emailcamp in 'emailcamp.pas' {Form1},
  RegExpr in 'RegExpr.pas'  ;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
