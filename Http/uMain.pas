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
        procedure FormCreate(Sender : TObject);
        procedure cbMethodChange(Sender : TObject);
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
    LHttpClient := TgoHttpClient.Create(True);

    LHttpClient.UserAgent   := 'QWM 1.0';
    LHttpClient.ContentType := 'application/json';
    try
        LHttpClient.RequestBody := mRequestData.Text;
        case cbMethod.ItemIndex of
            // GET
            // POST
            // PUT
            // DELETE

            0 : begin

                    LResponseString := LHttpClient.Get(edtURL.Text);
                end;
            1 : begin
                    LResponseString := LHttpClient.POST(edtURL.Text);

                end;
            2 : begin
                    LResponseString := LHttpClient.Put(edtURL.Text);

                end;
            3 : begin
                    LResponseString := LHttpClient.Delete(edtURL.Text);
                end;

        end;
        if LHttpClient.ResponseStatusCode = 200 then begin
            mResponseData.Text := LResponseString;
        end;
    finally
        FHttpClientManager.Release(LHttpClient);
    end;
end;

procedure TfxMain.cbMethodChange(Sender : TObject);
begin
    if cbMethod.ItemIndex < 0 then begin
        cbMethod.ItemIndex := 0;
    end;
end;

procedure TfxMain.FormCreate(Sender : TObject);
begin
    FHttpClientManager := TgoHttpClientManager.Create;
end;

end.
