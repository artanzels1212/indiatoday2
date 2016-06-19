class AddTestimonialImageToWebsiteDetails < ActiveRecord::Migration
   def up
    add_attachment :website_details, :testimonial_image
  end
  def down
    remove_attachment :website_details, :testimonial_image
  end
end
