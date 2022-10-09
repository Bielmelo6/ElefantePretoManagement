Given('estou na pagina de dono') do
  visit 'donos/new'
  expect(page).to have_content('New dono')
end

Given('estou na pagina index de dono') do
  visit 'donos'
  expect(page).to have_current_path('/donos')
end

And('o dono de nome: {string}, cpf: {string}, cnpj: {string} existe') do |nome,cpf,cnpj|
  visit 'donos/new'
  fill_in 'dono[nome]', :with => nome
  fill_in 'dono[cpf]', :with => cpf
  fill_in 'dono[cnpj]', :with => cnpj
  click_button 'Create Dono'
  expect(page).to have_content(nome)
end

When('eu preencho o dono de nome: {string}, cpf: {string}, cnpj: {string} e clico cadastrar') do |nome, cpf,cnpj|
  fill_in 'dono[nome]', :with => nome
  fill_in 'dono[cpf]', :with => cpf
  fill_in 'dono[cnpj]', :with => cnpj
  click_button 'Create Dono'
end

When('eu edito o nome do dono : {string} para : {string} e clico atualizar') do |nome, novo|
  expect(page).to have_content(nome)
  click_on 'Edit this dono'
  fill_in 'dono[nome]', :with => novo
  click_button 'Update Dono'
end

Then('eu vejo uma mensagem que o dono foi cadastrado com sucesso') do
  expect(page).to have_content('Dono was successfully created.')
end