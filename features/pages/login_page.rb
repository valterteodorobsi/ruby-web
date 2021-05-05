class LoginPage < SitePrism::Page

  set_url '#'
  element :frase_inicial, 'body.modal-open:nth-child(2) div.no-copy.ng-scope div.signup-page.ng-scope div.wrapper div.header.header-filter div.modal.fade.in div.modal-dialog div.modal-content form.ng-pristine.ng-valid div.modal-header h2.modal-title > strong:nth-child(1)'
  element :btn_fechar ,'body.modal-open:nth-child(2) div.no-copy.ng-scope div.signup-page.ng-scope div.wrapper div.header.header-filter div.modal.fade.in div.modal-dialog div.modal-content form.ng-pristine.ng-valid div.modal-header button.close > i.material-icons'
  element :email, '#input_0'
  element :pass, '#input_1'
  element :btn_entrar, :xpath,"//span[contains(text(), 'Entrar')]"
  element :mensagem, :xpath, "//small[contains(text(),'Avaliações liberadas')]"
  element :btn_cadastrar, 'div.no-copy.ng-scope div.signup-page.ng-scope div.wrapper div.header.header-filter div.container div.row div.col-md-6.col-md-offset-3:nth-child(3) div.card.card-signup div.content md-content.layout-padding._md div.card p:nth-child(1) > a:nth-child(1)'



  def fechar_inicial
    frase_inicial.visible?
    btn_fechar.click
    screenshot("Inicial")
  end

  def preencher_login login
    btn_entrar.visible?
    email.set login
  end

  def preencher_sehha senha
    pass.set senha
  end

  def clicar_entrar
    btn_entrar.click
    screenshot("Entar")
  end


  def clicar_cadastrar
    btn_cadastrar.click
  end
end