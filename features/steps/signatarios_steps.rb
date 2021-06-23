Dado(/^Que acesso a pagina inicial$/) do
  @apps.login_page.load
  @apps.login_page.fechar_inicial
end

Quando(/^preencher o "([^"]*)" e "([^"]*)"$/) do |login, senha|

  login = @data["user"]["login"]["nome"]
  expect(@apps.login_page)
  @apps.login_page.preencher_login login
  senha = @data["user"]["login"]["senha"]
  @apps.login_page.preencher_sehha senha
  @apps.login_page.clicar_entrar
end