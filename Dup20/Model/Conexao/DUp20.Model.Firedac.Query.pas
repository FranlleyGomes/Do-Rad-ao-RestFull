unit DUp20.Model.Firedac.Query;

interface

uses
  DUp20.Model.Conexao.Interfaces,
  Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Param, Firedac.Stan.Error, Firedac.DatS, Firedac.Phys.Intf,
  Firedac.DApt.Intf, Firedac.Stan.Async, Firedac.DApt, Data.DB,
  Firedac.Comp.DataSet, Firedac.Comp.Client;

Type
  TModelFiredacQuery = class(TInterfacedObject, iModelQuery)
  private
    FQuery: TFDQuery;
    FConexao: IModelConexao;
  public
    constructor Create(aValue: IModelConexao);
    destructor Destroy; override;
    class function New(aValue: IModelConexao): iModelQuery;
    function Query: TObject;
    function OpenTable(aTable: String): iModelQuery;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TModelConexaoFiredacQuery }

constructor TModelFiredacQuery.Create(aValue: IModelConexao);
begin
  FConexao := aValue;
  FQuery := TFDQuery.Create(Nil);

  FQuery.Connection := TFDConnection(FConexao.Connection);
end;

destructor TModelFiredacQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;


class function TModelFiredacQuery.New(aValue: IModelConexao)
  : iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelFiredacQuery.OpenTable(aTable: String): iModelQuery;
begin
  Result := Self;
  FQuery.Open('SELECT * FROM ' + aTable);

  ShowMessage(FQuery.Fields[0].ToString);
end;

function TModelFiredacQuery.Query: TObject;
begin
  Result := FQuery;
end;

end.
