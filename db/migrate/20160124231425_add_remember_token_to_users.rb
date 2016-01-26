class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :students, :remember_token, :string
    add_index :students, :remember_token
  end
end
