require "test_helper"

class CargoTest < ActiveSupport::TestCase

  test 'Criando cargo sem o preenchimento dos campos' do
    cargo = Cargo.new
    assert_not cargo.save
  end

  test 'Criando cargo com preenchimento dos campos corretos' do
    cargo = Cargo.new funcao: 'Balconista', salario: '1600'
    assert cargo.save
  end

  test 'Criando cargo com o salario sendo uma palavra' do
    cargo = Cargo.new funcao: 'Gerente', salario: 'teste'
    assert_not cargo.save
  end

end

