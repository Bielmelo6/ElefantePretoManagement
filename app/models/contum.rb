class Contum < ApplicationRecord
  belongs_to :item
  belongs_to :cliente

  validates :total, presence: true, length: 1
end
