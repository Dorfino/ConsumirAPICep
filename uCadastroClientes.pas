unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,  Vcl.ComCtrls,
  FileCtrl, httpsend, blcksock, ssl_openssl, synautil, JsonDataObjects, Vcl.Mask, XMLDoc, XMLIntf,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,  IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessage, IdSSLOpenSSL, IdText, IdAttachmentFile, IdExplicitTLSClientServerBase;

type
  TfrmCadastroClientes = class(TForm)
    eNome: TEdit;
    eIdentidade: TEdit;
    eCPF: TEdit;
    eEmail: TEdit;
    eLogradouro: TEdit;
    eComplemento: TEdit;
    eBairro: TEdit;
    eCidade: TEdit;
    eEstado: TEdit;
    eTelefone: TEdit;
    ePais: TEdit;
    eNumero: TEdit;
    lNome: TLabel;
    lIdentidade: TLabel;
    lEmail: TLabel;
    lCpf: TLabel;
    lTelefone: TLabel;
    lCep: TLabel;
    lLogradouro: TLabel;
    lNumero: TLabel;
    lComplemento: TLabel;
    lBairro: TLabel;
    lCidade: TLabel;
    lEstado: TLabel;
    lPais: TLabel;
    ecep: TMaskEdit;
    lCaptionForm: TLabel;
    lFechar: TLabel;
    nGerarXmlCadastro: TSpeedButton;
    pEmail: TPanel;
    pBodyEmail: TPanel;
    pPrincipal: TPanel;
    lCaptionEamil: TLabel;
    lFechaEmail: TLabel;
    eEmailOrigem: TEdit;
    lEmailOrigem: TLabel;
    lHost: TLabel;
    eHost: TEdit;
    lPorta: TLabel;
    ePorta: TEdit;
    lEmailDestino: TLabel;
    eEmailDestino: TEdit;
    lAssunto: TLabel;
    eAssunto: TEdit;
    eMensagem: TMemo;
    lMensagemEmail: TLabel;
    lArquivoAnexo: TLabel;
    bEnviar: TSpeedButton;
    eAnexo: TMemo;
    procedure eCepExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure LimparCampos(form: TForm);
    procedure DoEntrar(Sender: TOBject);
    procedure DoSair(Sender: TOBject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lCaptionFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure lFecharClick(Sender: TObject);
    procedure nGerarXmlCadastroClick(Sender: TObject);
    procedure lFechaEmailClick(Sender: TObject);
    procedure pEmailMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure bEnviarClick(Sender: TObject);
  private
    corEntrar: TColor;
    corSair: TColor;
    corDestaque: TColor;
    corNormal: TColor;
    nomeXML: string;

    function ValidaCampos(form: TForm): Boolean;
    procedure GerarXml;
    function ValidarEmail(pemail:string): Boolean;
    function EnviarEmail(const AAssunto, ADestino, AAnexo: string; ACorpo: TStrings): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

procedure TfrmCadastroClientes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
  end;
end;

procedure TfrmCadastroClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := #0;
end;

procedure TfrmCadastroClientes.FormShow(Sender: TObject);
begin
  corEntrar := $00C6F9F4;
  corSair := clWhite;
  CorDestaque := clRed;
  CorNormal := clBlack;
  nomeXML := ExtractFilePath(GetCurrentDir) + 'Cliente' + FormatDateTime('yyyymmddhhmmss', now) + '.xml'
end;

procedure TfrmCadastroClientes.lCaptionFormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmCadastroClientes.lFechaEmailClick(Sender: TObject);
begin
  pEmail.Visible := False;
  pPrincipal.Enabled := True;
end;

procedure TfrmCadastroClientes.lFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroClientes.nGerarXmlCadastroClick(Sender: TObject);
begin
  if not ValidaCampos(frmCadastroClientes) then begin
    Application.MessageBox('Campos obrigatórios não foram preenchidos, verifique-os.' + sLineBreak +
                           'Os mesmos foram destacados.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  with pEmail do begin
    pPrincipal.Enabled := False;
    Visible := True;
    Left := 129;
    Top := 42;
  end;

  GerarXML;
  eEmailOrigem.Text := eEmail.Text;
  eEmailDestino.Text := eEmail.Text;
  eAnexo.Clear;
  eAnexo.Lines.Add(nomeXML);

end;

procedure TfrmCadastroClientes.pEmailMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  PostMessage(pEmail.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TfrmCadastroClientes.GerarXml;
var
  XMLDocument: TXMLDocument;
  NodeTabela: IXMLNode;
  NodeRegistro: IXMLNode;
  NodeEndereco: IXMLNode;
begin

  XMLDocument := TXMLDocument.Create(Self);

  try
    XMLDocument.Active := True;
    NodeTabela := XMLDocument.AddChild('Cadastro');

    NodeRegistro := NodeTabela.AddChild('Registro');
    NodeRegistro.ChildValues['nome'] := eNome.Text;
    NodeRegistro.ChildValues['identidade'] := eIdentidade.Text;
    NodeRegistro.ChildValues['cpf'] := eCPF.Text;
    NodeRegistro.ChildValues['email'] := eEmail.Text;
    NodeRegistro.ChildValues['telefone'] := eTelefone.Text;

    NodeEndereco := NodeRegistro.AddChild('Endereco');
    NodeEndereco.ChildValues['cep'] := ecep.Text;
    NodeEndereco.ChildValues['logradouro'] := eLogradouro.Text;
    NodeEndereco.ChildValues['numero'] := eNumero.Text;
    NodeEndereco.ChildValues['complemento'] := eComplemento.Text;
    NodeEndereco.ChildValues['bairro'] := eBairro.Text;
    NodeEndereco.ChildValues['cidade'] := eCidade.Text;
    NodeEndereco.ChildValues['estado'] := eEstado.Text;
    NodeEndereco.ChildValues['pais'] := ePais.Text;

    XMLDocument.SaveToFile(nomeXML);

  finally
    XMLDocument.Free;
  end;
end;

function TfrmCadastroClientes.ValidaCampos(form: TForm):Boolean;
var
  i: Integer;
  nomelbl: string;
begin

  Result := True;

  for i := 0 to Pred(form.ComponentCount) do begin

    if form.Components[i] is TEdit then begin
      with TEdit(form.Components[i]) do begin
        if (Tag = 9999) and (not pEmail.Visible) then
          Continue;

        nomelbl := 'l' + Copy(Name, 2, Length(Name));
        TLabel(form.FindComponent(nomelbl)).Font.Color := corNormal;

        if Text = EmptyStr then begin
          Result := False;
          TLabel(form.FindComponent(nomelbl)).Font.Color := CorDestaque;
        end;
      end;
    end;

    if form.Components[i] is TMaskEdit then begin

      with TMaskEdit(form.Components[i]) do begin
        if (Tag = 9999) and (not pEmail.Visible) then
          Continue;

        nomelbl := 'l' + Copy(Name, 2, Length(Name));
        TLabel(form.FindComponent(nomelbl)).Font.Color := corNormal;

        if Text = EmptyStr then begin
          Result := False;
          TLabel(form.FindComponent(nomelbl)).Font.Color := CorDestaque;
        end;
      end;
    end;
  end;

  if not ValidarEmail(eEmail.Text) then begin
    lEmail.Font.Color := corDestaque;
    Application.MessageBox('Email informado inválido, verifique-o.', 'Error', MB_OK + MB_ICONERROR);
    eEmail.SetFocus;
    Result := False;
  end
  else
    lEmail.Font.Color := corNormal;

end;

function TfrmCadastroClientes.ValidarEmail(pemail: string):Boolean;
const
  caraEsp: array[1..40] of string[1] =
  ( '!','#','$','%','¨','&','*',
  '(',')','+','=','§','¬','¢','¹','²',
  '³','£','´','`','ç','Ç',',',';',':',
  '<','>','~','^','?','/','','|','[',']','{','}',
  'º','ª','°');
var
  i: Integer;
  cont: Integer;
  email: string;
begin
  email := pemail;
  Result := True;
  cont := 0;

  if email <> '' then begin
    if (Pos('@', email)<>0) and (Pos('.', email)<>0) then begin

      if (
        (Pos('@', email)=1) or
        (Pos('@', email)= Length(email)) or
        (Pos('.', email)=1) or
        (Pos('.', email)= Length(email)) or
        (Pos(' ', email)<>0)
        ) then
        Result := False
      else begin
        if (abs(Pos('@', email) - Pos('.', email)) = 1) then
          Result := False
        else begin
          for i := 1 to 40 do begin
            if Pos(caraEsp[i], email) <> 0 then
              Result := False;
          end;

          for i := 1 to length(email) do begin
            if email[i] = '@' then
              Inc(cont);

            if (email[i] = '.') and (email[i+1] = '.') then
              Result := false;
          end;

          if (
            (cont >= 2) or
            (email[Length(email)]= '.') or
            (email[1]= '.') or (email[1]= '_') or
            (email[1]= '-')
          )then
            Result := false;

          if (abs(Pos('@', email) - Pos('com', email)) = 1) then
            Result := False;

          if (abs(Pos('@', email) - Pos('-', email)) = 1) then
            Result := False;

          if (abs(Pos('@', email) - Pos('_', email)) = 1) then
              Result := False;
        end;
      end;

    end;

  end
  else
    Result := False;
end;

procedure TfrmCadastroClientes.bEnviarClick(Sender: TObject);
var
  i: Integer;
  msg: TStrings;
begin
  msg := TStringList.Create;

  try
    for i := 0 to Pred(eMensagem.Lines.Count) do begin
        msg.Add(eMensagem.Lines.Strings[i]);
    end;

    if EnviarEmail(
      'Cadastro do cliente em XML',
      'dorfino@gmail.com',
      nomeXML,
      msg
    ) then begin
      pEmail.Visible := False;
      pPrincipal.Enabled := True;
    end;
  finally
    FreeAndNil(msg);
  end;
end;

procedure TfrmCadastroClientes.DoEntrar(Sender: TOBject);
begin
  if (Sender is TEdit) then
    TEdit(Sender as TEdit).Color := corEntrar;

  if (Sender is TMaskEdit) then
    TMaskEdit(Sender as TMaskEdit).Color := corEntrar;
end;

procedure TfrmCadastroClientes.DoSair(Sender: TOBject);
begin
  if (Sender is TEdit) then
    TEdit(Sender as TEdit).Color := corSair;

  if (Sender is TMaskEdit) then
    TMaskEdit(Sender as TMaskEdit).Color := corSair;

end;

procedure TfrmCadastroClientes.LimparCampos(form: TForm);
var
  i: Integer;
begin
  for i := 0 to Pred(form.ComponentCount) do begin

    if form.Components[i] is TEdit then
      TEdit(form.Components[i]).Clear;

    if form.Components[i] is TMaskEdit then
      TMaskEdit(form.Components[i]).Clear;

    if form.Components[i] is TLabel then begin
      if TLabel(form.Components[i]).Tag <> 9999 then
        TLabel(form.Components[i]).Font.Color := corNormal;
    end;
  end;
end;

procedure TfrmCadastroClientes.eCepExit(Sender: TObject);
var
  SynHttp : THTTPSend;
  Obj: TJsonObject;
  retorno: UTF8String;
  cepaux: string;
begin

  ecep.Color := clWhite;
  cepaux := eCep.Text;
  cepaux := StringReplace(cepaux, '-', '', [rfReplaceAll]);
  cepaux := StringReplace(cepaux, '.', '', [rfReplaceAll]);
  cepaux := StringReplace(cepaux, ' ', '', [rfReplaceAll]);

  if (Length(cepaux) < 8) then begin
    Application.MessageBox('Cep informado inválido para consulta, verifique-o.', 'Erro', MB_OK + MB_ICONERROR);
    Exit;
  end;

  SynHttp := THTTPSend.Create;

  try
    SynHttp.Sock.CreateWithSSL(TSSLOpenSSL);
    SynHttp.Sock.SSLDoConnect;
    SynHttp.Protocol := '1.1';
    SynHttp.MimeType := 'application/json';
    SynHttp.Timeout := 300;

    SynHttp.HTTPMethod('GET','https://viacep.com.br/ws/' + cepaux + '/json');
    SetString(Retorno, PAnsiChar(SynHttp.Document.Memory), SynHttp.Document.Size);

    if SynHttp.ResultCode = 200 then begin
      Obj :=  TJsonObject.ParseUtf8(Retorno) as TJsonObject;
      eLogradouro.Text := Obj['logradouro'].Value;
      eComplemento.Text := Obj['complemento'].Value;
      eBairro.Text := Obj['bairro'].Value;
      eCidade.Text := Obj['localidade'].Value;
      eEstado.Text := Obj['uf'].Value;
      eTelefone.Text := '(' + Obj['ddd'].Value + ')';
    end;
  finally
    SynHttp.Free;
  end;

end;

function TfrmCadastroClientes.EnviarEmail(const AAssunto, ADestino, AAnexo: String;
  ACorpo: TStrings): Boolean;
var
  from: string;
  host: string;
  port: Integer;
  username: string;
  password: string;

  idMsg: TIdMessage;
  Idtext: TIdText;
  IdSMTP: TIdSMTP;
  idSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
begin

  from := eEmailOrigem.Text;
  host := eHost.Text;
  port := StrToInt(ePorta.Text);
  username := eEmailOrigem.Text;
  //deixei esse texto sem estar marcado como comentário para chamar a atenção quanto à necessidade
  //de informar a senha na variável abaixo
  password := 'colocar a senha aqui';

  try
    try
      idSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      idSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      idSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

      idMsg := TIdMessage.Create(Self);
      idMsg.CharSet := 'utf-8';
      idMsg.Encoding := meMIME;
      idMsg.From.Name := 'dorfino';
      idMsg.From.Address := from;
      idMsg.Priority := mpNormal;
      idMsg.Subject := AAssunto;

      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      Idtext := TIdText.Create(idMsg.MessageParts);
      Idtext.Body.Add(ACorpo.Text);
      Idtext.ContentType := 'text/html; text/plain; charset=iso-8859-1';

      IdSMTP := TIdSMTP.Create(Self);
      IdSMTP.IOHandler := idSSLIOHandlerSocket;
      IdSMTP.UseTLS := utUseExplicitTLS;//utUseImplicitTLS;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Host := host;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Port := port;
      IdSMTP.Username := username;
      IdSMTP.Password := password;

      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      if IdSMTP.Connected then begin
        try
          IdSMTP.Send(idMsg);
        except
          on E: Exception do begin
            Application.MessageBox(Pchar('Erro ao tentar enviar: ' + E.Message),
              'Atençao!', MB_OK + MB_ICONERROR);
          end;
        end;
      end;

      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally
      UnLoadOpenSSLLibrary;
      FreeAndNil(idMsg);
      FreeAndNil(idSSLIOHandlerSocket);
      FreeAndNil(IdSMTP);
    end;
  except
    on E: Exception do begin
      Application.MessageBox(Pchar('Erro: ' + E.Message), 'Atençao!',
        MB_OK + MB_ICONERROR);
      Result := False;
    end;
  end;
end;

end.
