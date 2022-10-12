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

    Scenario: cadastrar pedido com quantidade invalida
      Given estou na pagina de adicionar 'pedido'
      When eu preencho o pedido do cliente: 'ivan do nascimento', item: 'paçoca', quantidade: '0'
      Then eu vejo uma mensagem de erro do pedido

    Scenario: editar pedido com sucesso
      Given estou na pagina de 'pedidos'
      And o pedido de quantidade: '2' existe
      When eu edito a quantidade do pedido: '2' para :'10'
      And eu clico no botao de atualizar 'Pedido'
      Then eu vejo uma mensagem que o 'Pedido' foi editado com sucesso

    Scenario: editar pedido com quantidade invalida
      Given estou na pagina de 'pedidos'
      And o pedido de quantidade: '2' existe
      When eu edito a quantidade do pedido: '2' para :'0'
      And eu clico no botao de atualizar 'Pedido'
      Then eu vejo uma mensagem de erro da quantidade

    Scenario: remover pedido com sucesso
      Given estou na pagina de 'pedidos'
      And o pedido de quantidade: '2' existe
      When eu removo o pedido de quantidade: '2'
      Then eu vejo uma mensagem que o 'Pedido' foi removido com sucesso