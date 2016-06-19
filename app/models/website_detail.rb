class WebsiteDetail < ActiveRecord::Base
  belongs_to :user
  has_attached_file :hp_image,
    :path => ":rails_root/public/system/hp_image/:id/:style/:basename.:extension", 
    :url => "/system/hp_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :hp_image
  
  has_attached_file :award_image,
    :path => ":rails_root/public/system/award_image/:id/:style/:basename.:extension", 
    :url => "/system/award_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :award_image
  
   has_attached_file :qc_image,
    :path => ":rails_root/public/system/qc_image/:id/:style/:basename.:extension", 
    :url => "/system/qc_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :qc_image
   
   has_attached_file :infra_acilities_image,
    :path => ":rails_root/public/system/infra_acilities_image/:id/:style/:basename.:extension", 
    :url => "/system/infra_acilities_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :infra_acilities_image
   
   has_attached_file :testimonial_image,
    :path => ":rails_root/public/system/testimonial_image/:id/:style/:basename.:extension", 
    :url => "/system/testimonial_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :testimonial_image
   
   has_attached_file :news_image,
    :path => ":rails_root/public/system/news_image/:id/:style/:basename.:extension", 
    :url => "/system/news_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :news_image
   
   has_attached_file :custom_profile_image,
    :path => ":rails_root/public/system/custom_profile_image/:id/:style/:basename.:extension", 
    :url => "/system/custom_profile_image/:id/:style/:basename.:extension"
   do_not_validate_attachment_file_type :custom_profile_image

   def self.search(dateF, agentF)
    if dateF || agentF
      where(["created_at LIKE ?", "%#{dateF}%"]).all
      where(["created_by LIKE ?", "%#{agentF}%"]).all
    else
      all.order("created_at ASC")
    end
  end

end
