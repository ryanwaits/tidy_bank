class AddBalanceToChildren < ActiveRecord::Migration
  def change
    add_column :children, :balance, :float, default: 0
  end
end
