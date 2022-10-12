Feature: Funcionario
  As a funcionario
  I want to adicionar, remover, visualizar e editar meu cadastro, adicionar e editar o cardapio, visualizar conta do cliente
  So that eu possa visualizar meus dados, ter controle do cardapio, oferecer servico ao cliente,

  Rule: O dono está logado no sistema
    Background:
      Given estou logado

  Scenario: cadastrar funcionario com sucesso
    Given estou na pagina de adicionar 'funcionario'
    When eu preencho um funcionario de nome: 'ivan do nascimento', cpf: '161169850-25', nascimento: '2001-02-02', email: 'test@test.com', cargo: '1'
    And eu clico no botao de criar 'Funcionario'
    Then eu vejo uma mensagem que o 'Funcionario' foi cadastrado com sucesso

  Scenario: cadastrar funcionario com nome invalido
    Given estou na pagina de adicionar 'funcionario'
    When eu preencho um funcionario de nome: 'i', cpf: '161169850-25', nascimento: '2001-02-02', email: 'test@test.com', cargo: '1'
    And eu clico no botao de criar 'Funcionario'
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro do funcionario com sucesso
    Given estou na pagina de 'funcionarios'
    And o 'funcionario' de nome: 'Alice Morais', cpf: '84127420014' existe
    When eu edito o nome do 'funcionario': 'Alice Morais' para :'ivan do'
    And eu clico no botao de atualizar 'Funcionario'
    Then eu vejo uma mensagem que o 'Funcionario' foi editado com sucesso

  Scenario: editar cadastro do funcionario com nome invalido
    Given estou na pagina de 'funcionarios'
    And o 'funcionario' de nome: 'Alice Morais', cpf: '84127420014' existe
    When eu edito o nome do 'funcionario': 'Alice Morais' para :'i'
    And eu clico no botao de atualizar 'Funcionario'
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: remover funcionario com sucesso
    Given estou na pagina de 'funcionarios'
    And o 'funcionario' de nome: 'Alice Morais', cpf: '84127420014' existe
    When eu removo o 'funcionario' de nome: 'Alice Morais'
    Then eu vejo uma mensagem que o 'Funcionario' foi removido com sucesso