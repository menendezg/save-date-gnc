class Table < ApplicationRecord
  has_many :guests, dependent: :destroy
  validates :name, presence: true
end
