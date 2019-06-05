unit uMain;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Grijjy.Http;

type
    TfxMain = class(TForm)
        btnHttpRequest : TButton;
        edtURL : TEdit;
        lblURL : TLabel;
        cbMethod : TComboBox;
        PageControl1 : TPageControl;
        tsRequest : TTabSheet;
        TabSheet2 : TTabSheet;
        mResponseData : TMemo;
        mRequestData : TMemo;
        StatusBar1 : TStatusBar;
        procedure btnHttpRequestClick(Sender : TObject);
    private
        { Private declarations }
        FHttpClientManager : TgoHttpClientManager;
    public
        { Public declarations }
    end;

var
    fxMain : TfxMain;

implementation

{$R *.dfm}

procedure TfxMain.btnHttpRequestClick(Sender : TObject);
var
    LHttpClient     : TgoHttpClient;
    LResponseString : string;
begin
    LHttpClient := TgoHttpClient.Create;
    try
        LResponseString := LHttpClient.Get(edtURL.Text, 100, 100);
    finally
        FHttpClientManager.Release(LHttpClient);
    end;
end;

end.
