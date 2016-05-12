class RemoveCompletedColumnFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :completed, :boolean
    add_column :tasks, :completed, :boolean, default: false
  end
end
