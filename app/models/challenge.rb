class Challenge < ApplicationRecord
  validates :title, presence: true

  has_many :tasks
  has_many :collaborations
  has_many :users, through: :collaborations
end
