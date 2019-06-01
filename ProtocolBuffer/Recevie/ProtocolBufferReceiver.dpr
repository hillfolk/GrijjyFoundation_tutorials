program ProtocolBufferReceiver;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fxReceiverDataView},
  uData in 'uData.pas',
  Grijjy.ProtocolBuffers in '..\..\..\GrijjyFoundation\Grijjy.ProtocolBuffers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfxReceiverDataView, fxReceiverDataView);
  Application.Run;
end.
