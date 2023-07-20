unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.SQL, FireDAC.Comp.BatchMove.Text;

type
  TForm1 = class(TForm)
    FDBatchMove1: TFDBatchMove;
    Sqlite_demoConnection: TFDConnection;
    ControlsystemConnection: TFDConnection;
    FDBatchMoveSQLReader1: TFDBatchMoveSQLReader;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    FDTable1: TFDTable;
    Button1: TButton;
    Memo1: TMemo;
    Banco_teste2Connection: TFDConnection;
    FDTable2: TFDTable;
    FDBatchMoveTextReader1: TFDBatchMoveTextReader;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDBatchMove1.Execute;
  // Total de registros lidos
  Memo1.Lines.Add(FDBatchMove1.ReadCount.ToString + ' Total de registros lidos');

  // Total de registros inseridos no banco
  Memo1.Lines.Add(FDBatchMove1.InsertCount.ToString + ' Total de registros inseridos no banco');

  // Total de registros atualizados
  Memo1.Lines.Add(FDBatchMove1.UpdateCount.ToString + ' Total de registros atualizados');

  // Total de registros deletados
  Memo1.Lines.Add(FDBatchMove1.DeleteCount.ToString + ' Total de registros deletados');

  // Total de registros na base destino
  Memo1.Lines.Add(FDBatchMove1.WriteCount.ToString + ' Total de registros na base destino');

  // Total de registros que deu erro na importação
  Memo1.Lines.Add(FDBatchMove1.ErrorCount.ToString + ' Total de registros que deu erro na importação');
end;

end.
