json.array!(@information) do |information|
  json.extract! information, :id, :create_By, :sync_date, :sync_status, :google_status, :delivery_no, :delivery_status, :update_by_idil, :update_date_idil, :update_by_customer, :update_date_customer, :qc_date, :qc_by, :qc_status, :qc_remarks, :user_id
  json.url information_url(information, format: :json)
end
