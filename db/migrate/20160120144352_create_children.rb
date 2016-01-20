class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.references :parent, index: true, foreign_key: true
      t.references :balance, index: true, foreign_key: true
    end
  end
end
