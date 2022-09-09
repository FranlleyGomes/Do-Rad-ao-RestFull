unit DUP20.Model.Entidades.Factory;

interface

uses
  DUP20.Model.Entidades.Interfaces;

Type

  TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
  private
    FProduto : iModelEntidade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntidadeFactory;
    Function Produto: iModelEntidade;
  end;

implementation

uses
  DUP20.Model.Entidades.Produto;

{ TModelEntidades }

function TModelEntidadesFactory.Produto: iModelEntidade;
begin

  if not Assigned(FProduto) then
    FProduto := TModelEntidadeProduto.New;
  Result := FProduto;

end;

constructor TModelEntidadesFactory.Create;
begin

end;

destructor TModelEntidadesFactory.Destroy;
begin

  inherited;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
  Result := Self.Create;
end;

end.
