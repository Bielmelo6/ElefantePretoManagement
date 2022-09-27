class Cliente < ApplicationRecord

end

class Pessoa < Cliente
  alias_attribute :nome, :cpf;
end