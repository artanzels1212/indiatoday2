class User < ActiveRecord::Base
  has_many :app_users
  # Include default devise modules. Others available are:
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :Timeoutable
  has_many :contact_details  
  has_many :biz_tabs
  has_many :informations
  has_many :products
  has_many :statutories
  has_many :website_details      
end
