require 'test_helper'

class ContactDetailsControllerTest < ActionController::TestCase
  setup do
    @contact_detail = contact_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_detail" do
    assert_difference('ContactDetail.count') do
      post :create, contact_detail: { address1: @contact_detail.address1, address2: @contact_detail.address2, alternate_email: @contact_detail.alternate_email, area: @contact_detail.area, business_category: @contact_detail.business_category, ceo_name: @contact_detail.ceo_name, city: @contact_detail.city, company_name: @contact_detail.company_name, contact_person: @contact_detail.contact_person, contact_person_no: @contact_detail.contact_person_no, country: @contact_detail.country, created_by: @contact_detail.created_by, deleted_by: @contact_detail.deleted_by, designation: @contact_detail.designation, legal_owner: @contact_detail.legal_owner, legal_owner_design: @contact_detail.legal_owner_design, locality: @contact_detail.locality, mobile1: @contact_detail.mobile1, mobile2: @contact_detail.mobile2, postal_code: @contact_detail.postal_code, primary_email: @contact_detail.primary_email, state: @contact_detail.state, terms_condition: @contact_detail.terms_condition, updated_by: @contact_detail.updated_by, user_id: @contact_detail.user_id }
    end

    assert_redirected_to contact_detail_path(assigns(:contact_detail))
  end

  test "should show contact_detail" do
    get :show, id: @contact_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_detail
    assert_response :success
  end

  test "should update contact_detail" do
    patch :update, id: @contact_detail, contact_detail: { address1: @contact_detail.address1, address2: @contact_detail.address2, alternate_email: @contact_detail.alternate_email, area: @contact_detail.area, business_category: @contact_detail.business_category, ceo_name: @contact_detail.ceo_name, city: @contact_detail.city, company_name: @contact_detail.company_name, contact_person: @contact_detail.contact_person, contact_person_no: @contact_detail.contact_person_no, country: @contact_detail.country, created_by: @contact_detail.created_by, deleted_by: @contact_detail.deleted_by, designation: @contact_detail.designation, legal_owner: @contact_detail.legal_owner, legal_owner_design: @contact_detail.legal_owner_design, locality: @contact_detail.locality, mobile1: @contact_detail.mobile1, mobile2: @contact_detail.mobile2, postal_code: @contact_detail.postal_code, primary_email: @contact_detail.primary_email, state: @contact_detail.state, terms_condition: @contact_detail.terms_condition, updated_by: @contact_detail.updated_by, user_id: @contact_detail.user_id }
    assert_redirected_to contact_detail_path(assigns(:contact_detail))
  end

  test "should destroy contact_detail" do
    assert_difference('ContactDetail.count', -1) do
      delete :destroy, id: @contact_detail
    end

    assert_redirected_to contact_details_path
  end
end
