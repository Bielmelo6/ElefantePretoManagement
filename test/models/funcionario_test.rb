require "test_helper"

class FuncionarioTest < ActiveSupport::TestCase

  test 'Criando funcionario sem o preenchimento dos campos' do
    funcionario = Funcionario.new
    assert_not funcionario.save
  end

  test 'Criando funcionario com preenchimento dos campos corretos' do
    cargo = Cargo.new funcao: 'Gerente', salario: '2000'
    assert cargo.save
    funcionario = Funcionario.new nome: 'Ana Souza', email: 'teste@teste.com',
                                  nascimento: Date.parse("Dec 12 1995"), cpf: '84127420014',
                                  cargo_id: cargo.id
    assert funcionario.save
  end

  test 'Criando conta sem o cargo existir' do
    cargo = Cargo.new
    assert_not cargo.save
    funcionario = Funcionario.new nome: 'Ana Souza', email: 'teste@teste.com',
                                  nascimento: Date.parse("Dec 12 1995"), cpf: '84127420014',
                                  cargo_id: cargo.id
    assert_not funcionario.save
  end
end
