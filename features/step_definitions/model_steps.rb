Given('estou na pagina de {string}') do |model|
  visit '/'+model
  expect(page).to have_current_path('/'+model)
end

Given('estou na pagina de adicionar {string}') do |model|
  visit '/'+model+'s/new'
  expect(page).to have_content('New '+model)
end

And('o {string} de nome: {string}, cpf: {string} existe') do |model,nome,cpf|
  expect(page).to have_content(nome)
  expect(page).to have_content(cpf)
  click_on 'Show this '+model
end

When('eu edito o nome do {string}: {string} para :{string}') do |model,nome,novo |
  expect(page).to have_content(nome)
  click_on 'Edit this '+model
  fill_in model+'[nome]', :with => novo
end

When('eu removo o {string} de nome: {string}') do |model,nome|
  expect(page).to have_content(nome)
  click_button "Destroy this "+model
end

Then('eu vejo uma mensagem de erro de nome invalido') do
  assert_selector('li', text: 'Nome is too short (minimum is 2 characters)')
end

Then('eu vejo uma mensagem que o {string} foi cadastrado com sucesso') do |model|
  expect(page).to have_content(model+' was successfully created.')
end

Then('eu vejo uma mensagem que o {string} foi editado com sucesso') do |model|
  expect(page).to have_content(model+' was successfully updated.')
end

Then('eu vejo uma mensagem que o {string} foi removido com sucesso') do |model|
  expect(page).to have_content(model+' was successfully destroyed.')
end

And('eu clico no botao de cadastrar') do
  click_on 'Sign up'
end

And('eu clico no botao de logar') do
  click_on 'Login'
end

And('eu clico no botao de deslogar') do
  click_on 'Log out'
end

And('eu clico no botao de criar {string}') do |model|
  click_on 'Create '+model
end

And('eu clico no botao de atualizar {string}') do |model|
  click_on 'Update '+model
end
