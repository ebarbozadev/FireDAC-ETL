object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 545
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveSQLReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 296
    Top = 136
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 422
    Top = 221
  end
  object ControlsystemConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Control-System')
    Connected = True
    LoginPrompt = False
    Left = 105
    Top = 149
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = ControlsystemConnection
    TableName = 'CLIENTE'
    Left = 112
    Top = 248
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDTable1
    Left = 360
    Top = 360
  end
  object FDTable1: TFDTable
    Connection = Sqlite_demoConnection
    TableName = 'CLIENTE'
    Left = 520
    Top = 312
  end
end
