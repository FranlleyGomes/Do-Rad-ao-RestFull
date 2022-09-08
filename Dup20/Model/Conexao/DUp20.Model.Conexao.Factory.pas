unit DUp20.Model.Conexao.Factory;

interface

uses
  DUp20.Model.Conexao.Interfaces;

Type
  TModelConexaoFactory = class(TInterfacedObject, iModelConexaoFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConexaoFactory;
    function Conexao: iModelConexao;
    function Query: iModelQuery;
  end;

implementation

uses
  DUp20.Model.Conexao.Firedac.Conexao, DUp20.Model.Conexao.Firedac.Query;

{ TModelConexaoFactory }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
   Result := TModelConexaoFiredacConexao.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

function TModelConexaoFactory.Query: iModelQuery;
begin
  Result := TModelConexaoFiredacQuery.New(Self.Conexao);
end;

end.
