Given('estou na pagina de cliente') do
  visit '/clientes/new'
  expect(page).to have_content('New cliente')
end

Given('estou na pagina de clientes') do
  visit '/clientes'
  expect(page).to have_current_path('/clientes')
end

And('o cliente de nome: {string}, cpf: {string} existe') do |nome,cpf|
  visit '/clientes/new'
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[cpf]', :with => cpf
  click_button 'Create Cliente'
  expect(page).to have_content(nome)
end

When('eu preencho um cliente de nome: {string}, cpf: {string} e clico cadastrar') do |nome, cpf |
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[cpf]', :with => cpf
  click_button 'Create Cliente'
end

When('eu edito o nome do cliente : {string} para :{string} e clico atualizar') do |nome,novo |
  expect(page).to have_content(nome)
  click_on 'Edit this cliente'
  fill_in 'cliente[nome]', :with => novo
  click_button 'Update Cliente'
end

Then('eu vejo uma mensagem que o cliente  foi cadastrado com sucesso') do
  expect(page).to have_content('Cliente was successfully created.')
end

Then('eu vejo uma mensagem de erro de nome invalido') do
  assert_selector('li', text: 'Nome is too short (minimum is 2 characters)')
end

Then('eu vejo uma mensagem que o cliente  foi editado com sucesso') do
  expect(page).to have_content('Cliente was successfully updated.')
end


