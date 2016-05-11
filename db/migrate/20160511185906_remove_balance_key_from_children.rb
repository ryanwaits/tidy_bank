class RemoveBalanceKeyFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :balance_id, :references
  end
end
