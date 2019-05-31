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
        Memo1 : TMemo;
        procedure btnSendDataClick(Sender : TObject);
        procedure scGPToggleSwitch1ChangeState(Sender : TObject);
    private
        { Private declarations }
        procedure Log(ALog : string);
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
    LSendCnt  : Integer;
begin

    if WSocket1.State = wsOpened then begin
    try
        LData.Header.Token       := 'token_xxxx';
        LData.Header.MessageType := Data;
        LData.Content            := 'XXDXXXDXXXXXD';
        LData.MsgTime            := DateTimeToStr(now);
        LByteData                := TgoProtocolBuffer.Serialize(LData);

        LSendCnt := WSocket1.Send(LByteData, Length(LByteData));
        Log(IntToStr(LSendCnt));
    except on E: Exception do
    Log(E.Message);
    end;

    end;

end;

procedure TfxSendView.Log(ALog : string);
begin
    Memo1.Lines.Insert(0, ALog);
end;

procedure TfxSendView.scGPToggleSwitch1ChangeState(Sender : TObject);
begin
    if scGPToggleSwitch1.State = TscSwitchState.scswOn then begin
        try
            WSocket1.Proto := 'tcp';
            WSocket1.Addr  := 'localhost';
            WSocket1.Port  := '5000';
            WSocket1.Connect;
        except
            on E : Exception do
                ShowMessage(E.Message);
        end;

    end else begin
        WSocket1.Close;
    end;

end;

end.
