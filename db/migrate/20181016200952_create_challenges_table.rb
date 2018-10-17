class CreateChallengesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title, null: false
      t.integer :number_of_users, null: false
      t.text :description
    end
  end
end
