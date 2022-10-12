Feature: Cliente
  As a cliente
  I want to adicionar, remover, visualizar e editar meu cadastro, visualizar e comprar itens cardápio
  So that eu possa visualizar meus dados, visualizar e escolher produtos, aproveitar o serviço

  Rule: O dono está logado no sistema
    Background:
      Given estou logado

  Scenario: cadastrar cliente com sucesso
    Given estou na pagina de adicionar 'cliente'
    When eu preencho um cliente de nome: 'ivan do nascimento', cpf: '161169850-25'
    And eu clico no botao de criar 'Cliente'
    Then eu vejo uma mensagem que o 'Cliente' foi cadastrado com sucesso

  Scenario: cadastrar cliente com nome invalido
    Given estou na pagina de adicionar 'cliente'
    When eu preencho um cliente de nome: 'a', cpf: '161169850-25'
    And eu clico no botao de criar 'Cliente'
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro com sucesso
    Given estou na pagina de 'clientes'
    And o 'cliente' de nome: 'ivan do nascimento', cpf: '161169850-25' existe
    When eu edito o nome do 'cliente': 'ivan do nascimento' para :'ivan do'
    And eu clico no botao de atualizar 'Cliente'
    Then eu vejo uma mensagem que o 'Cliente' foi editado com sucesso

  Scenario: editar cadastro com nome invalido
    Given estou na pagina de 'clientes'
    And o 'cliente' de nome: 'ivan do nascimento', cpf: '161169850-25' existe
    When eu edito o nome do 'cliente': 'ivan do nascimento' para :'i'
    And eu clico no botao de atualizar 'Cliente'
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: remover cadastro com sucesso
    Given estou na pagina de 'clientes'
    And o 'cliente' de nome: 'ivan do nascimento', cpf: '161169850-25' existe
    When eu removo o 'cliente' de nome: 'ivan do nascimento'
    Then eu vejo uma mensagem que o 'Cliente' foi removido com sucesso