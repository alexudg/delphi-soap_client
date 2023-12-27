program soap;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  calculator in 'calculator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
