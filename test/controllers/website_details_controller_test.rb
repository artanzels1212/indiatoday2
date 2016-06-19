require 'test_helper'

class WebsiteDetailsControllerTest < ActionController::TestCase
  setup do
    @website_detail = website_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:website_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create website_detail" do
    assert_difference('WebsiteDetail.count') do
      post :create, website_detail: { au_profile_desc: @website_detail.au_profile_desc, au_profile_heading: @website_detail.au_profile_heading, awards_desc: @website_detail.awards_desc, awards_heading: @website_detail.awards_heading, cert_details: @website_detail.cert_details, cert_heading: @website_detail.cert_heading, cp_desc: @website_detail.cp_desc, cp_heading: @website_detail.cp_heading, created_by: @website_detail.created_by, deleted_by: @website_detail.deleted_by, honour_award: @website_detail.honour_award, hp_detail_desc: @website_detail.hp_detail_desc, hp_key_desc: @website_detail.hp_key_desc, infra_desc: @website_detail.infra_desc, infra_heading: @website_detail.infra_heading, issued_by: @website_detail.issued_by, issued_on: @website_detail.issued_on, job_desc: @website_detail.job_desc, job_title: @website_detail.job_title, news_coverage_url: @website_detail.news_coverage_url, news_date: @website_detail.news_date, news_desc: @website_detail.news_desc, news_headline: @website_detail.news_headline, patents: @website_detail.patents, products: @website_detail.products, qc_desc: @website_detail.qc_desc, qc_heading: @website_detail.qc_heading, team: @website_detail.team, testimonial_date: @website_detail.testimonial_date, testimonial_desc: @website_detail.testimonial_desc, trademarks: @website_detail.trademarks, updated_by: @website_detail.updated_by, user_id: @website_detail.user_id, valid_from: @website_detail.valid_from, valid_till: @website_detail.valid_till }
    end

    assert_redirected_to website_detail_path(assigns(:website_detail))
  end

  test "should show website_detail" do
    get :show, id: @website_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @website_detail
    assert_response :success
  end

  test "should update website_detail" do
    patch :update, id: @website_detail, website_detail: { au_profile_desc: @website_detail.au_profile_desc, au_profile_heading: @website_detail.au_profile_heading, awards_desc: @website_detail.awards_desc, awards_heading: @website_detail.awards_heading, cert_details: @website_detail.cert_details, cert_heading: @website_detail.cert_heading, cp_desc: @website_detail.cp_desc, cp_heading: @website_detail.cp_heading, created_by: @website_detail.created_by, deleted_by: @website_detail.deleted_by, honour_award: @website_detail.honour_award, hp_detail_desc: @website_detail.hp_detail_desc, hp_key_desc: @website_detail.hp_key_desc, infra_desc: @website_detail.infra_desc, infra_heading: @website_detail.infra_heading, issued_by: @website_detail.issued_by, issued_on: @website_detail.issued_on, job_desc: @website_detail.job_desc, job_title: @website_detail.job_title, news_coverage_url: @website_detail.news_coverage_url, news_date: @website_detail.news_date, news_desc: @website_detail.news_desc, news_headline: @website_detail.news_headline, patents: @website_detail.patents, products: @website_detail.products, qc_desc: @website_detail.qc_desc, qc_heading: @website_detail.qc_heading, team: @website_detail.team, testimonial_date: @website_detail.testimonial_date, testimonial_desc: @website_detail.testimonial_desc, trademarks: @website_detail.trademarks, updated_by: @website_detail.updated_by, user_id: @website_detail.user_id, valid_from: @website_detail.valid_from, valid_till: @website_detail.valid_till }
    assert_redirected_to website_detail_path(assigns(:website_detail))
  end

  test "should destroy website_detail" do
    assert_difference('WebsiteDetail.count', -1) do
      delete :destroy, id: @website_detail
    end

    assert_redirected_to website_details_path
  end
end
