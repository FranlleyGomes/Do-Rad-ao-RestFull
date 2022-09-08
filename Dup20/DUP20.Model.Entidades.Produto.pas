unit DUP20.Model.Entidades.Produto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule3 = class(TDataModule)
    Produto: TFDQuery;
    ProdutoGUUID: TIntegerField;
    ProdutoCODIGO: TIntegerField;
    ProdutoDESCRICAO: TStringField;
    ProdutoPRECO: TFloatField;
    ProdutoNCM: TStringField;
    ProdutoALIQUOTA: TFloatField;
    ProdutoST: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
