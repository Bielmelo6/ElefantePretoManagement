require 'cpf_cnpj'

class Dono < ApplicationRecord

  validates :nome, presence: true, length: {in: 2..50}
  validate :cnpj_valido
  validate :cpf_valido

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, "formato ou numero errado")
    end
  end
  def cnpj_valido
    if cnpj.present? && !CNPJ.valid?(cnpj)
      errors.add(:cnpj, "formato ou numero errado")
    end
  end
end
