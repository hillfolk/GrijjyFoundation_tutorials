object fxReceiverDataView: TfxReceiverDataView
  Left = 0
  Top = 0
  Caption = 'ReceiverDataView'
  ClientHeight = 200
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 120
    Top = 8
    Width = 385
    Height = 184
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object WSocketServer1: TWSocketServer
    LineEnd = #13#10
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    LocalPort = '0'
    SocksLevel = '5'
    ExclusiveAddr = False
    ComponentOptions = []
    SocketErrs = wsErrTech
    MultiListenSockets = <>
    Left = 32
    Top = 16
  end
end
