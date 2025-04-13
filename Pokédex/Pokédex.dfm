object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pok'#233'dex'
  ClientHeight = 709
  ClientWidth = 529
  Color = clCrimson
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Shape1: TShape
    Left = 24
    Top = 599
    Width = 185
    Height = 49
    Brush.Color = clInfoText
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 40
    Top = 168
    Width = 401
    Height = 313
    Brush.Color = clGray
    Shape = stRoundRect
  end
  object Shape3: TShape
    Left = 8
    Top = 8
    Width = 114
    Height = 97
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 8
    Top = 16
    Width = 127
    Height = 73
    Brush.Color = clAqua
    Shape = stCircle
  end
  object Shape5: TShape
    Left = 37
    Top = 24
    Width = 73
    Height = 17
    Shape = stCircle
  end
  object Shape6: TShape
    Left = 116
    Top = 8
    Width = 53
    Height = 33
    Brush.Color = clDarkred
    Shape = stCircle
  end
  object Shape7: TShape
    Left = 128
    Top = 16
    Width = 41
    Height = 9
    Brush.Color = clRed
    Shape = stCircle
  end
  object Shape8: TShape
    Left = 156
    Top = 8
    Width = 53
    Height = 33
    Brush.Color = clDarkgoldenrod
    Shape = stCircle
  end
  object Shape9: TShape
    Left = 168
    Top = 16
    Width = 41
    Height = 9
    Brush.Color = clYellow
    Shape = stCircle
  end
  object Shape10: TShape
    Left = 196
    Top = 8
    Width = 53
    Height = 33
    Brush.Color = clDarkgreen
    Shape = stCircle
  end
  object Shape11: TShape
    Left = 208
    Top = 16
    Width = 41
    Height = 9
    Brush.Color = clLime
    Shape = stCircle
  end
  object Shape12: TShape
    Left = 0
    Top = 120
    Width = 169
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape13: TShape
    Left = 156
    Top = 111
    Width = 25
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape14: TShape
    Left = 175
    Top = 97
    Width = 25
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape15: TShape
    Left = 208
    Top = 72
    Width = 33
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape16: TShape
    Left = 196
    Top = 88
    Width = 25
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape17: TShape
    Left = 57
    Top = 168
    Width = 384
    Height = 297
    Brush.Color = clScrollBar
    Shape = stRoundRect
  end
  object Shape18: TShape
    Left = 93
    Top = 207
    Width = 305
    Height = 210
    Brush.Color = clInfoBk
    Shape = stRoundRect
  end
  object lblNome: TLabel
    Left = 271
    Top = 423
    Width = 50
    Height = 20
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGrayText
    Font.Height = -23
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgPokemon: TImage
    Left = 128
    Top = 197
    Width = 330
    Height = 236
    Proportional = True
    Stretch = True
  end
  object Shape20: TShape
    Left = 232
    Top = 174
    Width = 17
    Height = 17
    Brush.Color = clCrimson
    Shape = stCircle
  end
  object Shape21: TShape
    Left = 255
    Top = 174
    Width = 17
    Height = 17
    Brush.Color = clCrimson
    Shape = stCircle
  end
  object lblID: TLabel
    Left = 86
    Top = 174
    Width = 36
    Height = 32
    Caption = 'ID:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -25
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape19: TShape
    Left = 88
    Top = 502
    Width = 297
    Height = 51
    Brush.Color = clGray
    Shape = stRoundRect
  end
  object Shape22: TShape
    Left = 33
    Top = 591
    Width = 176
    Height = 49
    Brush.Color = clWindowFrame
    Shape = stRoundRect
  end
  object btnBuscar: TSpeedButton
    Left = 33
    Top = 591
    Width = 176
    Height = 49
    Cursor = crHandPoint
    Caption = 'Buscar Pok'#233'mon'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -18
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    OnClick = btnBuscarClick
  end
  object lblTipo: TLabel
    Left = 82
    Top = 423
    Width = 38
    Height = 20
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -23
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape23: TShape
    Left = 232
    Top = 56
    Width = 33
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape25: TShape
    Left = 479
    Top = 40
    Width = 49
    Height = 641
    Brush.Color = clCrimson
  end
  object Shape26: TShape
    Left = 478
    Top = 40
    Width = 11
    Height = 641
    Brush.Color = clDarkred
  end
  object Shape27: TShape
    Left = 0
    Top = 670
    Width = 528
    Height = 19
    Brush.Color = clDarkred
  end
  object Shape28: TShape
    Left = 255
    Top = 40
    Width = 273
    Height = 17
    Brush.Color = clDarkred
  end
  object Shape24: TShape
    Left = 478
    Top = 599
    Width = 50
    Height = 11
    Brush.Color = clDarkred
  end
  object Shape29: TShape
    Left = 479
    Top = 117
    Width = 50
    Height = 11
    Brush.Color = clDarkred
  end
  object edtBusca: TEdit
    Left = 93
    Top = 502
    Width = 292
    Height = 46
    Color = clWhite
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -30
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Text = 'Nome ou N'#250'mero'
  end
  object MediaPlayer1: TMediaPlayer
    Left = 232
    Top = 47
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 1
    OnNotify = MediaPlayer1Notify
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://pokeapi.co/api/v2/pokemon'
    Params = <>
    SynchronizedEvents = False
    Left = 224
    Top = 280
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 184
    Top = 280
  end
  object RESTResponse1: TRESTResponse
    Left = 144
    Top = 280
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 104
    Top = 280
  end
end
