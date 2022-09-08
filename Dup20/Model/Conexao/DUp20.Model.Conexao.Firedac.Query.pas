unit DUp20.Model.Conexao.Firedac.Query;

interface

uses
  DUp20.Model.Conexao.Interfaces,
  Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Param, Firedac.Stan.Error, Firedac.DatS, Firedac.Phys.Intf,
  Firedac.DApt.Intf, Firedac.Stan.Async, Firedac.DApt, Data.DB,
  Firedac.Comp.DataSet, Firedac.Comp.Client;

Type
  TModelConexaoFiredacQuery = class(TInterfacedObject, iModelQuery)
  private
    FConexao: IModelConexao;
    FQuery: TFDQuery;
  public
    constructor Create(aValue: IModelConexao);
    destructor Destroy; override;
    class function New(aValue: IModelConexao): iModelQuery;
    function Query: TObject;
    function OpenTable(aTable: String): iModelQuery;
  end;

implementation

uses
  System.SysUtils, DUp20.Model.Conexao.Firedac.Conexao, Vcl.Dialogs;

{ TModelConexaoFiredacQuery }

constructor TModelConexaoFiredacQuery.Create(aValue: IModelConexao);
begin
  FConexao := aValue;
  FQuery := TFDQuery.Create(Nil);

  if not Assigned(FConexao) then
    FConexao := TModelConexaoFiredacConexao.New;

  FQuery.Connection := TFDConnection(FConexao.Connection);
end;

destructor TModelConexaoFiredacQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;


class function TModelConexaoFiredacQuery.New(aValue: IModelConexao)
  : iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelConexaoFiredacQuery.OpenTable(aTable: String): iModelQuery;
begin
  Result := Self;
  FQuery.Open('SELECT * FROM ' + aTable);

  ShowMessage(FQuery.Fields[0].ToString);
end;

function TModelConexaoFiredacQuery.Query: TObject;
begin
  Result := FQuery;
end;

end.
