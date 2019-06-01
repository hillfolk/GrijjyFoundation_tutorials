unit uMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, OverbyteIcsWSocketS,
    Vcl.StdCtrls, scControls, scModernControls, Grijjy.ProtocolBuffers;

type
    TfxReceiverDataView = class(TForm)
        WSocketServer1 : TWSocketServer;
        Memo1 : TMemo;
        scToggleSwitch1 : TscToggleSwitch;
        procedure WSocketServer1SessionAvailable(Sender : TObject; ErrCode : Word);
        procedure WSocketServer1SessionConnected(Sender : TObject; ErrCode : Word);
        procedure scToggleSwitch1ChangeState(Sender : TObject);
        procedure WSocketServer1ClientConnect(Sender : TObject; Client : TWSocketClient; Error : Word);
        procedure WSocketServer1ClientCreate(Sender : TObject; Client : TWSocketClient);

    private
        { Private declarations }
        procedure ClientDataAvailable(Sender : TObject; Error : Word);
        procedure StartReceiver;
        procedure StopReceiver;
    public
        { Public declarations }
        procedure Log(AValue : string);
    end;

var
    fxReceiverDataView : TfxReceiverDataView;

implementation

{$R *.dfm}

procedure TfxReceiverDataView.ClientDataAvailable(Sender : TObject; Error : Word);
var
    Buf : array [0..127] of AnsiChar;
    Len : Integer;
begin
    Len := TWSocket(Sender).Receive(@Buf, Sizeof(Buf) - 1);
    if Len <= 0 then
        Exit;
    { Remove any trailing CR/LF }
    while (Len > 0) and (Buf[Len - 1] in [#13, #10]) do
        Dec(Len);
    { Nul terminate the data }
    Buf[Len] := #0;
    Log('DataAvailable: ''' + String(Buf) + '''');

end;

procedure TfxReceiverDataView.Log(AValue : string);
begin
    Memo1.Lines.Insert(0, AValue);
end;

procedure TfxReceiverDataView.scToggleSwitch1ChangeState(Sender : TObject);
begin
    if scToggleSwitch1.State = TscSwitchState.scswOn then begin
        StartReceiver;
    end else begin
        StopReceiver;
    end;

end;

procedure TfxReceiverDataView.StartReceiver;
begin
    Log('Server Starting....');
    WSocketServer1.Port  := '5000';
    WSocketServer1.Proto := 'tcp';
    WSocketServer1.Addr  := '0.0.0.0';
    WSocketServer1.Listen;

end;

procedure TfxReceiverDataView.StopReceiver;
begin
    WSocketServer1.Close;
end;

procedure TfxReceiverDataView.WSocketServer1ClientConnect(Sender : TObject; Client : TWSocketClient;
    Error : Word);
begin
    Log('WSocketServer1ClientConnected');
end;

procedure TfxReceiverDataView.WSocketServer1ClientCreate(Sender : TObject; Client : TWSocketClient);
begin
    Client.OnDataAvailable := ClientDataAvailable;
end;

procedure TfxReceiverDataView.WSocketServer1SessionAvailable(Sender : TObject; ErrCode : Word);
begin
    Log('Session Available');
end;

procedure TfxReceiverDataView.WSocketServer1SessionConnected(Sender : TObject; ErrCode : Word);
begin
    Log('Session Connected');
end;

end.
