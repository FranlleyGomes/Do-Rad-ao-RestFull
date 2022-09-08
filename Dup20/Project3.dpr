program Project3;

uses
  Vcl.Forms,
  DUP20.View.Principal in 'View\DUP20.View.Principal.pas' {Form2},
  DUP20.Controller in 'Controller\DUP20.Controller.pas',
  DUP20.Model.Entidades.Factory in 'Model\Entidades\DUP20.Model.Entidades.Factory.pas',
  DUp20.Model.Conexao.Firedac.Conexao in 'Model\Conexao\DUp20.Model.Conexao.Firedac.Conexao.pas',
  DUp20.Model.Conexao.Interfaces in 'Model\Conexao\DUp20.Model.Conexao.Interfaces.pas',
  DUp20.Model.Conexao.Firedac.Query in 'Model\Conexao\DUp20.Model.Conexao.Firedac.Query.pas',
  DUp20.Model.Conexao.Factory in 'Model\Conexao\DUp20.Model.Conexao.Factory.pas',
  DUP20.Model.Entidades.Interfaces in 'Model\Entidades\DUP20.Model.Entidades.Interfaces.pas',
  DUP20.Model.Entidades.Produto in 'Model\Entidades\DUP20.Model.Entidades.Produto.pas',
  DUP20.Controller.Interfaces in 'Controller\DUP20.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
