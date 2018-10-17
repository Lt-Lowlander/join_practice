class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :users, through: :collaborations
end
