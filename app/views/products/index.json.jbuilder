json.array!(@products) do |product|
  json.extract! product, :id, :add_product, :product_name, :approx_price, :min_order_quantity, :unit_type, :product_group, :product_desc, :top_5, :created_by, :updated_by, :deleted_by, :user_id
  json.url product_url(product, format: :json)
end
