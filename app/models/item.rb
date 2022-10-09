class Item < ApplicationRecord

  validates :produto, presence: true, length: {in: 2..50}
  validates :valor, presence: true, numericality: {only_integer: true}

end
