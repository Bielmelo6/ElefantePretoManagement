Given('estou na pagina inicial') do
  visit '/'
  expect(page).to have_current_path('/')
end

And('eu clico no botao de cadastrar') do
  click_on 'Sign up'
end

And('eu clico no botao de logar') do
  click_on 'Login'
end

When('eu preencho o dono de nome: {string}, cpf: {string}, cnpj: {string}, email: {string}, password: {string}, password_confirmation: {string} e clico cadastrar') do |nome, cpf,cnpj, email, pass,password|
  fill_in 'dono[nome]', :with => nome
  fill_in 'dono[cpf]', :with => cpf
  fill_in 'dono[cnpj]', :with => cnpj
  fill_in 'dono[email]', :with => email
  fill_in 'dono[password]', :with => pass
  fill_in 'dono[password_confirmation]', :with => password
  click_button 'Sign up'
end

Then('eu vejo uma mensagem que fui cadastrado com sucesso') do
  expect(page).to have_content('Welcome! You have signed up successfully.')
end

When('eu preencho o email: {string} e senha: {string}') do |email,senha|
  fill_in 'dono[email]', :with => email
  fill_in 'dono[password]', :with => senha
  click_button 'Log in'
end

Then('eu vejo uma mensagem que fui logado com sucesso') do
  expect(page).to have_content('Signed in successfully.')
end