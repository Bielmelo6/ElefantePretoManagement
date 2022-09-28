require "test_helper"

class DonoTest < ActiveSupport::TestCase

  test 'Criando dono sem o preenchimento dos campos' do
    dono = Dono.new
    assert_not dono.save
  end

  test 'Criando dono com preenchimento dos campos corretos' do
    dono = Dono.new nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100'
    assert dono.save
  end

  test 'Criando dono com o cpf e o cnpj invalidos' do
    dono = Dono.new nome: 'Alex Camilo', cpf: '123', cnpj: '1234'
    assert_not dono.save
  end

end

