class CreateWebsiteDetails < ActiveRecord::Migration
  def change
    create_table :website_details do |t|
      t.string :hp_key_desc
      t.string :hp_detail_desc
      t.string :au_profile_heading
      t.string :au_profile_desc
      t.string :awards_heading
      t.string :awards_desc
      t.string :qc_heading
      t.string :qc_desc
      t.string :infra_heading
      t.string :infra_desc
      t.string :testimonial_date
      t.string :testimonial_desc
      t.string :news_date
      t.text :news_headline
      t.text :news_coverage_url
      t.text :news_desc
      t.string :job_title
      t.text :job_desc
      t.string :cp_heading
      t.string :cp_desc
      t.string :products
      t.string :team
      t.string :cert_heading
      t.string :cert_details
      t.string :valid_from
      t.string :valid_till
      t.string :issued_on
      t.string :issued_by
      t.string :honour_award
      t.string :patents
      t.string :trademarks
      t.string :created_by
      t.string :updated_by
      t.string :deleted_by
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
