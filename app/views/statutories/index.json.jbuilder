json.array!(@statutories) do |statutory|
  json.extract! statutory, :id, :reg_no, :reg_authority, :cin_no, :tan_no, :pan_no, :service_tax_no, :excise_reg_no, :tin_no, :dgft, :cst_no, :ssi_no, :epf_no, :esi_no, :sct_no, :dnb_no, :rbi_no, :fssai, :nsic_no, :sst_no, :created_by, :updated_by, :deleted_by, :user_id
  json.url statutory_url(statutory, format: :json)
end
