class Item < ApplicationRecord

  has_many :contums

  validates :produto, presence: true
  validates :valor, presence: true, numericality: {only_integer: true}
end
