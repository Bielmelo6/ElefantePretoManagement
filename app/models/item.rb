class Item < ApplicationRecord

  has_many :contums, dependent: :destroy

  validates :produto, presence: true
  validates :valor, presence: true, numericality: {only_integer: true}

end
