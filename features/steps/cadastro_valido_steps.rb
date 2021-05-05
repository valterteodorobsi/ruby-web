Dado('que acesso o cadastro de usuário') do
  @apps.login_page.clicar_cadastrar
  @apps.cadastros_page.load
end

E("eu informe os campos {string},{string},{string} conforme arquivo") do |nome,email, senha|
    nome = @data["user"]["massa"]["nome"]
    email = @data["user"]["massa"]["email"]
    senha =  @data["user"]["massa"]["senha"]
  @apps.cadastros_page.preencher_form_com_dados_informados(nome,email,senha)
end

E('confirmo o cadastro') do
  @apps.cadastros_page.confirmar_cadastro
end

Dado("preencho os campos do formulário com dados válidos de um novo usuário pessoa física") do
  @cadastro_page.preencher_form_com_dados_aleatorios_pf
end

Então('o sistema deve exibir a mensagem de cadastro realizado com sucesso') do
  #@apps.cadastros_page.wait_until_msg_sucesso_visible
  expect(@apps.cadastros_page.tela_cadastro?).to be true
end


Então("o sistema deve exibir a mensagem de confirmação {string}") do |msgsucesso|
  expect(@cadastro_page).to have_content msgsucesso
end

