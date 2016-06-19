class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :add_product
      t.string :product_name
      t.string :approx_price
      t.string :min_order_quantity
      t.string :unit_type
      t.string :product_group
      t.string :product_desc
      t.text :top_5
      t.string :created_by
      t.string :updated_by
      t.string :deleted_by
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
