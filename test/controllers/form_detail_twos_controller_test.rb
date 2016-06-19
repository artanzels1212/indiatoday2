require 'test_helper'

class FormDetailTwosControllerTest < ActionController::TestCase
  setup do
    @form_detail_two = form_detail_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_detail_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_detail_two" do
    assert_difference('FormDetailTwo.count') do
      post :create, form_detail_two: { au_profile_desc: @form_detail_two.au_profile_desc, au_profile_heading: @form_detail_two.au_profile_heading, award_image: @form_detail_two.award_image, awards_desc: @form_detail_two.awards_desc, awards_heading: @form_detail_two.awards_heading, cert_details: @form_detail_two.cert_details, cert_heading: @form_detail_two.cert_heading, cp_desc: @form_detail_two.cp_desc, cp_heading: @form_detail_two.cp_heading, create_By: @form_detail_two.create_By, custom_profile_image: @form_detail_two.custom_profile_image, delivery_no: @form_detail_two.delivery_no, delivery_status: @form_detail_two.delivery_status, google_status: @form_detail_two.google_status, honour_award: @form_detail_two.honour_award, hp_detail_desc: @form_detail_two.hp_detail_desc, hp_image: @form_detail_two.hp_image, hp_key_desc: @form_detail_two.hp_key_desc, infra_acilities_image: @form_detail_two.infra_acilities_image, infra_desc: @form_detail_two.infra_desc, infra_heading: @form_detail_two.infra_heading, issued_by: @form_detail_two.issued_by, issued_on: @form_detail_two.issued_on, job_desc: @form_detail_two.job_desc, job_title: @form_detail_two.job_title, news_coverage_url: @form_detail_two.news_coverage_url, news_date: @form_detail_two.news_date, news_desc: @form_detail_two.news_desc, news_headline: @form_detail_two.news_headline, news_image: @form_detail_two.news_image, patents: @form_detail_two.patents, products: @form_detail_two.products, qc_by: @form_detail_two.qc_by, qc_date: @form_detail_two.qc_date, qc_desc: @form_detail_two.qc_desc, qc_heading: @form_detail_two.qc_heading, qc_image: @form_detail_two.qc_image, qc_remarks: @form_detail_two.qc_remarks, qc_status: @form_detail_two.qc_status, sync_date: @form_detail_two.sync_date, sync_status: @form_detail_two.sync_status, team: @form_detail_two.team, testimonial_date: @form_detail_two.testimonial_date, testimonial_desc: @form_detail_two.testimonial_desc, testimonial_image: @form_detail_two.testimonial_image, trademarks: @form_detail_two.trademarks, update_by_customer: @form_detail_two.update_by_customer, update_by_idil: @form_detail_two.update_by_idil, update_date_customer: @form_detail_two.update_date_customer, update_date_idil: @form_detail_two.update_date_idil, valid_from: @form_detail_two.valid_from, valid_till: @form_detail_two.valid_till }
    end

    assert_redirected_to form_detail_two_path(assigns(:form_detail_two))
  end

  test "should show form_detail_two" do
    get :show, id: @form_detail_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_detail_two
    assert_response :success
  end

  test "should update form_detail_two" do
    patch :update, id: @form_detail_two, form_detail_two: { au_profile_desc: @form_detail_two.au_profile_desc, au_profile_heading: @form_detail_two.au_profile_heading, award_image: @form_detail_two.award_image, awards_desc: @form_detail_two.awards_desc, awards_heading: @form_detail_two.awards_heading, cert_details: @form_detail_two.cert_details, cert_heading: @form_detail_two.cert_heading, cp_desc: @form_detail_two.cp_desc, cp_heading: @form_detail_two.cp_heading, create_By: @form_detail_two.create_By, custom_profile_image: @form_detail_two.custom_profile_image, delivery_no: @form_detail_two.delivery_no, delivery_status: @form_detail_two.delivery_status, google_status: @form_detail_two.google_status, honour_award: @form_detail_two.honour_award, hp_detail_desc: @form_detail_two.hp_detail_desc, hp_image: @form_detail_two.hp_image, hp_key_desc: @form_detail_two.hp_key_desc, infra_acilities_image: @form_detail_two.infra_acilities_image, infra_desc: @form_detail_two.infra_desc, infra_heading: @form_detail_two.infra_heading, issued_by: @form_detail_two.issued_by, issued_on: @form_detail_two.issued_on, job_desc: @form_detail_two.job_desc, job_title: @form_detail_two.job_title, news_coverage_url: @form_detail_two.news_coverage_url, news_date: @form_detail_two.news_date, news_desc: @form_detail_two.news_desc, news_headline: @form_detail_two.news_headline, news_image: @form_detail_two.news_image, patents: @form_detail_two.patents, products: @form_detail_two.products, qc_by: @form_detail_two.qc_by, qc_date: @form_detail_two.qc_date, qc_desc: @form_detail_two.qc_desc, qc_heading: @form_detail_two.qc_heading, qc_image: @form_detail_two.qc_image, qc_remarks: @form_detail_two.qc_remarks, qc_status: @form_detail_two.qc_status, sync_date: @form_detail_two.sync_date, sync_status: @form_detail_two.sync_status, team: @form_detail_two.team, testimonial_date: @form_detail_two.testimonial_date, testimonial_desc: @form_detail_two.testimonial_desc, testimonial_image: @form_detail_two.testimonial_image, trademarks: @form_detail_two.trademarks, update_by_customer: @form_detail_two.update_by_customer, update_by_idil: @form_detail_two.update_by_idil, update_date_customer: @form_detail_two.update_date_customer, update_date_idil: @form_detail_two.update_date_idil, valid_from: @form_detail_two.valid_from, valid_till: @form_detail_two.valid_till }
    assert_redirected_to form_detail_two_path(assigns(:form_detail_two))
  end

  test "should destroy form_detail_two" do
    assert_difference('FormDetailTwo.count', -1) do
      delete :destroy, id: @form_detail_two
    end

    assert_redirected_to form_detail_twos_path
  end
end
