class Product < ActiveRecord::Base
  belongs_to :user
  has_attached_file :product_image,
    :path => ":rails_root/public/system/product_image/:id/:style/:basename.:extension", 
    :url => "/system/product_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :product_image
end
