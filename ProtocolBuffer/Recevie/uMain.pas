unit uMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, OverbyteIcsWSocketS,
    Vcl.StdCtrls, scControls, scModernControls;

type
    TfxReceiverDataView = class(TForm)
        WSocketServer1 : TWSocketServer;
        Memo1 : TMemo;
        scToggleSwitch1 : TscToggleSwitch;
        procedure WSocketServer1DataAvailable(Sender : TObject; ErrCode : Word);
        procedure WSocketServer1SessionAvailable(Sender : TObject; ErrCode : Word);
        procedure WSocketServer1SessionConnected(Sender : TObject; ErrCode : Word);
        procedure scToggleSwitch1ChangeState(Sender : TObject);
    private
        { Private declarations }
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
    WSocketServer1.Port  := '5000';
    WSocketServer1.Proto := 'tcp';
    WSocketServer1.Addr  := '0.0.0.0';
    WSocketServer1.Listen;
end;

procedure TfxReceiverDataView.StopReceiver;
begin
    WSocketServer1.Close;
end;

procedure TfxReceiverDataView.WSocketServer1DataAvailable(Sender : TObject; ErrCode : Word);
var
    LClient : TWSocketClient;
    LCnt    : Integer;

begin

    LCnt := (Sender as TWSocketClient).ReadCount;
    Log(IntToStr(LCnt));
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
