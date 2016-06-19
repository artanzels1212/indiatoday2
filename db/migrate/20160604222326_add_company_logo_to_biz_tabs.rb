class AddCompanyLogoToBizTabs < ActiveRecord::Migration
  def up
    add_attachment :biz_tabs, :company_logo
  end
  def down
    remove_attachment :biz_tabs, :company_logo
  end
end
