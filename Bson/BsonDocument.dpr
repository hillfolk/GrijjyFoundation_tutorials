program BsonDocument;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fxMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfxMain, fxMain);
  Application.Run;
end.
