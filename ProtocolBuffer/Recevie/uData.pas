unit uData;

interface

uses Grijjy.ProtocolBuffers, System.SysUtils;

type
    TMessageType = (Data, Command);

type
    TMessageHeader = record
    public
        [Serialize(1)]
        Token : String;
        [Serialize(2)]
        MessageType : TMessageType;
    public
        procedure Initialize;
    end;

type
    TMessage = record
    public
        [Serialize(1)]
        Header : TMessageHeader;
        [Serialize(2)]
        Content : String;
        [Serialize(3)]
        MsgTime : string;
    public
        procedure Initialize;
        function toString : string;
    end;

implementation

{ TMessageHeader }

procedure TMessageHeader.Initialize;
begin
    //
end;

{ TMessage }

procedure TMessage.Initialize;
begin
    //
end;

function TMessage.toString : string;
begin
    Result := '';
    Result := Result +'MessageType:'+ IntToStr(ord(Self.Header.MessageType))+ 'Token:' + Self.Header.Token +
        'Content' + Self.Content + 'MessageTime:' + Self.MsgTime;
end;

end.
