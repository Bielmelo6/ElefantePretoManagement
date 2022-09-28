class Item < ApplicationRecord
  validates :item, presence: true
  validates :valor, presence: true, numericality: {only_integer: true}
end
