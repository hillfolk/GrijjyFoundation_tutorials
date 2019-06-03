object fxSendView: TfxSendView
  Left = 0
  Top = 0
  Caption = 'ProtocolBuffer Sender'
  ClientHeight = 203
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 29
    Height = 13
    Caption = 'Token'
  end
  object Label2: TLabel
    Left = 16
    Top = 75
    Width = 39
    Height = 13
    Caption = 'Content'
  end
  object Label3: TLabel
    Left = 16
    Top = 20
    Width = 46
    Height = 13
    Caption = 'Msg Type'
  end
  object btnSendData: TButton
    Left = 270
    Top = 8
    Width = 113
    Height = 40
    Caption = 'Send Packet'
    TabOrder = 0
    OnClick = btnSendDataClick
  end
  object scGPToggleSwitch1: TscGPToggleSwitch
    Left = 303
    Top = 96
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
  object edToken: TEdit
    Left = 70
    Top = 45
    Width = 129
    Height = 21
    TabOrder = 2
    Text = 'token01'
  end
  object mLog: TMemo
    Left = 0
    Top = 152
    Width = 398
    Height = 51
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = -8
    ExplicitWidth = 583
  end
  object edtContent: TEdit
    Left = 70
    Top = 72
    Width = 129
    Height = 21
    TabOrder = 4
    Text = 'XXX_CONTENT'
  end
  object cbMessageType: TComboBox
    Left = 70
    Top = 16
    Width = 107
    Height = 21
    ItemIndex = 0
    TabOrder = 5
    Text = 'Data'
    Items.Strings = (
      'Data'
      'Command')
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
    Left = 296
    Top = 56
  end
end
