class AddPasswordToAppUser < ActiveRecord::Migration
  def change
    add_column :app_users, :password, :string
  end
end
