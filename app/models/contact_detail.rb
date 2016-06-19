class ContactDetail < ActiveRecord::Base
  belongs_to :user
  has_attached_file :visiting_card_front_image,
    :path => ":rails_root/public/system/visiting_card_front_image/:id/:style/:basename.:extension", 
    :url => "/system/visiting_card_front_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :visiting_card_front_image
  
   has_attached_file :visiting_card_back_image,
    :path => ":rails_root/public/system/visiting_card_back_image/:id/:style/:basename.:extension", 
    :url => "/visiting_card_back_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :visiting_card_back_image
   
   has_attached_file :signature,
    :path => ":rails_root/public/system/signature/:id/:style/:basename.:extension", 
    :url => "/system/signature/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :signature
end
