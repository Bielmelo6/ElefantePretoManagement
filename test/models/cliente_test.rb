require "test_helper"

class ClienteTest < ActiveSupport::TestCase

  test 'Criando cliente sem o preenchimento dos campos' do
    cliente = Cliente.new
    assert_not cliente.save
  end

  test 'Criando cliente com preenchimento dos campos corretos' do
    cliente = Cliente.new nome: 'Ana Souza', cpf: '84127420014'
    assert cliente.save
  end

  test 'Criando cliente com o cpf invalido' do
    cliente = Cliente.new nome: 'Ana Souza', cpf: '123'
    assert_not cliente.save
  end

end
