require "test_helper"

class FuncionarioTest < ActiveSupport::TestCase

  test 'Criando funcionario sem o preenchimento dos campos' do
    funcionario = Funcionario.new
    assert_not funcionario.save
  end

  test 'Criando funcionario com preenchimento dos campos corretos' do
    cargo = Cargo.new funcao: 'Zeladora', salario: '1500'
    assert cargo.save
    funcionario = Funcionario.new nome: 'Alice Morais', email: 'teste789@teste.com',
                                  nascimento: Date.parse("Feb 11 1995"), cpf: '84127420014',
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

  test 'Criando conta com recebendo o parametro errado do cargo' do
    cargo = Cargo.new funcao: 'Balconista', salario: '1700'
    assert cargo.save
    funcionario = Funcionario.new nome: 'Felipe Augusto', email: 'teste567@teste.com',
                                  nascimento: Date.parse("Aug 06 1992"), cpf: '84127420014',
                                  cargo_id: cargo.funcao
    assert_not funcionario.save
  end

  test 'Criando conta com o campo nascimento com uma data no futuro' do
    cargo = Cargo.new funcao: 'Delivery', salario: '1400'
    assert cargo.save
    funcionario = Funcionario.new nome: 'Giovane Silva', email: 'teste1357@teste.com',
                                  nascimento: Date.parse("Sep 07 2023"), cpf: '84127420014',
                                  cargo_id: cargo.id
    assert_not funcionario.save
  end

  test 'Criando conta com o campo cpf com um cpf inexistente' do
    cargo = Cargo.new funcao: 'Cozinheira', salario: '1200'
    assert cargo.save
    funcionario = Funcionario.new nome: 'Rogeria Lacerda', email: 'teste123@teste.com',
                                  nascimento: Date.parse("Dec 15 1990"), cpf: '12345678910',
                                  cargo_id: cargo.id
    assert_not funcionario.save
  end

  end
