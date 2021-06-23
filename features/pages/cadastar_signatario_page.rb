class CadastarSignatarioPage < SitePrism::Page

  element :input_name, :id, 'fullName'
  element :input_email, :id, 'email'
  element :tipo_assinatura,  :id ,"signatureType"
  element :input_edificio, :xpath, "//body/div[@id='root']/div[1]/main[1]/div[4]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[2]"
  element :input_edificio_valor_mariana, :xpath, "//*[contains(text(),'Vila Mariana')]"
  element :input_edificio_valor_butanta, :xpath, "//*[contains(text(),'Butantã')]"
  element :input_edificio_valor_consolacao, :xpath, "//*[contains(text(),'Consolação')]"
  element :btn_cadastar_home, :xpath, "//span[contains(text(),'Cadastrar')]"
  element :btn_cadastrar, :xpath, "//*[contains(text(),'Cadastrar')]"
  element :btn_cancelar, :xpath, "//div[contains(text(),'Cancelar')]"
  element :home_consultar, :xpath, "//div[contains(text(),'Consulta de signatários')]"

  def clicar_em_cadastrar
    btn_cadastar_home.visible?
    btn_cadastar_home.click
  end


  def select_option(value)
    case value
      when 'Parte'
        find(:id, 'signatureType').find(:xpath, 'option[1]').select_option
      when 'Testemunha'
        find(:id, 'signatureType').find(:xpath, 'option[2]').select_option
    end

  end

  def preencher_campos_cadastro nome, email, assinatura, edificio
    input_name.set nome
    input_email.set email
    tipo_assinatura.visible?
    input_edificio.visible?
    select_option assinatura
    input_edificio.set  edificio
    input_edificio_valor_butanta.click
    input_edificio.set  edificio
    input_edificio_valor_mariana.click
  end

  def clicar_em_cadastrar_signatarios
    btn_cadastrar.visible?
    btn_cadastrar.click
  end
end