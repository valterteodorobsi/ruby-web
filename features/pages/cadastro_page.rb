class CadastroPage < SitePrism::Page
  set_url '#/cadastro'
  element :cmp_nome , :field ,'nome'
  element :cmp_email, :field, 'email'
  element :cmp_senha, :field,'senha'
  element :btn_cadastrar, :xpath,  '//button[1]'
  element :msg_sucesso, :xpath, "//span[contains (text() ,'e-mail')]"

  def preencher_form_com_dados_validos_fixos_pf
    cmp_nome.set 'Eshilane'
    cmp_email.set 'eshi.mcruz@gmail.com'
    cmp_senha.set '51981255168'
  end

  def preencher_form_com_dados_aleatorios_pf
    cmp_nome.set Faker::Name.first_name
    cmp_sobrenome.set Faker::Name.last_name
    cmp_email.set Faker::Internet.email(domain: 'viavarejo')
    cmp_celular.set Faker::Base.numerify('119########')
    rd_cpf.set true
    cmp_documento.set Faker::CPF.numeric
  end

  def preencher_form_com_dados_informados(nome, email, senha )
    cmp_nome.set nome
    cmp_email.set email
    cmp_senha.set senha
  end

  def confirmar_cadastro
    btn_cadastrar.click
  end

  def tela_cadastro?
    msg_sucesso.visible?
  end
end
