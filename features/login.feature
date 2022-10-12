Feature: Login
  As a Dono
  I want to realizar login, logout e cadastro
  So that eu consiga acessar o sistema

  Scenario: cadastrar com sucesso
    Given estou na pagina inicial
    And eu clico no botao de cadastrar
    When eu preencho o dono de nome: 'Alex Camilo', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678'
    And eu clico no botao de cadastrar
    Then eu vejo uma mensagem que fui cadastrado com sucesso

  Scenario: logar com sucesso
    Given estou na pagina inicial
    And eu clico no botao de logar
    When eu preencho o email: 'teste1@teste1.com' e senha: 'teste123'
    Then eu vejo uma mensagem que fui logado com sucesso

  Scenario: logar com email invalido
    Given estou na pagina inicial
    And eu clico no botao de logar
    When eu preencho o email: 't@teste1.com' e senha: 'teste123'
    Then eu vejo uma mensagem de erro

  Scenario: logar com senha invalida
    Given estou na pagina inicial
    And eu clico no botao de logar
    When eu preencho o email: 'teste1@teste1.com' e senha: 'teste12'
    Then eu vejo uma mensagem de erro

  Scenario: deslogar com sucesso
    Given estou logado
    And eu clico no botao de deslogar
    Then eu vejo uma mensagem que fui deslogado com sucesso