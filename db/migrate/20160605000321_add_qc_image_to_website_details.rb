class AddQcImageToWebsiteDetails < ActiveRecord::Migration
   def up
    add_attachment :website_details, :qc_image
  end
  def down
    remove_attachment :website_details, :qc_image
  end
end
