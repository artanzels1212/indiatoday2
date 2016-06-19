class AddVisitingCardBackImageToContactDetails < ActiveRecord::Migration
  def up
    add_attachment :contact_details,:visiting_card_back_image
  end
  def down
    remove_attachment :contact_details, :visiting_card_back_image
  end
end
