class AddCustomProfileImageToWebsiteDetails < ActiveRecord::Migration
  def up
    add_attachment :website_details, :custom_profile_image
  end
  def down
    remove_attachment :website_details, :custom_profile_image
  end
end
