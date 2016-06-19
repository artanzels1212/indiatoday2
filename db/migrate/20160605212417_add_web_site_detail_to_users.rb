class AddWebSiteDetailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :web_site_detail, :boolean
  end
end
