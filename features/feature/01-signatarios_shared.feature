#language: pt
#encoding: utf-8

@funcionalidade
Funcionalidade: Cadastar Signatários


  Contexto:
    Dado que acesso a pagina inicial para realizar o login
    Quando digito o "login" e "senha"

  @acessoATela @navegacao
  Cenário: Validar acesso a tela de signatários
    Entao devo acessar a tela inicial do cadastro de signatairos "Sucesso"

  @voltar_tela_consultar @navegacao
  Cenário: Voltar para tela de cosultar
    Entao devo voltar a tela anterior a tela inicial

  @cadastar_novo_signatario @funcional
  Cenário: Cadastrar novo seguinatários
    E insiro os dados "Joaqui Da silva ","joaquim@ferreira.com.br", "Testemunha", "Butantã"
    Entao devo receber a mensagem de "Sucesso"
    #-------------------------------
    # Ate aqui esta Ok o fluxo de login e fluxo de acesso,
    # Melhorias daqui para frente
    # ------------------------------
