class CollaborationSerializer < ActiveModel::ChallengeSerializer
  belongs_to :users
  belongs_to :challenges
end
