program ProtocolBuffer;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2},
  Grijjy.ProtocolBuffers in '..\..\GrijjyFoundation\Grijjy.ProtocolBuffers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
