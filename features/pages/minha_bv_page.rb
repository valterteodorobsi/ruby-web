class MinhaBvPage < SitePrism::Page
  set_url '/'
  element :cpf, 'cpfcnpj-field'
  element :senha1, :xpath, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '4')]"
  element :senha2, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '5')]"
  element :senha3, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '6')]"
  element :senha4, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '7')]"
  element :senha5, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '8')]"
  element :senha6, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), '1')]"
  element :btn_ok, :xpaht, "//body/virtual-keyboard/div/div/ul/li/button/span[contains (text(), 'Ok')]"
  element :btn_continuar, 'page-user-submit-cpf'
  element :mensagem_ainda_esta_errado, 'page-user-submit-cpf'


  def preencher_cpf cpf
    cpf.set cpf
  end

  def preencher_senha
    senha1.click
    senha2.click
    senha3.click
    senha4.click
    senha5.click
    senha6.click
    btn_ok.click
  end

  def  clicar_continuar
    btn_continuar.click
  end

  def validar_mensagem_dados_incorretos

  end
end