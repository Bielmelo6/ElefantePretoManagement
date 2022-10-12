When('eu edito o nome do dono : {string} para : {string}') do |nome, novo|
  expect(page).to have_content(nome)
  click_on 'Edit this dono'
  fill_in 'dono[nome]', :with => novo
  fill_in 'dono[password]', :with => 'teste123'
  fill_in 'dono[password_confirmation]', :with => 'teste123'
end
