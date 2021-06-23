E(/^insiro os dados "([^"]*)","([^"]*)", "([^"]*)", "([^"]*)"$/) do |nome, email, tipo_assinatura, edificio|
  @apps.home_shared_page_inicial.clicar_em_paramentros
  @apps.home_shared_page_inicial.clicar_em_consultar_de_signatarios
  @apps.cadastar_signatario_page.clicar_em_cadastrar
  @apps.cadastar_signatario_page.preencher_campos_cadastro nome , email, tipo_assinatura , edificio
  @apps.cadastar_signatario_page.clicar_em_cadastrar_signatarios

end

Entao(/^devo receber a mensagem de "([^"]*)"$/) do |msg|
  expect(@apps.cadastar_signatario_page).to have_content msg
end