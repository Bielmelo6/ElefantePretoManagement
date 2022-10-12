When('eu preencho um cliente de nome: {string}, cpf: {string}') do |nome, cpf |
  fill_in 'cliente[nome]', :with => nome
  fill_in 'cliente[cpf]', :with => cpf
end










