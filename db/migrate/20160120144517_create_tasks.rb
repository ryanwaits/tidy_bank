class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.references :child, index: true, foreign_key: true
      t.boolean :completed
      t.float :price
      t.date :due_date
    end
  end
end
