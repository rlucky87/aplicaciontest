class Restaurant < ApplicationRecord
  remove_reference :customers, foreign_key: true
  belongs_to :customer
  has_many :reservations
end
