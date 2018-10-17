class CreateTasksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.string :due_date

      t.belongs_to :user
      t.belongs_to :challenge, null: false
      
      t.timestamps null: false
    end
  end
end
