program ProtocolBufferSender;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fxSendView},
  Grijjy.ProtocolBuffers in '..\..\..\GrijjyFoundation\Grijjy.ProtocolBuffers.pas',
  uData in 'uData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfxSendView, fxSendView);
  Application.Run;
end.
