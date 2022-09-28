class Item < ApplicationRecord

  has_many :contums, dependent: :destroy
  accepts_nested_attributes_for :contums, allow_destroy: true

  validates :produto, presence: true
  validates :valor, presence: true, numericality: {only_integer: true}

end
