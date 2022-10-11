Given('estou na pagina de dono') do
  visit 'donos/new'
  expect(page).to have_content('New dono')
end

Given('estou na pagina index de dono') do
  visit 'donos'
  expect(page).to have_current_path('/donos')
end

And('o dono de nome: {string}, cpf: {string}, cnpj: {string} existe') do |nome,cpf,cnpj|
  expect(page).to have_content(nome)
  expect(page).to have_content(cpf)
  expect(page).to have_content(cnpj)
  click_on 'Show this dono'
end


When('eu edito o nome do dono : {string} para : {string} e clico atualizar') do |nome, novo|
  expect(page).to have_content(nome)
  click_on 'Edit this dono'
  fill_in 'dono[nome]', :with => novo
  fill_in 'dono[password]', :with => 'teste123'
  fill_in 'dono[password_confirmation]', :with => 'teste123'
  click_button 'Sign up'
end

Then('eu vejo uma mensagem que o dono foi cadastrado com sucesso') do
  expect(page).to have_content('Welcome! You have signed up successfully.')
end

Then('eu vejo uma mensagem que o dono foi editado com sucesso') do
  expect(page).to have_content('Dono was successfully updated.')
end

When('eu removo o dono de nome: {string}') do |nome|
  expect(page).to have_content(nome)
  click_button "Destroy this dono"
end

Then('eu vejo uma mensagem que o dono foi removido com sucesso') do
  expect(page).to have_content('Dono was successfully destroyed.')
end