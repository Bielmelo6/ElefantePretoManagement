Given('estou na pagina de funcionario') do
  visit '/funcionarios/new'
  expect(page).to have_content('New funcionario')
end

Given('estou na pagina de funcionarios') do
  visit '/funcionarios'
  expect(page).to have_current_path('/funcionarios')
end

And('o funcionario de nome: {string}, cpf: {string}, nascimento: {string}, email: {string}, cargo: {string} existe') do |nome,cpf,nascimento,email,cargo|
  visit '/funcionarios/new'
  fill_in 'funcionario[nome]', :with => nome
  fill_in 'funcionario[cpf]', :with => cpf
  fill_in 'funcionario[nascimento]', :with => nascimento
  fill_in 'funcionario[email]', :with => email
  first('#funcionario_cargo_id option', minimum: 1).select_option
  click_button 'Create Funcionario'
  expect(page).to have_content(nome)
end

When('eu preencho um funcionario de nome: {string}, cpf: {string}, nascimento: {string}, email: {string}, cargo: {string} e clico cadastrar') do |nome, cpf, nascimento, email, cargo |
  id = Cargo.where(id: cargo).first

  fill_in 'funcionario[nome]', :with => nome
  fill_in 'funcionario[cpf]', :with => cpf
  fill_in 'funcionario[nascimento]', :with => nascimento
  fill_in 'funcionario[email]', :with => email
  first('#funcionario_cargo_id option', minimum: 1).select_option
  click_button 'Create Funcionario'
end

When('eu edito o nome do funcionario : {string} para :{string} e clico atualizar') do |nome,novo |
  expect(page).to have_content(nome)
  click_on 'Edit this funcionario'
  fill_in 'funcionario[nome]', :with => novo
  click_button 'Update Funcionario'
end

Then('eu vejo uma mensagem que o funcionario  foi cadastrado com sucesso') do
  expect(page).to have_content('Funcionario was successfully created.')
end

Then('eu vejo uma mensagem que o funcionario foi editado com sucesso') do
  expect(page).to have_content('Funcionario was successfully updated.')
end

