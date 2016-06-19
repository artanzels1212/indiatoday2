require 'test_helper'

class FormDetailOnesControllerTest < ActionController::TestCase
  setup do
    @form_detail_one = form_detail_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_detail_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_detail_one" do
    assert_difference('FormDetailOne.count') do
      post :create, form_detail_one: { about_us: @form_detail_one.about_us, add_product: @form_detail_one.add_product, additional_businesses: @form_detail_one.additional_businesses, address1: @form_detail_one.address1, address2: @form_detail_one.address2, alternate_email: @form_detail_one.alternate_email, alternate_website: @form_detail_one.alternate_website, annual_sales: @form_detail_one.annual_sales, approx_price: @form_detail_one.approx_price, area: @form_detail_one.area, bankers_details: @form_detail_one.bankers_details, business_category: @form_detail_one.business_category, business_day: @form_detail_one.business_day, business_hours: @form_detail_one.business_hours, business_preferred_area: @form_detail_one.business_preferred_area, ceo_name: @form_detail_one.ceo_name, cin_no: @form_detail_one.cin_no, city: @form_detail_one.city, company_logo: @form_detail_one.company_logo, company_name: @form_detail_one.company_name, contact_person: @form_detail_one.contact_person, contact_person_no: @form_detail_one.contact_person_no, country: @form_detail_one.country, cst_no: @form_detail_one.cst_no, deals_in: @form_detail_one.deals_in, designation: @form_detail_one.designation, dgft: @form_detail_one.dgft, dnb_no: @form_detail_one.dnb_no, epf_no: @form_detail_one.epf_no, esi_no: @form_detail_one.esi_no, excise_reg_no: @form_detail_one.excise_reg_no, fssai: @form_detail_one.fssai, legal_owner: @form_detail_one.legal_owner, legal_owner_design: @form_detail_one.legal_owner_design, locality: @form_detail_one.locality, min_order_quantity: @form_detail_one.min_order_quantity, mobile1: @form_detail_one.mobile1, mobile2: @form_detail_one.mobile2, no_of_employees: @form_detail_one.no_of_employees, nsic_no: @form_detail_one.nsic_no, office_exterior_image: @form_detail_one.office_exterior_image, office_interior_image: @form_detail_one.office_interior_image, office_type: @form_detail_one.office_type, ownership_type: @form_detail_one.ownership_type, pan_no: @form_detail_one.pan_no, postal_code: @form_detail_one.postal_code, primary_business_type: @form_detail_one.primary_business_type, primary_email: @form_detail_one.primary_email, product_desc: @form_detail_one.product_desc, product_group: @form_detail_one.product_group, product_image: @form_detail_one.product_image, product_name: @form_detail_one.product_name, question: @form_detail_one.question, rbi_no: @form_detail_one.rbi_no, reg_authority: @form_detail_one.reg_authority, reg_no: @form_detail_one.reg_no, remarks: @form_detail_one.remarks, sct_no: @form_detail_one.sct_no, service_tax_no: @form_detail_one.service_tax_no, signature: @form_detail_one.signature, specialization: @form_detail_one.specialization, ssi_no: @form_detail_one.ssi_no, sst_no: @form_detail_one.sst_no, state: @form_detail_one.state, tan_no: @form_detail_one.tan_no, terms_condition: @form_detail_one.terms_condition, tin_no: @form_detail_one.tin_no, top_5: @form_detail_one.top_5, unit_type: @form_detail_one.unit_type, visiting_card_back_image: @form_detail_one.visiting_card_back_image, visiting_card_front_image: @form_detail_one.visiting_card_front_image, website: @form_detail_one.website, year_of_establishment: @form_detail_one.year_of_establishment }
    end

    assert_redirected_to form_detail_one_path(assigns(:form_detail_one))
  end

  test "should show form_detail_one" do
    get :show, id: @form_detail_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_detail_one
    assert_response :success
  end

  test "should update form_detail_one" do
    patch :update, id: @form_detail_one, form_detail_one: { about_us: @form_detail_one.about_us, add_product: @form_detail_one.add_product, additional_businesses: @form_detail_one.additional_businesses, address1: @form_detail_one.address1, address2: @form_detail_one.address2, alternate_email: @form_detail_one.alternate_email, alternate_website: @form_detail_one.alternate_website, annual_sales: @form_detail_one.annual_sales, approx_price: @form_detail_one.approx_price, area: @form_detail_one.area, bankers_details: @form_detail_one.bankers_details, business_category: @form_detail_one.business_category, business_day: @form_detail_one.business_day, business_hours: @form_detail_one.business_hours, business_preferred_area: @form_detail_one.business_preferred_area, ceo_name: @form_detail_one.ceo_name, cin_no: @form_detail_one.cin_no, city: @form_detail_one.city, company_logo: @form_detail_one.company_logo, company_name: @form_detail_one.company_name, contact_person: @form_detail_one.contact_person, contact_person_no: @form_detail_one.contact_person_no, country: @form_detail_one.country, cst_no: @form_detail_one.cst_no, deals_in: @form_detail_one.deals_in, designation: @form_detail_one.designation, dgft: @form_detail_one.dgft, dnb_no: @form_detail_one.dnb_no, epf_no: @form_detail_one.epf_no, esi_no: @form_detail_one.esi_no, excise_reg_no: @form_detail_one.excise_reg_no, fssai: @form_detail_one.fssai, legal_owner: @form_detail_one.legal_owner, legal_owner_design: @form_detail_one.legal_owner_design, locality: @form_detail_one.locality, min_order_quantity: @form_detail_one.min_order_quantity, mobile1: @form_detail_one.mobile1, mobile2: @form_detail_one.mobile2, no_of_employees: @form_detail_one.no_of_employees, nsic_no: @form_detail_one.nsic_no, office_exterior_image: @form_detail_one.office_exterior_image, office_interior_image: @form_detail_one.office_interior_image, office_type: @form_detail_one.office_type, ownership_type: @form_detail_one.ownership_type, pan_no: @form_detail_one.pan_no, postal_code: @form_detail_one.postal_code, primary_business_type: @form_detail_one.primary_business_type, primary_email: @form_detail_one.primary_email, product_desc: @form_detail_one.product_desc, product_group: @form_detail_one.product_group, product_image: @form_detail_one.product_image, product_name: @form_detail_one.product_name, question: @form_detail_one.question, rbi_no: @form_detail_one.rbi_no, reg_authority: @form_detail_one.reg_authority, reg_no: @form_detail_one.reg_no, remarks: @form_detail_one.remarks, sct_no: @form_detail_one.sct_no, service_tax_no: @form_detail_one.service_tax_no, signature: @form_detail_one.signature, specialization: @form_detail_one.specialization, ssi_no: @form_detail_one.ssi_no, sst_no: @form_detail_one.sst_no, state: @form_detail_one.state, tan_no: @form_detail_one.tan_no, terms_condition: @form_detail_one.terms_condition, tin_no: @form_detail_one.tin_no, top_5: @form_detail_one.top_5, unit_type: @form_detail_one.unit_type, visiting_card_back_image: @form_detail_one.visiting_card_back_image, visiting_card_front_image: @form_detail_one.visiting_card_front_image, website: @form_detail_one.website, year_of_establishment: @form_detail_one.year_of_establishment }
    assert_redirected_to form_detail_one_path(assigns(:form_detail_one))
  end

  test "should destroy form_detail_one" do
    assert_difference('FormDetailOne.count', -1) do
      delete :destroy, id: @form_detail_one
    end

    assert_redirected_to form_detail_ones_path
  end
end
