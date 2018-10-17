class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date

  belongs_to :user
  belongs_to :challenge
end
