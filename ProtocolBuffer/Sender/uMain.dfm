object fxSendView: TfxSendView
  Left = 0
  Top = 0
  Caption = 'SendDataView'
  ClientHeight = 192
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSendData: TButton
    Left = 240
    Top = 64
    Width = 113
    Height = 49
    Caption = 'SendData'
    TabOrder = 0
    OnClick = btnSendDataClick
  end
  object scGPToggleSwitch1: TscGPToggleSwitch
    Left = 24
    Top = 144
    Width = 80
    Height = 35
    TabOrder = 1
    TabStop = True
    Animation = True
    CanFocused = True
    CaptionOn = 'On'
    CaptionOff = 'Off'
    FrameColor = clBtnText
    FrameOnColor = clHighlight
    FramePressedColor = clBtnShadow
    ParentColor = True
    State = scswOff
    StyleKind = scswsStyled
    SwitchWidth = 40
    SwitchHeight = 20
    ShowCaption = True
    ThumbColor = clBtnText
    ThumbOnColor = clHighlightText
    ThumbPressedColor = clBtnText
    UseFontColorToStyleColor = False
    FrameColorAlpha = 255
    FrameOnColorAlpha = 255
    FramePressedColorAlpha = 255
    ThumbColorAlpha = 255
    ThumbOnColorAlpha = 255
    ThumbPressedColorAlpha = 255
    ThumbShadow = False
    FrameSolid = False
    FrameOnSolid = True
    FrameInside = False
    OnChangeState = scGPToggleSwitch1ChangeState
  end
  object WSocket1: TWSocket
    LineEnd = #13#10
    Addr = '127.0.0.1'
    Port = '5000'
    Proto = 'tcp'
    LocalAddr = '0.0.0.0'
    LocalAddr6 = '::'
    LocalPort = '0'
    SocksLevel = '5'
    ExclusiveAddr = False
    ComponentOptions = []
    SocketErrs = wsErrTech
    Left = 40
    Top = 80
  end
end