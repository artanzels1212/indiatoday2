class AddVisitingCardFrontImageToContactDetails < ActiveRecord::Migration
  def up
    add_attachment :contact_details,:visiting_card_front_image
  end
  def down
    remove_attachment :contact_details, :visiting_card_front_image
  end
end
