require 'cpf_cnpj'
class Funcionario < ApplicationRecord
  belongs_to :cargo
  accepts_nested_attributes_for :cargo

  validates :nome, presence: true, length: {in: 2..50}
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validate :nascimento_valido
  validate :cpf_valido

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, "formato ou numero errado")
    end
  end
  def nascimento_valido
    if nascimento.present? && nascimento > Date.today
      errors.add(:data, "Sua data de nascimento é inválida!")
    end
  end
end
