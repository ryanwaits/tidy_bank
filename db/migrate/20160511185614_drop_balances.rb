class DropBalances < ActiveRecord::Migration
  def change
    drop_table :balances, force: :cascade
  end
end
