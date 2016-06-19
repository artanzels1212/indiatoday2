class AddBizTabToUsers < ActiveRecord::Migration
  def change
    add_column :users, :biz_tab, :boolean
  end
end
