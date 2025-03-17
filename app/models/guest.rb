class Guest < ApplicationRecord
  belongs_to :table
  validates :name, :last_name, :email, presence: true
end
