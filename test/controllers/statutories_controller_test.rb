require 'test_helper'

class StatutoriesControllerTest < ActionController::TestCase
  setup do
    @statutory = statutories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statutories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statutory" do
    assert_difference('Statutory.count') do
      post :create, statutory: { cin_no: @statutory.cin_no, created_by: @statutory.created_by, cst_no: @statutory.cst_no, deleted_by: @statutory.deleted_by, dgft: @statutory.dgft, dnb_no: @statutory.dnb_no, epf_no: @statutory.epf_no, esi_no: @statutory.esi_no, excise_reg_no: @statutory.excise_reg_no, fssai: @statutory.fssai, nsic_no: @statutory.nsic_no, pan_no: @statutory.pan_no, rbi_no: @statutory.rbi_no, reg_authority: @statutory.reg_authority, reg_no: @statutory.reg_no, sct_no: @statutory.sct_no, service_tax_no: @statutory.service_tax_no, ssi_no: @statutory.ssi_no, sst_no: @statutory.sst_no, tan_no: @statutory.tan_no, tin_no: @statutory.tin_no, updated_by: @statutory.updated_by, user_id: @statutory.user_id }
    end

    assert_redirected_to statutory_path(assigns(:statutory))
  end

  test "should show statutory" do
    get :show, id: @statutory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statutory
    assert_response :success
  end

  test "should update statutory" do
    patch :update, id: @statutory, statutory: { cin_no: @statutory.cin_no, created_by: @statutory.created_by, cst_no: @statutory.cst_no, deleted_by: @statutory.deleted_by, dgft: @statutory.dgft, dnb_no: @statutory.dnb_no, epf_no: @statutory.epf_no, esi_no: @statutory.esi_no, excise_reg_no: @statutory.excise_reg_no, fssai: @statutory.fssai, nsic_no: @statutory.nsic_no, pan_no: @statutory.pan_no, rbi_no: @statutory.rbi_no, reg_authority: @statutory.reg_authority, reg_no: @statutory.reg_no, sct_no: @statutory.sct_no, service_tax_no: @statutory.service_tax_no, ssi_no: @statutory.ssi_no, sst_no: @statutory.sst_no, tan_no: @statutory.tan_no, tin_no: @statutory.tin_no, updated_by: @statutory.updated_by, user_id: @statutory.user_id }
    assert_redirected_to statutory_path(assigns(:statutory))
  end

  test "should destroy statutory" do
    assert_difference('Statutory.count', -1) do
      delete :destroy, id: @statutory
    end

    assert_redirected_to statutories_path
  end
end
