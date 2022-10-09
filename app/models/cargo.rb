class Cargo < ApplicationRecord

  has_many :funcionarios

  validates :funcao, presence: true, length: {in: 2..50}
  validates :salario, presence: true, length: {in: 2..50}, numericality: {only_integer: true}
end
