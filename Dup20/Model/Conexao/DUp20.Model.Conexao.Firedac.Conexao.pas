unit DUp20.Model.Conexao.Firedac.Conexao;

interface

uses
  DUp20.Model.Conexao.Interfaces,
  Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Error, Firedac.UI.Intf, Firedac.Phys.Intf, Firedac.Stan.Def,
  Firedac.Stan.Pool, Firedac.Stan.Async, Firedac.Phys, Firedac.Phys.FB,
  Firedac.Phys.FBDef, Firedac.VCLUI.Wait, Data.DB, Firedac.Comp.Client,
  Firedac.Phys.IBBase,
  Firedac.Comp.UI;

Type
  TModelConexaoFiredacConexao = class(TInterfacedObject, iModelConexao)
  private
    FConexao: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConexao;
    function Connection: TObject;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredacConexao }

function TModelConexaoFiredacConexao.Connection: TObject;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredacConexao.Create;
begin
  FConexao := TFDConnection.Create(nil);

  FDGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink := TFDPhysFBDriverLink.Create(nil);

  FConexao.DriverName := 'FB';
  FConexao.Params.Database := 'C:\DBComercio\Empresa1\BASEDADOS.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := true;

  //FConexao := TFDConnection.Create(Nil);
  //FConexao.Params.DriverID := 'FB';
  //FConexao.Params.Database := 'E:\THULIO BITTERNCOURT\Clube dos Programadores Delphi\BASE.FDB';
  //FConexao.Params.UserName := 'SYSDBA';
  //FConexao.Params.Password := 'masterkey';
  //FConexao.Connected := True;
end;

destructor TModelConexaoFiredacConexao.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FDGUIxWaitCursor);
  FreeAndNil(FDPhysFBDriverLink);
  inherited;
end;

class function TModelConexaoFiredacConexao.New: iModelConexao;
begin
  Result := Self.Create;
end;

end.
