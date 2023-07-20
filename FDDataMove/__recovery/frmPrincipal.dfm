object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 443
  ClientWidth = 602
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
    Reader = FDBatchMoveTextReader1
    Writer = FDBatchMoveTextWriter1
    Mode = dmDelete
    Options = [poClearDest, poIdentityInsert, poCreateDest, poSkipUnmatchedDestFields, poUseTransactions]
    Mappings = <>
    LogFileName = 'Tabela_Produtos.txt'
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
    Connection = Sqlite_demoConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CST_PIS'
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
    IndexFieldNames = 'IDITEM_PEDIDO'
    Connection = Banco_teste2Connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CLIENTE'
    Left = 464
    Top = 176
  end
  object FDBatchMoveTextReader1: TFDBatchMoveTextReader
    FileName = 
      'C:\Users\geren\OneDrive\Documentos\Delphi\FireDAC ETL\FDBatchMov' +
      'e - FDMoveTextRead\tb_sped_pis.txt'
    DataDef.Fields = <
      item
        FieldName = 'TIPO_UTIL'
        DataType = atString
        FieldSize = 82
      end
      item
        FieldName = 'DESC_TIPO'
      end
      item
        FieldName = 'DT_INI'
      end
      item
        FieldName = 'DT_FIM'
      end>
    DataDef.Delimiter = '"'
    DataDef.Separator = ';'
    DataDef.RecordFormat = rfCustom
    DataDef.WithFieldNames = True
    Left = 512
    Top = 392
  end
  object FDBatchMoveTextWriter1: TFDBatchMoveTextWriter
    DataDef.Fields = <>
    Left = 176
    Top = 256
  end
end
