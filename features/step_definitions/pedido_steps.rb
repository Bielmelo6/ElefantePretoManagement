When('eu preencho o pedido do cliente: {string}, item: {string}, quantidade: {string}') do |nome,item,quant|
  id = Cliente.where(nome: nome).first.id
  item = Item.where(produto: item).first.id
  find("#pedido_item_id option[value=#{item}]").select_option
  find("#pedido_cliente_id option[value=#{id}]").select_option
  fill_in 'pedido[quantidade]', :with => quant
end

Then('eu vejo uma mensagem de erro do pedido') do
  expect(page).not_to have_content("Pedido was successfully created")
end

And('o pedido de quantidade: {string} existe') do |quant|
  expect(page).to have_content(quant)
  click_on 'Show this pedido'
end

When('eu edito a quantidade do pedido: {string} para :{string}') do |nome,novo|
  expect(page).to have_content(nome)
  click_on 'Edit this pedido'
  fill_in 'pedido[quantidade]', :with => novo
end

Then('eu vejo uma mensagem de erro da quantidade') do
  expect(page).to have_content("Quantidade must be greater than 0")
end