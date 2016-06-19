class AddNewsImageToWebsiteDetails < ActiveRecord::Migration
   def up
    add_attachment :website_details, :news_image
  end
  def down
    remove_attachment :website_details, :news_image
  end
end
