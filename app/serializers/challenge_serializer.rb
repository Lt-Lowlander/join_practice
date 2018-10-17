class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :number_of_users

  has_many :users, through: :collaborations
end
