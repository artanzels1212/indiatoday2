class BizTab < ActiveRecord::Base
  belongs_to :user
  has_attached_file :company_logo,
    :path => ":rails_root/public/system/company_logo/:id/:style/:basename.:extension", 
    :url => "/system/company_logo/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :company_logo
  
  has_attached_file :office_interior_image,
    :path => ":rails_root/public/system/office_interior_image/:id/:style/:basename.:extension", 
    :url => "/system/office_interior_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :office_interior_image
  
  has_attached_file :office_exterior_image,
    :path => ":rails_root/public/system/office_exterior_image/:id/:style/:basename.:extension", 
    :url => "/system/office_exterior_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :office_exterior_image
end
