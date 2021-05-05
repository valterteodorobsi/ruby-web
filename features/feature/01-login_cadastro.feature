#language: pt
#encoding: utf-8

@regressivo
Funcionalidade: Criar conta e logar no app

    Contexto:
      Dado Que acesso a pagina inicial
     
    @cadastro_valido_fixo_pf
    Cenário: Cadastrar usuário com dados válidos
          Quando que acesso o cadastro de usuário
          E eu informe os campos "nome","email","senha" conforme arquivo
          E confirmo o cadastro
          Então o sistema deve exibir a mensagem de cadastro realizado com sucesso

    @login
    Cenário: Acessar a tela de Inicial do sistema
         Quando preencher o "login" e "senha"
          Entao devo visualizar a tela inicial do sistema

 # @cadastro_ja_existente
  #Cenário: Cadastrar usuário com dados válidos
 #   Quando que acesso o cadastro de usuário
  #  E eu informe os campos "nome","email","senha" conforme arquivo
  #  E confirmo o cadastro
   # Então deve exibir no topo do formulário a mensagem de erro "Ops..o e-mail informado já está cadastrado!!!"