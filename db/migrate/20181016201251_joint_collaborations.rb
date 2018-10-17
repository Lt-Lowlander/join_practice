class JointCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.belongs_to :user, null: false
      t.belongs_to :challenge, null: false

      t.timestamps null: false
    end
  end
end
