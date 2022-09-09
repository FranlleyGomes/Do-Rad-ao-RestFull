unit DUp20.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
   iModelQuery = interface;

  iModelConexao = interface
    ['{71724FB0-D163-4068-A60B-63082BC35EBF}']
    function Connection: TObject; //TCustomConnection;
  end;

  iModelConexaoFactory = interface
    ['{D7193216-4EDD-43D1-826A-F9C2CCBC9DA0}']
    function Conexao: iModelConexao;
    function Query: iModelQuery;
  end;

  iModelQuery = interface
    ['{2E2C423C-F12E-4E12-A44A-2F1E26838536}']
    function Query: TObject;
    function OpenTable(aTable: String): iModelQuery;
    function ExecSQL(aSQL : String): iModelQuery;
   end;

implementation

end.
