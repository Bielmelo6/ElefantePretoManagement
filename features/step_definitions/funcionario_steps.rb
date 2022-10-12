When('eu preencho um funcionario de nome: {string}, cpf: {string}, nascimento: {string}, email: {string}, cargo: {string}') do |nome, cpf, nascimento, email, cargo |
  fill_in 'funcionario[nome]', :with => nome
  fill_in 'funcionario[cpf]', :with => cpf
  fill_in 'funcionario[nascimento]', :with => nascimento
  fill_in 'funcionario[email]', :with => email
  first('#funcionario_cargo_id option', minimum: 1).select_option
end