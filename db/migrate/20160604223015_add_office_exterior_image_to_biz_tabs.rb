class AddOfficeExteriorImageToBizTabs < ActiveRecord::Migration
  def up
    add_attachment :biz_tabs, :office_exterior_image
  end
  def down
    remove_attachment :biz_tabs, :office_exterior_image
  end
end
