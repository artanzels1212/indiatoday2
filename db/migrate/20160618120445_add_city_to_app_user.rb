class AddCityToAppUser < ActiveRecord::Migration
  def change
    add_column :app_users, :city, :string
    add_column :app_users, :user_id, :integer
  end
end
