class AddOfficeInteriorImageToBizTabs < ActiveRecord::Migration
  def up
    add_attachment :biz_tabs, :office_interior_image
  end
  def down
    remove_attachment :biz_tabs, :office_interior_image
  end
end
