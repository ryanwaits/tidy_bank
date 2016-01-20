class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.float :current_balance
      t.float :balance_due
    end
  end
end
