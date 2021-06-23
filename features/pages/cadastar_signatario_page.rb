class CadastarSignatarioPage < SitePrism::Page

  element :input_name, :id, 'fullName'
  element :input_email, :id, 'email'

  element :tipo_assinatura,  :id ,"signatureType"
  #element :input_edificio, :id, 'laundry'
  element :input_edificio, :xpath, "//body/div[@id='root']/div[1]/main[1]/div[4]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[2]"

  element :btn_cadastar_home, :xpath, "//span[contains(text(),'Cadastrar')]"
  element :btn_cadastrar, :xpath, "//*[contains(text(),'Cadastrar')]"
  element :btn_cancelar, :xpath, "//div[contains(text(),'Cancelar')]"
  element :home_consultar, :xpath, "//div[contains(text(),'Consulta de signatários')]"

  def clicar_em_cadastrar
    btn_cadastar_home.visible?
    btn_cadastar_home.click
  end


  def select_option(value)
    #find(:css, css_selector).find(:from, value).select_option
    case value
    when 'Testemunha'
       find('#voltage').find(:xpath, 'option[2]').select_option
    when 'Butantã'
       find(:xpath, "//body/div[@id='root']/div[1]/main[1]/div[4]/form[1]/div[1]/div[5]/div[1]/div[1]/div[1]/div[2]").find(:xpath, "//*[contains(text(),'Consulta de signatários')]").select_option
    end

  end

  def preencher_campos_cadastro nome, email, assinatura, edificio
    wait_until_displayed 'nome'
    input_name.set nome
    input_email.set email
    tipo_assinatura.visible?

    #parei aqui pra achar como clicar no edificio
    input_edificio.visible?
    #   find('#voltage').find(assinatura).select_option
    #select_option assinatura
    input_edificio.set  edificio
  end

  def clicar_em_cadastrar_signatarios
    btn_cadastrar.visible?
    btn_cadastrar.click
  end
end