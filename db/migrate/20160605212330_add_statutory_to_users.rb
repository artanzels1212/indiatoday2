class AddStatutoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :statutory, :boolean
  end
end
