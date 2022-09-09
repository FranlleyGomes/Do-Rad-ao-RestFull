unit DUp20.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
  iModelConexao = interface
    ['{71724FB0-D163-4068-A60B-63082BC35EBF}']
    function Connection: TCustomConnection;
  end;

  iModelQuery = interface
    ['{2E2C423C-F12E-4E12-A44A-2F1E26838536}']
    function Query: TObject;
    function OpenTable(aTable: String): iModelQuery;
  end;

  iModelConexaoFactory = interface
    ['{D7193216-4EDD-43D1-826A-F9C2CCBC9DA0}']
    function Conexao: iModelConexao;
    function Query  : iModelQuery;
  end;

implementation

end.
