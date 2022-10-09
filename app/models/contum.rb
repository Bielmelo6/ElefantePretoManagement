class Contum < ApplicationRecord

  belongs_to :item

  validates :total, presence: true, length: {in: 1..50}

end
