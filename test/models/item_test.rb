require "test_helper"

class ItemTest < ActiveSupport::TestCase

  test 'Criando item sem o preenchimento dos campos' do
    item = Item.new
    assert_not item.save
  end

  test 'Criando item com preenchimento dos campos corretos' do
    item = Item.new produto: 'Corona', valor: '9'
    assert item.save
  end

  test 'Criando item com string no campo valor' do
    item = Item.new produto: 'Corona', valor: 'R$9,00'
    assert_not item.save
  end

end
