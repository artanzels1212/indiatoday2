json.array!(@website_details) do |website_detail|
  json.extract! website_detail, :id, :hp_key_desc, :hp_detail_desc, :au_profile_heading, :au_profile_desc, :awards_heading, :awards_desc, :qc_heading, :qc_desc, :infra_heading, :infra_desc, :testimonial_date, :testimonial_desc, :news_date, :news_headline, :news_coverage_url, :news_desc, :job_title, :job_desc, :cp_heading, :cp_desc, :products, :team, :cert_heading, :cert_details, :valid_from, :valid_till, :issued_on, :issued_by, :honour_award, :patents, :trademarks, :created_by, :updated_by, :deleted_by, :user_id
  json.url website_detail_url(website_detail, format: :json)
end
