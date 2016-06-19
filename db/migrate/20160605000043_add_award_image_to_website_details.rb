class AddAwardImageToWebsiteDetails < ActiveRecord::Migration
  def up
    add_attachment :website_details, :award_image
  end
  def down
    remove_attachment :website_details, :award_image
  end
end
