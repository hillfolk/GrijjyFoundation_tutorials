unit uMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, OverbyteIcsWndControl, OverbyteIcsWSocket, Vcl.StdCtrls, uData,
    Grijjy.ProtocolBuffers, scControls, scModernControls, scGPControls;

type
    TfxSendView = class(TForm)
        WSocket1 : TWSocket;
        btnSendData : TButton;
        scGPToggleSwitch1 : TscGPToggleSwitch;
        procedure btnSendDataClick(Sender : TObject);
        procedure scGPToggleSwitch1ChangeState(Sender : TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    fxSendView : TfxSendView;

implementation

{$R *.dfm}

procedure TfxSendView.btnSendDataClick(Sender : TObject);
var
    LData     : TMessage;
    LByteData : TBytes;
begin

    if WSocket1.State = wsOpened then begin
        LData.Header.Token       := 'token_xxxx';
        LData.Header.MessageType := Data;
        LData.Content            := 'XXDXXXDXXXXXD';
        LData.MsgTime            := DateTimeToStr(now);
        LByteData                := TgoProtocolBuffer.Serialize(LData);
        WSocket1.Send(LByteData, Length(LByteData));
    end;

end;

procedure TfxSendView.scGPToggleSwitch1ChangeState(Sender : TObject);
begin
    if scGPToggleSwitch1.State = TscSwitchState.scswOn then begin
        WSocket1.Proto := 'tcp';
        WSocket1.Addr  := 'localhost';
        WSocket1.Port  := '5000';
        WSocket1.Connect;

        WSocket1.Port     := PortEdit.Text;
        WSocket1.Addr     := HostnameEdit.Text;
        WSocket1.LineMode := TRUE;
        WSocket1.LineEnd  := EndOfLine;
        WSocket1.Connect;
    end else begin
        WSocket1.Close;
    end;

end;

end.
