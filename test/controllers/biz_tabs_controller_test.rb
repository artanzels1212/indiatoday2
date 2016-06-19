require 'test_helper'

class BizTabsControllerTest < ActionController::TestCase
  setup do
    @biz_tab = biz_tabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biz_tabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biz_tab" do
    assert_difference('BizTab.count') do
      post :create, biz_tab: { about_us: @biz_tab.about_us, additional_businesses: @biz_tab.additional_businesses, alternate_website: @biz_tab.alternate_website, annual_sales: @biz_tab.annual_sales, bankers_details: @biz_tab.bankers_details, business_day: @biz_tab.business_day, business_hours: @biz_tab.business_hours, business_preferred_area: @biz_tab.business_preferred_area, created_by: @biz_tab.created_by, deals_in: @biz_tab.deals_in, deleted_by: @biz_tab.deleted_by, no_of_employees: @biz_tab.no_of_employees, office_type: @biz_tab.office_type, ownership_type: @biz_tab.ownership_type, primary_business_type: @biz_tab.primary_business_type, question: @biz_tab.question, remarks: @biz_tab.remarks, specialization: @biz_tab.specialization, updated_by: @biz_tab.updated_by, user_id: @biz_tab.user_id, website: @biz_tab.website, year_of_establishment: @biz_tab.year_of_establishment }
    end

    assert_redirected_to biz_tab_path(assigns(:biz_tab))
  end

  test "should show biz_tab" do
    get :show, id: @biz_tab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biz_tab
    assert_response :success
  end

  test "should update biz_tab" do
    patch :update, id: @biz_tab, biz_tab: { about_us: @biz_tab.about_us, additional_businesses: @biz_tab.additional_businesses, alternate_website: @biz_tab.alternate_website, annual_sales: @biz_tab.annual_sales, bankers_details: @biz_tab.bankers_details, business_day: @biz_tab.business_day, business_hours: @biz_tab.business_hours, business_preferred_area: @biz_tab.business_preferred_area, created_by: @biz_tab.created_by, deals_in: @biz_tab.deals_in, deleted_by: @biz_tab.deleted_by, no_of_employees: @biz_tab.no_of_employees, office_type: @biz_tab.office_type, ownership_type: @biz_tab.ownership_type, primary_business_type: @biz_tab.primary_business_type, question: @biz_tab.question, remarks: @biz_tab.remarks, specialization: @biz_tab.specialization, updated_by: @biz_tab.updated_by, user_id: @biz_tab.user_id, website: @biz_tab.website, year_of_establishment: @biz_tab.year_of_establishment }
    assert_redirected_to biz_tab_path(assigns(:biz_tab))
  end

  test "should destroy biz_tab" do
    assert_difference('BizTab.count', -1) do
      delete :destroy, id: @biz_tab
    end

    assert_redirected_to biz_tabs_path
  end
end
