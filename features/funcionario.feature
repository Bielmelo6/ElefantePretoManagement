Feature: Funcionario
  As a funcionario
  I want to adicionar, remover, visualizar e editar meu cadastro, adicionar e editar o cardapio, visualizar conta do cliente
  So that eu possa visualizar meus dados, ter controle do cardapio, oferecer servico ao cliente

  Scenario: cadastrar funcionario com sucesso
    Given estou na pagina de funcionario
    When eu preencho um funcionario de nome: 'ivando', cpf: '161169850-25', nascimento: '2001-02-02', email: 'test@test.com', cargo: '1' e clico cadastrar
    Then eu vejo uma mensagem que o funcionario  foi cadastrado com sucesso

  Scenario: cadastrar funcionario com nome invalido
    Given estou na pagina de funcionario
    When eu preencho um funcionario de nome: 'i', cpf: '161169850-25', nascimento: '2001-02-02', email: 'test@test.com', cargo: '1' e clico cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: editar cadastro do funcionario com sucesso
    Given estou na pagina de funcionarios
    And o funcionario de nome: 'ivan do nascimento', cpf: '161169850-25', nascimento: '2001-02-02', email: 'test@test.com', cargo: '1' existe
    When eu edito o nome do funcionario : 'ivan do nascimento' para :'ivan do' e clico atualizar
    Then eu vejo uma mensagem que o funcionario foi editado com sucesso

  