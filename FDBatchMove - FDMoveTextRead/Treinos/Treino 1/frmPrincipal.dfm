object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 536
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 450
    Top = 79
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = ControlsystemConnection
    TableName = 'PEDIDO'
    Left = 72
    Top = 152
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDTable1
    Left = 80
    Top = 224
  end
  object FDTable1: TFDTable
    Connection = Sqlite_demoConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'PEDIDO'
    Left = 440
    Top = 288
  end
  object ControlsystemConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Control-System')
    LoginPrompt = False
    Left = 69
    Top = 33
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveSQLReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 304
    Top = 224
  end
end
