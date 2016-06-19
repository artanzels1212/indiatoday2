class AddHpImageToWebsiteDetails < ActiveRecord::Migration
   def up
    add_attachment :website_details, :hp_image
  end
  def down
    remove_attachment :website_details, :hp_image
  end
end
