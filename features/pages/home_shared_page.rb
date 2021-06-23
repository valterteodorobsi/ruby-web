class HomeSharedPage < SitePrism::Page

  set_url '#/'
  element :input_login, :id, 'email-input'
  element :input_senha, :id, 'password-input'
  element :btn_continuar, :xpath, "//div[contains(text(),'Continuar')]"
  element :backoffice, :xpath, "//a[contains(text(),'Backoffice')]"


  #parametros  MENU


  def preencher_email email
    btn_continuar.visible?
    input_login.set email
  end

  def preencher_sehha_login senha
    input_senha.set senha
  end

  def clicar_entrar
    btn_continuar.visible?
    btn_continuar.click
    backoffice.visible?
    screenshot("Entar")
  end

end