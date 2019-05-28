unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, OverbyteIcsWSocketS, Vcl.StdCtrls;

type
  TfxReceiverDataView = class(TForm)
    WSocketServer1: TWSocketServer;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fxReceiverDataView: TfxReceiverDataView;

implementation

{$R *.dfm}

end.
