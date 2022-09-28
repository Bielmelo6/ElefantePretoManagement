Feature: Cliente
  As a cliente
  I want to adicionar, remover, visualizar e editar meu cadastro, visualizar e comprar itens cardápio
  So that eu possa visualizar meus dados, visualizar e escolher produtos, aproveitar o serviço

  Scenario: cadastrar cliente com sucesso
    Given estou na pagina de cliente
    When eu preencho um cliente de nome: 'ivan do nascimento', cpf: '161169850-25' e clico cadastrar
    Then eu vejo uma mensagem que o cliente  foi cadastrado com sucesso

  Scenario: cadastrar cliente com nome invalido
    Given estou na pagina de cliente
    When eu preencho um cliente de nome: 'a', cpf: '161169850-25' e clico cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro com sucesso
    Given estou na pagina de clientes
    And o cliente de nome: 'ivan do nascimento', cpf: '161169850-25' existe
    When eu edito o nome do cliente : 'ivan do nascimento' para :'ivan do' e clico atualizar
    Then eu vejo uma mensagem que o cliente  foi editado com sucesso

  Scenario: editar cadastro com nome invalido
    Given estou na pagina de clientes
    And o cliente de nome: 'ivan do nascimento', cpf: '161169850-25' existe
    When eu edito o nome do cliente : 'ivan do nascimento' para :'i' e clico atualizar
    Then eu vejo uma mensagem de erro de nome invalido