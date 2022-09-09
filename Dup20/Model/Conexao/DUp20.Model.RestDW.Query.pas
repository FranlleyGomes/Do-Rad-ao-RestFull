unit DUp20.Model.RestDW.Query;

interface

uses
  DUp20.Model.Conexao.Interfaces,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uRESTDWPoolerDB, uDWConstsData  , Data.DB;

Type
  TModelRestDWQuery = class(TInterfacedObject, iModelQuery)
  private
    FConexao: iModelConexao;
    FQuery: TRESTDWClientSQL;
    procedure ApplyUpdate(Value : TDataSet);
  public
    constructor Create(aValue: iModelConexao);
    destructor Destroy; override;
    class function New(aValue: iModelConexao): iModelQuery;
    function Query: TObject;
    function OpenTable(aTable: String): iModelQuery;
    function ExecSQL(aSQL : String): iModelQuery;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TModelRestDWQuery }

procedure TModelRestDWQuery.ApplyUpdate(Value: TDataSet);
var
  aError : String;
begin
  if not FQuery.ApplyUpdates(aError) then
     raise Exception.Create(aError);


end;

constructor TModelRestDWQuery.Create(aValue: iModelConexao);
begin
  FQuery := TRESTDWClientSQL.Create(nil);
  FConexao := aValue;
  FQuery.DataBase := TRESTDWDataBase(FConexao.Connection);
  FQuery.AfterPost := ApplyUpdate;
  FQuery.AfterDelete := ApplyUpdate;
  FQuery.AutoCommitData := False;
  FQuery.AutoRefreshAfterCommit := True;
  FQuery.SetInBlockEvents(False);
end;

destructor TModelRestDWQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelRestDWQuery.ExecSQL(aSQL: String): iModelQuery;
var
  aError  : String;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('aSQL');
  if not FQuery.ExecSQL(aError) then
     raise Exception.Create(aError);

end;

class function TModelRestDWQuery.New(aValue: iModelConexao): iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelRestDWQuery.OpenTable(aTable: String): iModelQuery;
begin
   Result := Self;
   FQuery.UpdateTableName := aTable;
   FQuery.SQL.Clear;
   FQuery.SQL.Add('SELECT * FROM ' + aTable);


end;

function TModelRestDWQuery.Query: TObject;
begin
  Result := FQuery;
end;

end.
