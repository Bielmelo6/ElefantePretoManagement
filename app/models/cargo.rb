class Cargo < ApplicationRecord
  belongs_to :funcionario

  validates :funcao, presence: true, length: 4
  validates :salario, presence: true, length: 4, numericality: {only_integer: true}
end
