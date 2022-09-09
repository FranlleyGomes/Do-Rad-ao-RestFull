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
  DUp20.Model.Firedac.Conexao, DUp20.Model.Firedac.Query;


{ TModelConexaoFactory }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
  Result := TModelFiredacConexao.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;


function TModelConexaoFactory.Query: iModelQuery;
begin
  Result := TModelFiredacQuery.New(Self.Conexao);
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

end.
