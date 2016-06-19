json.array!(@contact_details) do |contact_detail|
  json.extract! contact_detail, :id, :contact_person, :designation, :ceo_name, :company_name, :country, :city, :state, :locality, :postal_code, :address1, :address2, :area, :contact_person_no, :mobile1, :mobile2, :primary_email, :alternate_email, :legal_owner, :legal_owner_design, :business_category, :terms_condition, :created_by, :updated_by, :deleted_by, :user_id
  json.url contact_detail_url(contact_detail, format: :json)
end
