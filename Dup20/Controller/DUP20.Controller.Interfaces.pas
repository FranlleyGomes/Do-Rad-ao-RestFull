unit DUP20.Controller.Interfaces;

interface

uses
  DUP20.Model.Entidades.Interfaces;

Type
  iController = interface
    ['{7A3E2E78-5B93-4191-89E2-CA7DF15AB2C3}']
    function Entidades : iModelEntidadeFactory;
  end;

implementation

end.
