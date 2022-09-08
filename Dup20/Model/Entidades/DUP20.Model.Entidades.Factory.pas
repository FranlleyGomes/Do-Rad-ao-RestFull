unit DUP20.Model.Entidades.Factory;

interface

uses
  DUP20.Model.Entidades.Interfaces;

Type


   TModelEntidadesFactory = class (TInterfacedObject, iModelEntidadeFactory)
   private

   public
      constructor Create;
      destructor Destroy ; override;
      class function New : iModelEntidadeFactory;
     Function Produto : iModelEntidade;
   end;

 implementation

uses
  DUP20.Model.Entidades.Produto;

{ TModelEntidades }

function TModelEntidadesFactory.Produto: iModelEntidade;
begin
  Result := TModelEntidadeProduto.New;
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
