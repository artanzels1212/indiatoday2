class AddSignatureToContactDetails < ActiveRecord::Migration
  def up
    add_attachment :contact_details,:signature
  end
  def down
    remove_attachment :contact_details, :signature
  end
end
