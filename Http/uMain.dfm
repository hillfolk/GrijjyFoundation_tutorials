object fxMain: TfxMain
  Left = 0
  Top = 0
  Caption = 'fxMain'
  ClientHeight = 417
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblURL: TLabel
    Left = 8
    Top = 11
    Width = 26
    Height = 13
    Caption = 'URL :'
  end
  object btnHttpRequest: TButton
    Left = 451
    Top = 335
    Width = 115
    Height = 57
    Caption = 'REQUEST'
    TabOrder = 0
    OnClick = btnHttpRequestClick
  end
  object edtURL: TEdit
    Left = 40
    Top = 8
    Width = 431
    Height = 21
    TabOrder = 1
  end
  object cbMethod: TComboBox
    Left = 477
    Top = 8
    Width = 97
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'GET'
    Items.Strings = (
      'GET'
      'POST'
      'PUT'
      'DELETE')
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 35
    Width = 558
    Height = 286
    ActivePage = tsRequest
    TabOrder = 3
    object tsRequest: TTabSheet
      Caption = 'Request'
      object mRequestData: TMemo
        Left = 11
        Top = 11
        Width = 529
        Height = 238
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Response'
      ImageIndex = 1
      object mResponseData: TMemo
        Left = 8
        Top = 8
        Width = 529
        Height = 241
        TabOrder = 0
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 398
    Width = 574
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
