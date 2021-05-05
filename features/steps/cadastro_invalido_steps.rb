Então("deve exibir no topo do formulário a mensagem de erro {string}") do |msg_falha|
   expect(@cadastro_page).to have_content msg_falha

end

Então("deve exibir no campo a mensagem de erro {string}") do |msg_falha_campo|
  expect(@cadastro_page).to have_content msg_falha_campo
end

E("permanecer na página de cadastro") do
  expect(@cadastro_page).to have_current_path '/#/cadastro'
end

