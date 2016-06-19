class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :create_By
      t.string :sync_date
      t.string :sync_status
      t.string :google_status
      t.string :delivery_no
      t.string :delivery_status
      t.string :update_by_idil
      t.string :update_date_idil
      t.string :update_by_customer
      t.string :update_date_customer
      t.string :qc_date
      t.string :qc_by
      t.string :qc_status
      t.string :qc_remarks
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
