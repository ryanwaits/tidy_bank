class AddBalanceToChildren < ActiveRecord::Migration
  def change
    add_column :children, :balance, :float
  end
end
