program CadClientes;

uses
  Vcl.Forms,
  uCadastroClientes in 'uCadastroClientes.pas' {frmCadastroClientes},
  JsonDataObjects in 'JsonDataObjects.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
