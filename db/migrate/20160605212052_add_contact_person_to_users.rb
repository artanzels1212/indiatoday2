class AddContactPersonToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contact_person, :boolean
  end
end
