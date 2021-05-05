Dado(/^Que acesso a pagina login minha bv$/) do
  @apps.minha_bv_page.load
end

Quando(/^preencho os dados de cpf e senha$/) do
  @apps.minha_bv_page.preencher_cpf
  @apps.minha_bv_page.preencher_senha
  @apps.minha_bv_page.clicar_continuar
end

Entao(/^o sistema deve exibir a mensagem de os dados ainda estão incorretos$/) do
  @apps.minha_bv_page.validar_mensagem_dados_incorretos
end