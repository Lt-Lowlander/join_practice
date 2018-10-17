class Task < ApplicationRecord
  validates :name, presence: true

  belongs_to :challenge
  belongs_to :user
end
