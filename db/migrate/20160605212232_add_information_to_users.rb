class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :information, :boolean
  end
end
