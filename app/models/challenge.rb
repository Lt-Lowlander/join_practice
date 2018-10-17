class Challenge < ApplicationRecord
  validates :title, presence: true
  validates :number_of_users, numericality: { greater_than_or_equal_to: 1 }

  has_many :collaborations
  has_many :users, through: :collaborations
end
