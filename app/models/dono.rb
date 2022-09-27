class Dono < ApplicationRecord
end

class Pessoa < Dono
  alias_attribute :nome, :cpf;
end