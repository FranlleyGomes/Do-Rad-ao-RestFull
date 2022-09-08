unit DUP20.Model.Entidades.Pessoa;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TModelEntidadePessoa = class(TDataModule)
    Pessoa: TFDQuery;
    PessoaID: TIntegerField;
    PessoaNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Function DataSet(aValue: TDataSource): TModelEntidadePessoa;
    procedure Open;
  end;

var
  ModelEntidadePessoa: TModelEntidadePessoa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TModelEntidadePessoa }

function TModelEntidadePessoa.DataSet(
  aValue: TDataSource): TModelEntidadePessoa;
begin
Result := Self;
 aValue.DataSet := Pessoa;
end;

procedure TModelEntidadePessoa.Open;
begin
   Pessoa.Open;
end;

end.
