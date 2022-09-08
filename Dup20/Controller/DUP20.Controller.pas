unit DUP20.Controller;

interface

uses
  DUP20.Model.Entidades.Interfaces, DUP20.Controller.Interfaces;


Type
  TController = class(TInterfacedObject, iController)
    private
      FModelEntidades : iModelEntidadeFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      Function Entidades : iModelEntidadeFactory;

  end;


implementation

uses
  System.SysUtils, DUP20.Model.Entidades.Factory;

{ TController }

constructor TController.Create;
begin
  FModelEntidades := TModelEntidadesFactory.New;
end;

destructor TController.Destroy;
begin
  inherited;
end;

function TController.Entidades: iModelEntidadeFactory;
begin
  Result := FModelEntidades;
end;

class function TController.New: iController;
begin
   Result := Self.Create;
end;

end.
