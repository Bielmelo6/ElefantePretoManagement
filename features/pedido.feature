Feature: Pedido
  As a Dono
  I want to registrar, alterar e remover os pedidos
  So that eu possa atender os clientes
  Rule: O dono está logado no sistema
    Background:
      Given estou logado

  Scenario: registrar pedido com sucesso
    Given estou na pagina de adicionar 'pedido'
    When eu preencho o pedido do cliente: 'ivan do nascimento', item: 'paçoca', quantidade: '5'
    And eu clico no botao de criar 'Pedido'
    Then eu vejo uma mensagem que o 'Pedido' foi cadastrado com sucesso

