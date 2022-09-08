unit DUP20.Model.Entidades.Interfaces;

interface

uses
  Data.DB;

type

   iModelEntidade = interface
     ['{53F6FA2E-5C46-43AE-AE94-10709969D0A9}']
     function DataSet (aValue : TDataSource) : iModelEntidade;
     function Open : iModelEntidade;
   end;

   iModelEntidadeFactory = interface
     ['{129C15C1-3D86-475D-8FF2-2E3CDE78AD0E}']
     function Produto : iModelEntidade;
    // function Pessoa : iModelEntidade;
   end;

implementation

end.
