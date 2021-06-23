class HomeSharedPageInicial < SitePrism::Page

  set_url '#/home'
  element :paramentros, :xpath, "//p[contains(text(),'Parâmetros')]"
  element :consultar_signatarios, :xpath, "//p[contains(text(),'Consulta de signatários')]"
  element :btn_cadastrar, :xpath, "//span[contains(text(),'Cadastrar')]"
  element :btn_voltar_consultar, :xpath, "//span[contains(text(),'Voltar')]"
  element :label_consultar, :xpath, "//p[contains(text(),'Consulta de signatários')]"



  def clicar_em_paramentros
    paramentros.visible?
    paramentros.click
  end

  def clicar_em_consultar_de_signatarios
    consultar_signatarios.visible?
    consultar_signatarios.click
  end

  def validar_botao_cadastrar?
    btn_cadastrar.visible?

  end

  def clicar_em_voltar_tela_consulta
    btn_voltar_consultar.visible?
    btn_voltar_consultar.click

  end

  def validar_home_cadastar?
    label_consultar.visible?
  end


end