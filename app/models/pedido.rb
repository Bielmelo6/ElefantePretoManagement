class Pedido < ApplicationRecord
  belongs_to :item
  belongs_to :cliente

  validates :quantidade, presence: true, length: {in: 1..50}, :numericality => { :greater_than => 0 }

end
