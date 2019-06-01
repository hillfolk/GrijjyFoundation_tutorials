unit uData;

interface

uses Grijjy.ProtocolBuffers;

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

end.
