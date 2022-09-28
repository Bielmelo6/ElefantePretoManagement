class Item < ApplicationRecord

  validates :produto, presence: true
  validates :valor, presence: true, numericality: {only_integer: true}
end
