Feature: Login
  As a Dono
  I want to realizar login, logout e cadastro
  So that eu consiga acessar o sistema

  Scenario: cadastrar com sucesso
    Given estou na pagina inicial
    And eu clico no botao de cadastrar
    When eu preencho o dono de nome: 'Alex Camilo', cpf: '161169850-25', cnpj: '44998543000115', email: 'teste@teste', password: '12345678', password_confirmation: '12345678' e clico cadastrar
    Then eu vejo uma mensagem que fui cadastrado com sucesso