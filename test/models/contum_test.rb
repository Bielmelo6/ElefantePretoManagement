require "test_helper"

class ContumTest < ActiveSupport::TestCase

  test 'Criando conta sem o preenchimento dos campos' do
    contum = Contum.new
    assert_not contum.save
  end

  test 'Criando conta com preenchimento dos campos corretos' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new nome: 'Ana Souza', cpf: '84127420014'
    assert cliente.save
    contum = Contum.new item_id: item.id, cliente_id: cliente.id,  total: '7'
    assert contum.save
  end

  test 'Criando conta com o campo cliente vazio' do
    item = Item.new produto: 'Heineken', valor: '7'
    assert item.save
    cliente = Cliente.new
    assert_not cliente.save
    contum = Contum.new total: '7', item_id: item.id, cliente_id: cliente.id
    assert_not contum.save
  end
end
