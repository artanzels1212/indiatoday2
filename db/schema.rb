# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160618120445) do

  create_table "app_users", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.string   "email",      limit: 255
    t.string   "mobile_no",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "password",   limit: 255
    t.string   "city",       limit: 255
    t.integer  "user_id",    limit: 4
  end

  create_table "biz_tabs", force: :cascade do |t|
    t.string   "primary_business_type",              limit: 255
    t.text     "website",                            limit: 65535
    t.string   "about_us",                           limit: 255
    t.string   "year_of_establishment",              limit: 255
    t.string   "no_of_employees",                    limit: 255
    t.string   "annual_sales",                       limit: 255
    t.string   "ownership_type",                     limit: 255
    t.text     "alternate_website",                  limit: 65535
    t.text     "additional_businesses",              limit: 65535
    t.string   "office_type",                        limit: 255
    t.string   "question",                           limit: 255
    t.string   "bankers_details",                    limit: 255
    t.string   "business_day",                       limit: 255
    t.string   "business_hours",                     limit: 255
    t.string   "specialization",                     limit: 255
    t.string   "remarks",                            limit: 255
    t.string   "deals_in",                           limit: 255
    t.string   "business_preferred_area",            limit: 255
    t.string   "created_by",                         limit: 255
    t.string   "updated_by",                         limit: 255
    t.string   "deleted_by",                         limit: 255
    t.integer  "user_id",                            limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "company_logo_file_name",             limit: 255
    t.string   "company_logo_content_type",          limit: 255
    t.integer  "company_logo_file_size",             limit: 4
    t.datetime "company_logo_updated_at"
    t.string   "office_interior_image_file_name",    limit: 255
    t.string   "office_interior_image_content_type", limit: 255
    t.integer  "office_interior_image_file_size",    limit: 4
    t.datetime "office_interior_image_updated_at"
    t.string   "office_exterior_image_file_name",    limit: 255
    t.string   "office_exterior_image_content_type", limit: 255
    t.integer  "office_exterior_image_file_size",    limit: 4
    t.datetime "office_exterior_image_updated_at"
  end

  add_index "biz_tabs", ["user_id"], name: "index_biz_tabs_on_user_id", using: :btree

  create_table "contact_details", force: :cascade do |t|
    t.string   "contact_person",                         limit: 255
    t.string   "designation",                            limit: 255
    t.string   "ceo_name",                               limit: 255
    t.string   "company_name",                           limit: 255
    t.string   "country",                                limit: 255
    t.string   "city",                                   limit: 255
    t.string   "state",                                  limit: 255
    t.string   "locality",                               limit: 255
    t.string   "postal_code",                            limit: 255
    t.string   "address1",                               limit: 255
    t.string   "address2",                               limit: 255
    t.string   "area",                                   limit: 255
    t.string   "contact_person_no",                      limit: 255
    t.string   "mobile1",                                limit: 255
    t.string   "mobile2",                                limit: 255
    t.string   "primary_email",                          limit: 255
    t.string   "alternate_email",                        limit: 255
    t.string   "legal_owner",                            limit: 255
    t.string   "legal_owner_design",                     limit: 255
    t.string   "business_category",                      limit: 255
    t.string   "terms_condition",                        limit: 255
    t.string   "created_by",                             limit: 255
    t.string   "updated_by",                             limit: 255
    t.string   "deleted_by",                             limit: 255
    t.integer  "user_id",                                limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "visiting_card_back_image_file_name",     limit: 255
    t.string   "visiting_card_back_image_content_type",  limit: 255
    t.integer  "visiting_card_back_image_file_size",     limit: 4
    t.datetime "visiting_card_back_image_updated_at"
    t.string   "visiting_card_front_image_file_name",    limit: 255
    t.string   "visiting_card_front_image_content_type", limit: 255
    t.integer  "visiting_card_front_image_file_size",    limit: 4
    t.datetime "visiting_card_front_image_updated_at"
    t.string   "signature_file_name",                    limit: 255
    t.string   "signature_content_type",                 limit: 255
    t.integer  "signature_file_size",                    limit: 4
    t.datetime "signature_updated_at"
  end

  add_index "contact_details", ["user_id"], name: "index_contact_details_on_user_id", using: :btree

  create_table "designations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "designations", ["name"], name: "index_designations_on_name", using: :btree

  create_table "information", force: :cascade do |t|
    t.string   "create_By",            limit: 255
    t.string   "sync_date",            limit: 255
    t.string   "sync_status",          limit: 255
    t.string   "google_status",        limit: 255
    t.string   "delivery_no",          limit: 255
    t.string   "delivery_status",      limit: 255
    t.string   "update_by_idil",       limit: 255
    t.string   "update_date_idil",     limit: 255
    t.string   "update_by_customer",   limit: 255
    t.string   "update_date_customer", limit: 255
    t.string   "qc_date",              limit: 255
    t.string   "qc_by",                limit: 255
    t.string   "qc_status",            limit: 255
    t.string   "qc_remarks",           limit: 255
    t.integer  "user_id",              limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "information", ["user_id"], name: "index_information_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "add_product",                limit: 255
    t.string   "product_name",               limit: 255
    t.string   "approx_price",               limit: 255
    t.string   "min_order_quantity",         limit: 255
    t.string   "unit_type",                  limit: 255
    t.string   "product_group",              limit: 255
    t.string   "product_desc",               limit: 255
    t.text     "top_5",                      limit: 65535
    t.string   "created_by",                 limit: 255
    t.string   "updated_by",                 limit: 255
    t.string   "deleted_by",                 limit: 255
    t.integer  "user_id",                    limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "product_image_file_name",    limit: 255
    t.string   "product_image_content_type", limit: 255
    t.integer  "product_image_file_size",    limit: 4
    t.datetime "product_image_updated_at"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "statutories", force: :cascade do |t|
    t.string   "reg_no",         limit: 255
    t.string   "reg_authority",  limit: 255
    t.string   "cin_no",         limit: 255
    t.string   "tan_no",         limit: 255
    t.string   "pan_no",         limit: 255
    t.string   "service_tax_no", limit: 255
    t.string   "excise_reg_no",  limit: 255
    t.string   "tin_no",         limit: 255
    t.string   "dgft",           limit: 255
    t.string   "cst_no",         limit: 255
    t.string   "ssi_no",         limit: 255
    t.string   "epf_no",         limit: 255
    t.string   "esi_no",         limit: 255
    t.string   "sct_no",         limit: 255
    t.string   "dnb_no",         limit: 255
    t.string   "rbi_no",         limit: 255
    t.string   "fssai",          limit: 255
    t.string   "nsic_no",        limit: 255
    t.string   "sst_no",         limit: 255
    t.string   "created_by",     limit: 255
    t.string   "updated_by",     limit: 255
    t.string   "deleted_by",     limit: 255
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "statutories", ["user_id"], name: "index_statutories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "admin",                              default: false
    t.boolean  "contact_person"
    t.boolean  "biz_tab"
    t.boolean  "information"
    t.boolean  "product"
    t.boolean  "statutory"
    t.boolean  "web_site_detail"
    t.boolean  "sub_admin"
    t.boolean  "client"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "website_details", force: :cascade do |t|
    t.string   "hp_key_desc",                        limit: 255
    t.string   "hp_detail_desc",                     limit: 255
    t.string   "au_profile_heading",                 limit: 255
    t.string   "au_profile_desc",                    limit: 255
    t.string   "awards_heading",                     limit: 255
    t.string   "awards_desc",                        limit: 255
    t.string   "qc_heading",                         limit: 255
    t.string   "qc_desc",                            limit: 255
    t.string   "infra_heading",                      limit: 255
    t.string   "infra_desc",                         limit: 255
    t.string   "testimonial_date",                   limit: 255
    t.string   "testimonial_desc",                   limit: 255
    t.string   "news_date",                          limit: 255
    t.text     "news_headline",                      limit: 65535
    t.text     "news_coverage_url",                  limit: 65535
    t.text     "news_desc",                          limit: 65535
    t.string   "job_title",                          limit: 255
    t.text     "job_desc",                           limit: 65535
    t.string   "cp_heading",                         limit: 255
    t.string   "cp_desc",                            limit: 255
    t.string   "products",                           limit: 255
    t.string   "team",                               limit: 255
    t.string   "cert_heading",                       limit: 255
    t.string   "cert_details",                       limit: 255
    t.string   "valid_from",                         limit: 255
    t.string   "valid_till",                         limit: 255
    t.string   "issued_on",                          limit: 255
    t.string   "issued_by",                          limit: 255
    t.string   "honour_award",                       limit: 255
    t.string   "patents",                            limit: 255
    t.string   "trademarks",                         limit: 255
    t.string   "created_by",                         limit: 255
    t.string   "updated_by",                         limit: 255
    t.string   "deleted_by",                         limit: 255
    t.integer  "user_id",                            limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "hp_image_file_name",                 limit: 255
    t.string   "hp_image_content_type",              limit: 255
    t.integer  "hp_image_file_size",                 limit: 4
    t.datetime "hp_image_updated_at"
    t.string   "award_image_file_name",              limit: 255
    t.string   "award_image_content_type",           limit: 255
    t.integer  "award_image_file_size",              limit: 4
    t.datetime "award_image_updated_at"
    t.string   "qc_image_file_name",                 limit: 255
    t.string   "qc_image_content_type",              limit: 255
    t.integer  "qc_image_file_size",                 limit: 4
    t.datetime "qc_image_updated_at"
    t.string   "infra_acilities_image_file_name",    limit: 255
    t.string   "infra_acilities_image_content_type", limit: 255
    t.integer  "infra_acilities_image_file_size",    limit: 4
    t.datetime "infra_acilities_image_updated_at"
    t.string   "testimonial_image_file_name",        limit: 255
    t.string   "testimonial_image_content_type",     limit: 255
    t.integer  "testimonial_image_file_size",        limit: 4
    t.datetime "testimonial_image_updated_at"
    t.string   "news_image_file_name",               limit: 255
    t.string   "news_image_content_type",            limit: 255
    t.integer  "news_image_file_size",               limit: 4
    t.datetime "news_image_updated_at"
    t.string   "custom_profile_image_file_name",     limit: 255
    t.string   "custom_profile_image_content_type",  limit: 255
    t.integer  "custom_profile_image_file_size",     limit: 4
    t.datetime "custom_profile_image_updated_at"
  end

  add_index "website_details", ["user_id"], name: "index_website_details_on_user_id", using: :btree

  add_foreign_key "biz_tabs", "users"
  add_foreign_key "contact_details", "users"
  add_foreign_key "information", "users"
  add_foreign_key "products", "users"
  add_foreign_key "statutories", "users"
  add_foreign_key "website_details", "users"
end
