class AddProductToUsers < ActiveRecord::Migration
  def change
    add_column :users, :product, :boolean
  end
end
