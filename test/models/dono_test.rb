require "test_helper"

class DonoTest < ActiveSupport::TestCase

  test 'Criando dono sem o preenchimento dos campos' do
    dono = Dono.new
    assert_not dono.save
  end

  test 'Criando dono com preenchimento dos campos corretos' do
    dono = Dono.new  nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100', email: "teste1@teste1.com", password: "teste123", password_confirmation: "teste123"
    assert dono.save
  end

  test 'Criando dono com o cpf e o cnpj invalidos' do
    dono = Dono.new nome: 'Alex Camilo', cpf: '123', cnpj: '1234', email: "teste2@teste2.com", password: "teste123", password_confirmation: "teste123"
    assert_not dono.save
  end

  test 'Criando dono com só um campo preenchido' do
    dono = Dono.new cpf: '84127420014'
    assert_not dono.save
  end

  test 'Criando dono com o campo password invalido' do
    dono = Dono.new nome: 'Alex Camilo', cpf: '84127420014', cnpj: '82867923000100', email: "teste3@teste3.com", password: "t", password_confirmation: "t"
    assert_not dono.save
  end

  test 'Criando dono com todos os campos invalidos' do
    dono = Dono.new nome: 'A', cpf: '12345678910', cnpj: '12345678910121', email: "teste", password: "ti", password_confirmation: "ti"
    assert_not dono.save
  end

end

