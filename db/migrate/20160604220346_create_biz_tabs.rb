class CreateBizTabs < ActiveRecord::Migration
  def change
    create_table :biz_tabs do |t|
      t.string :primary_business_type
      t.text :website
      t.string :about_us
      t.string :year_of_establishment
      t.string :no_of_employees
      t.string :annual_sales
      t.string :ownership_type
      t.text :alternate_website
      t.text :additional_businesses
      t.string :office_type
      t.string :question
      t.string :bankers_details
      t.string :business_day
      t.string :business_hours
      t.string :specialization
      t.string :remarks
      t.string :deals_in
      t.string :business_preferred_area
      t.string :created_by
      t.string :updated_by
      t.string :deleted_by
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
