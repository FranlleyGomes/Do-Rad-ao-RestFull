unit DUp20.Model.RestDW.Conexao;

interface

uses
  DUp20.Model.Conexao.Interfaces, uDWAbout, uRESTDWPoolerDB;

Type
  TModelRestDWConexao = class(TInterfacedObject, iModelConexao)
    private
    FConexao: TRESTDWDataBase;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConexao;
  end;


implementation

uses
  System.SysUtils;

{ TModelRestDWConexao }

constructor TModelRestDWConexao.Create;
begin
   FConexao:= TRESTDWDataBase.Create;
end;

destructor TModelRestDWConexao.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TModelRestDWConexao.New: iModelConexao;
begin
   Result := Self.Create;
end;

end.
