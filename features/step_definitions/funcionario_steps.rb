Given('estou na pagina de funcionario') do
  visit '/funcionarios/new'
  expect(page).to have_content('New funcionario')
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

Then('eu vejo uma mensagem que o funcionario  foi cadastrado com sucesso') do
  expect(page).to have_content('Funcionario was successfully created.')
end

