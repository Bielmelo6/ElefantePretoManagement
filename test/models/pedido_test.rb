require "test_helper"

class PedidoTest < ActiveSupport::TestCase

  test 'Criando pedido sem o preenchimento dos campos' do
    pedido = Pedido.new
    assert_not pedido.save
  end

  test 'Criando pedido com preenchimento dos campos corretos' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new nome: 'Ana Souza', cpf: '84127420014'
    assert cliente.save
    pedido = Pedido.new item_id: item.id, cliente_id: cliente.id,  total: '7'
    assert pedido.save
  end

  test 'Criando pedido com o campo cliente vazio' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new
    assert_not cliente.save
    pedido = Pedido.new total: '7', item_id: item.id, cliente_id: cliente.id
    assert_not pedido.save
  end

  test 'Criando pedido com passando os parametros errados de cliente e item' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new nome: 'Ana Souza', cpf: '84127420014'
    assert cliente.save
    pedido = Pedido.new total: '7', item_id: item.produto, cliente_id: cliente.cpf
    assert_not pedido.save
  end

  test 'Criando pedido sem o total' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new nome: 'Ana Souza', cpf: '84127420014'
    assert cliente.save
    pedido = Pedido.new item_id: item.id, cliente_id: cliente.id
    assert_not pedido.save
  end

  test 'Criando pedido sem item e cliente' do
    item = Item.new
    assert_not item.save
    cliente = Cliente.new
    assert_not cliente.save
    pedido = Pedido.new item_id: item.id, cliente_id: cliente.id
    assert_not pedido.save
  end

end
