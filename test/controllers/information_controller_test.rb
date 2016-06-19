require 'test_helper'

class InformationControllerTest < ActionController::TestCase
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post :create, information: { create_By: @information.create_By, delivery_no: @information.delivery_no, delivery_status: @information.delivery_status, google_status: @information.google_status, qc_by: @information.qc_by, qc_date: @information.qc_date, qc_remarks: @information.qc_remarks, qc_status: @information.qc_status, sync_date: @information.sync_date, sync_status: @information.sync_status, update_by_customer: @information.update_by_customer, update_by_idil: @information.update_by_idil, update_date_customer: @information.update_date_customer, update_date_idil: @information.update_date_idil, user_id: @information.user_id }
    end

    assert_redirected_to information_path(assigns(:information))
  end

  test "should show information" do
    get :show, id: @information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @information
    assert_response :success
  end

  test "should update information" do
    patch :update, id: @information, information: { create_By: @information.create_By, delivery_no: @information.delivery_no, delivery_status: @information.delivery_status, google_status: @information.google_status, qc_by: @information.qc_by, qc_date: @information.qc_date, qc_remarks: @information.qc_remarks, qc_status: @information.qc_status, sync_date: @information.sync_date, sync_status: @information.sync_status, update_by_customer: @information.update_by_customer, update_by_idil: @information.update_by_idil, update_date_customer: @information.update_date_customer, update_date_idil: @information.update_date_idil, user_id: @information.user_id }
    assert_redirected_to information_path(assigns(:information))
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete :destroy, id: @information
    end

    assert_redirected_to information_index_path
  end
end
