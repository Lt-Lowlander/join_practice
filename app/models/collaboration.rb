class Collaboration < ApplicationRecord
  validates :user_id, presence: true
  validates :challenge_id, presence: true

  belongs_to :user
  belongs_to :challenge
end
