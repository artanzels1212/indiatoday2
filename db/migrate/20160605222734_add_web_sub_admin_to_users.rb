class AddWebSubAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sub_admin, :boolean
  end
end
