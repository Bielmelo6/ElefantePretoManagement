class Pedido < ApplicationRecord

  belongs_to :item
  belongs_to :cliente

  validates :total, presence: true, length: {in: 1..50}

end
