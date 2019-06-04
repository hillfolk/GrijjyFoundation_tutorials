unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfxMain = class(TForm)
    btnHttpRequest: TButton;
    edtURL: TEdit;
    lblURL: TLabel;
    cbMethod: TComboBox;
    PageControl1: TPageControl;
    tsRequest: TTabSheet;
    TabSheet2: TTabSheet;
    mResponseData: TMemo;
    mRequestData: TMemo;
    StatusBar1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fxMain: TfxMain;

implementation

{$R *.dfm}

end.
