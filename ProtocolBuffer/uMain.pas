unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket;

type
  TfxSendView = class(TForm)
    WSocket1: TWSocket;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fxSendView: TfxSendView;

implementation

{$R *.dfm}

end.
