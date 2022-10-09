require 'cpf_cnpj'

class Cliente < ApplicationRecord

  has_one :pedido, dependent: :destroy

  validates :nome, presence: true, length: {in: 2..50}
  validate :cpf_valido

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, "formato ou numero errado")
    end
  end
end
