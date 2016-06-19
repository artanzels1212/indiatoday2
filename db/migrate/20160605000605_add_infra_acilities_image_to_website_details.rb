class AddInfraAcilitiesImageToWebsiteDetails < ActiveRecord::Migration
   def up
    add_attachment :website_details, :infra_acilities_image
  end
  def down
    remove_attachment :website_details, :infra_acilities_image
  end
end
