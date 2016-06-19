class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.string :contact_person
      t.string :designation
      t.string :ceo_name
      t.string :company_name
      t.string :country
      t.string :city
      t.string :state
      t.string :locality
      t.string :postal_code
      t.string :address1
      t.string :address2
      t.string :area
      t.string :contact_person_no
      t.string :mobile1
      t.string :mobile2
      t.string :primary_email
      t.string :alternate_email
      t.string :legal_owner
      t.string :legal_owner_design
      t.string :business_category
      t.string :terms_condition
      t.string :created_by
      t.string :updated_by
      t.string :deleted_by
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
