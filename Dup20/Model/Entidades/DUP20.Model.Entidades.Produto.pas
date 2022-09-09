unit DUP20.Model.Entidades.Produto;

interface

uses
  DUP20.Model.Entidades.Interfaces, Data.DB, DUp20.Model.Conexao.Interfaces;

Type
  TModelEntidadeProduto = class(TInterfacedObject, iModelEntidade)
  private
   FQuery : iModelQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidade;
    function DataSet(aValue: TDataSource): iModelEntidade;
    function Open: iModelEntidade;
  end;

implementation

uses
  DUp20.Model.Conexao.Factory;

{ TModelEntidadeProduto }

constructor TModelEntidadeProduto.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeProduto.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeProduto.Destroy;
begin

  inherited;
end;

class function TModelEntidadeProduto.New: iModelEntidade;
begin
  Result := Self.Create;
end;

function TModelEntidadeProduto.Open: iModelEntidade;
begin
   Result := Self;
   FQuery.OpenTable('CADCLIENTE');


end;

end.
