Given('estou na pagina de cliente') do
  visit '/clientes/new'
  expect(page).to have_content('New cliente')
end

When('eu preencho um cliente de nome: {string}, cpf: {string} e clico cadastrar') do |nome, cpf |
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[cpf]', :with => cpf
  click_button 'Create Cliente'
end

Then('eu vejo uma mensagem que o cliente  foi cadastrado com sucesso') do
  expect(page).to have_content('Cliente was successfully created.')
end

