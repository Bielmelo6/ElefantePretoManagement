class Funcionario < ApplicationRecord
end

class Pessoa < Funcionario
  alias_attribute :nome, :cpf;
end