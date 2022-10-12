When('eu preencho o pedido do cliente: {string}, item: {string}, quantidade: {string}') do |nome,item,quant|
  id = Cliente.where(nome: nome).first.id
  item = Item.where(produto: item).first.id
  find("#pedido_item_id option[value=#{item}]").select_option
  find("#pedido_cliente_id option[value=#{id}]").select_option
  fill_in 'pedido[quantidade]', :with => quant
end

