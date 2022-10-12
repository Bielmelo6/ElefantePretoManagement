Feature: Dono
  As a Dono
  I want to adicionar, remover, visualizar e editar meu cadastro, logar e deslogar
  So that eu possa ter controle dos meus dados e do sistema

  Scenario: cadastrar dono com sucesso
    Given estou na pagina de adicionar 'dono'
    When eu preencho o dono de nome: 'Alex Camilo', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678'
    And eu clico no botao de cadastrar
    Then eu vejo uma mensagem que fui cadastrado com sucesso

  Scenario: cadastrar dono com nome invalido
    Given estou na pagina de adicionar 'dono'
    When eu preencho o dono de nome: 'A', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678'
    And eu clico no botao de cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro com sucesso
    Given estou na pagina de 'donos'
    And o 'dono' de nome: 'Alex Camilo', cpf: '84127420014' existe
    When eu edito o nome do dono : 'Alex Camilo' para : 'Alex Camilo de Melo'
    And eu clico no botao de cadastrar
    Then eu vejo uma mensagem que o 'Dono' foi editado com sucesso

  Scenario: editar cadastro com nome invalido
    Given estou na pagina de 'donos'
    And o 'dono' de nome: 'Alex Camilo', cpf: '84127420014' existe
    When eu edito o nome do dono : 'Alex Camilo' para : 't'
    And eu clico no botao de cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

    Scenario: remover um dono com sucesso
      Given estou na pagina de 'donos'
      And o 'dono' de nome: 'Alex Camilo', cpf: '84127420014' existe
      When eu removo o 'dono' de nome: 'Alex Camilo'
      Then eu vejo uma mensagem que o 'Dono' foi removido com sucesso
