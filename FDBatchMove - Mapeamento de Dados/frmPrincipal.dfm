object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 440
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 534
    Top = 185
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 16
    Width = 593
    Height = 153
    TabOrder = 1
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveSQLReader1
    Writer = FDBatchMoveDataSetWriter1
    Mode = dmDelete
    Mappings = <
      item
        SourceFieldName = 'IDPEDIDO'
        DestinationFieldName = 'IDPEDIDO'
      end
      item
        SourceFieldName = 'IDPRODUTO'
        DestinationFieldName = 'IDPRODUTO'
      end
      item
        SourceFieldName = 'QUANTIDADE'
        DestinationFieldName = 'QUANTIDADE'
      end
      item
        SourceFieldName = 'TOTAL'
        DestinationFieldName = 'TOTAL'
      end>
    LogFileName = 'Data.log'
    LogFileEncoding = ecUTF8
    Left = 192
    Top = 384
  end
  object Sqlite_demoConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    Connected = True
    LoginPrompt = False
    Left = 310
    Top = 381
  end
  object ControlsystemConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Control-System')
    Connected = True
    LoginPrompt = False
    Left = 65
    Top = 333
  end
  object FDBatchMoveSQLReader1: TFDBatchMoveSQLReader
    Connection = ControlsystemConnection
    TableName = 'ITEM_PEDIDO'
    Left = 64
    Top = 384
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDTable2
    Left = 224
    Top = 328
  end
  object FDTable1: TFDTable
    Active = True
    Connection = Sqlite_demoConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ITEM_PEDIDO'
    Left = 344
    Top = 328
  end
  object Banco_teste2Connection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Banco_Teste2')
    Connected = True
    LoginPrompt = False
    Left = 465
    Top = 235
  end
  object FDTable2: TFDTable
    Active = True
    Connection = Banco_teste2Connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CLIENTE'
    Left = 464
    Top = 176
  end
end
