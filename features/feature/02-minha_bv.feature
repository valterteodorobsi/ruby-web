#language: pt
#encoding: utf-8


Funcionalidade: logar no minha bv

  Contexto:
    Dado Que acesso a pagina login minha bv

  @cadastro_valido_fixo_pf
  Cenário: Validar acesso
    Quando preencho os dados de cpf e senha
    Então o sistema deve exibir a mensagem de os dados ainda estão incorretos

