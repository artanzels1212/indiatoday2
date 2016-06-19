class AppUsersController < ApplicationController
  before_action :authenticate_user!, :except => [:app_user_signin,:submit_form_details]
  skip_before_filter :verify_authenticity_token
  before_action :set_app_user, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /app_users
  # GET /app_users.json
  def index
    @app_users = AppUser.all
  end
  
  def index_root
    
  end
  
  def create_users_roles
  @current_user = current_user
    
  end
  
  def generate_otp
    
  end
  # GET /app_users/1
  # GET /app_users/1.json
  def show
  end

  # GET /app_users/new
  def new
    @app_user = AppUser.new
  end

  # GET /app_users/1/edit
  def edit
  end

  # POST /app_users
  # POST /app_users.json
  def create
    @app_user = AppUser.new(app_user_params)
    all = AppUser.all.map{|m|m.user_name}
    if all.include?params["app_user"]["user_name"]
     redirect_to :back,:alert => "User Already Exists Can't Create Duplicate User" 
    else
    respond_to do |format|
      if @app_user.save
        format.html { redirect_to @app_user, notice: 'App user was successfully created.' }
        format.json { render :show, status: :created, location: @app_user }
      else
        format.html { render :new }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end  
      end
    end
  end

  # PATCH/PUT /app_users/1
  # PATCH/PUT /app_users/1.json
  def update
    respond_to do |format|
      if @app_user.update(app_user_params)
        format.html { redirect_to @app_user, notice: 'App user was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_user }
      else
        format.html { render :edit }
        format.json { render json: @app_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_users/1
  # DELETE /app_users/1.json
  def destroy
    @app_user.destroy
    respond_to do |format|
      format.html { redirect_to app_users_url, notice: 'App user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def app_user_signup
    render :json => {:success=>false,:message => "Please provide User Name"} and return if  params[:app_user]["user_name"].blank?
    render :json => {:success=>false,:message => "Please provide Email"} and return if  params[:app_user]["email"].blank?
    render :json => {:success=>false,:message => "Please provide Mobile No"} and return if  params[:app_user]["mobile_no"].blank?
    user_name_arr = AppUser.all.map{|name|name.user_name}
    email_arr = AppUser.all.map{|e|e.email}
    mobile_no_arr = AppUser.all.map{|m|m.mobile_no} 
    if(mobile_no_arr.include?params[:app_user]["mobile_no"])
    render :json => {:success => false,:message => "Mobile No Exists"}
    else  
    AppUser.create(:user_name=>params[:app_user]["user_name"],:email=>params[:app_user]["email"],:mobile_no=>params[:app_user]["mobile_no"])
    render :json => {:success=>true,:message=>"Data saved successfully"} 
    end
  end
  
  def app_user_signin
   user_name_arr = AppUser.all.map{|u|u.user_name}
   password_arr = AppUser.all.map{|p|p.password}
   if((user_name_arr.include?params["user_name"]) && (password_arr.include?params["password"]))
     render :json => {:success=>true,:message=>"Welcome to App"}
   else
     render :json => {:success=>false,:message=>"Invalid Mobile No/User Name"}
  end
  end
  
  def submit_form_details
  render :json => {:success=>false,:message => "Please provide contact person"} and return if params[:contact_person].blank? 
  render :json => {:success=>false,:message => "Please provide designation"} and return if params[:designation].blank?  
  render :json => {:success=>false,:message => "Please provide company_name"} and return if params[:company_name].blank? 
  render :json => {:success=>false,:message => "Please provide city"} and return if params[:city].blank?
  render :json => {:success=>false,:message => "Please provide state"} and return if params[:state].blank? 
  render :json => {:success=>false,:message => "Please provide locality"} and return if params[:locality].blank?  
  render :json => {:success=>false,:message => "Please provide postal code"} and return if params[:postal_code].blank?
  render :json => {:success=>false,:message => "Please provide address1"} and return if params[:address1].blank?
  render :json => {:success=>false,:message => "Please provide address2"} and return if params[:address2].blank?
  render :json => {:success=>false,:message => "Please provide area/landmark"} and return if params[:area].blank?
  render :json => {:success=>false,:message => "Please provide primary mpbile1"} and return if params[:mobile1].blank?
  render :json => {:success=>false,:message => "Please provide terms and conditions"} and return if params[:terms_condition].blank?
   render :json => {:success=>false,:message => "Please provide terms and signature"} and return if params[:signature].blank?
  obj1 = ContactDetail.new
  obj1.contact_person = params[:contact_person]
  obj1.designation = params[:designation]
  obj1.ceo_name = params[:ceo_name]
  obj1.company_name = params[:company_name]
  obj1.country = params[:country]
  obj1.city = params[:city]
  obj1.state = params[:state]
  obj1.locality = params[:locality]
  obj1.postal_code = params[:postal_code]
  obj1.address1 = params[:address1]
  obj1.address2 = params[:address2]
  obj1.area = params[:area]
  obj1.contact_person_no = params[:contact_person_no]
  obj1.mobile1 = params[:mobile1]
  obj1.mobile2 = params[:mobile2]
  obj1.primary_email = params[:primary_email]
  obj1.alternate_email = params[:alternate_email]
  obj1.legal_owner = params[:legal_owner]
  obj1.visiting_card_front_image = params[:visiting_card_front_image]
  obj1.visiting_card_back_image = params[:visiting_card_back_image]
  obj1.business_category = params[:business_category]
  obj1.terms_condition = params[:terms_condition]
  obj1.signature = params[:signature]
  obj1.save
  render :json => {:success=>false,:message => "Please provide primary business type"} and return if params[:primary_business_type].blank?
  render :json => {:success=>false,:message => "Please provide year of establishment"} and return if params[:year_of_establishment].blank?
  render :json => {:success=>false,:message => "Please provide no of employees"} and return if params[:no_of_employees].blank?
  render :json => {:success=>false,:message => "Please provide annual sales"} and return if params[:annual_sales].blank?
  render :json => {:success=>false,:message => "Please provide ownership type"} and return if params[:ownership_type].blank?
  render :json => {:success=>false,:message => "Please provide additional businesses"} and return if params[:additional_businesses].blank?
  render :json => {:success=>false,:message => "Please provide business day"} and return if params[:business_day].blank?
  render :json => {:success=>false,:message => "Please provide business hours"} and return if params[:business_hours].blank?
  obj2 = BizTab.new
  obj2.primary_business_type = params[:primary_business_type]
  obj2.company_logo = params[:company_logo]
  obj2.website = params[:website]
  obj2.about_us = params[:about_us]
  obj2.year_of_establishment = params[:year_of_establishment]
  obj2.no_of_employees = params[:no_of_employees]
  obj2.annual_sales = params[:annual_sales]
  obj2.ownership_type = params[:ownership_type]
  obj2.alternate_website = params[:alternate_website]
  obj2.additional_businesses = params[:additional_businesses]
  obj2.office_type = params[:office_type]
  obj2.question = params[:question]
  obj2.office_interior_image = params[:office_interior_image]
  obj2.office_exterior_image = params[:office_exterior_image]
  obj2.bankers_details = params[:bankers_details]
  obj2.business_day = params[:business_day]
  obj2.business_hours = params[:business_hours]
  obj2.specialization = params[:specialization]
  obj2.remarks = params[:remarks]
  obj2.deals_in = params[:deals_in]
  obj2.business_preferred_area = params[:business_preferred_area]
  obj2.save
  unless params[:reg_no].nil? && params[:reg_authority].nil? &&  params[:cin_no].nil? && params[:tan_no].nil? && params[:pan_no].nil? && params[:service_tax_no].nil? && params[:excise_reg_no].nil? && params[:nsic_no].nil?
  obj3 = Statutory.new
  obj3.reg_no = params[:reg_no]
  obj3.reg_authority = params[:reg_authority]
  obj3.cin_no = params[:cin_no]
  obj3.tan_no = params[:tan_no]
  obj3.pan_no = params[:pan_no]
  obj3.service_tax_no = params[:service_tax_no]
  obj3.excise_reg_no = params[:excise_reg_no]
  obj3.tin_no = params[:tin_no]
  obj3.dgft = params[:dgft]
  obj3.cst_no = params[:cst_no]
  obj3.ssi_no = params[:ssi_no]
  obj3.epf_no = params[:epf_no]
  obj3.esi_no = params[:esi_no]
  obj3.sct_no = params[:sct_no]
  obj3.dnb_no = params[:dnb_no]
  obj3.rbi_no = params[:rbi_no]
  obj3.fssai = params[:fssai]
  obj3.nsic_no = params[:nsic_no]
  obj3.sst_no = params[:sst_no]
  obj3.save
  end
  render :json => {:success=>false,:message => "Please provide top 5 products"} and return if params[:top_5].blank?
  unless params[:add_product].nil? && params[:min_order_quantity].nil? && params[:top_5].nil? 
  obj4 = Product.new
  obj4.add_product = params[:add_product]
  obj4.product_name = params[:product_name]
  obj4.approx_price = params[:approx_price]
  obj4.min_order_quantity = params[:min_order_quantity]
  obj4.unit_type = params[:unit_type]
  obj4.product_group = params[:product_group]
  obj4.product_desc = params[:product_desc]
  obj4.product_image = params[:product_image]
  obj4.top_5 = params[:top_5]
  obj4.save
  end
  unless params[:hp_key_desc].nil? && params[:au_profile_heading].nil? &&  params[:infra_acilities_image].nil? && params[:testimonial_image].nil? &&  params[:trademarks].nil?
  obj5 = WebsiteDetail.new
  obj5.hp_key_desc = params[:hp_key_desc]
  obj5.hp_image = params[:hp_image]
  obj5.hp_detail_desc = params[:hp_detail_desc]
  obj5.au_profile_heading = params[:au_profile_heading]
  obj5.au_profile_desc = params[:au_profile_desc]
  obj5.awards_heading = params[:awards_heading]
  obj5.award_image = params[:award_image]
  obj5.awards_desc = params[:awards_desc]
  obj5.qc_heading = params[:qc_heading]
  obj5.qc_image = params[:qc_image]
  obj5.qc_desc = params[:qc_desc]
  obj5.infra_heading = params[:infra_heading]
  obj5.infra_acilities_image = params[:infra_acilities_image]
  obj5.infra_desc = params[:infra_desc]
  obj5.testimonial_date = params[:testimonial_date]
  obj5.testimonial_image = params[:testimonial_image]
  obj5.testimonial_desc = params[:testimonial_desc]
  obj5.news_date = params[:news_date]
  obj5.news_headline = params[:news_headline]
  obj5.news_image = params[:news_image]
  obj5.news_coverage_url = params[:news_coverage_url]
  obj5.news_desc = params[:news_desc]
  obj5.job_title = params[:job_title]
  obj5.job_desc = params[:job_desc]
  obj5.custom_profile_image = params[:custom_profile_image]
  obj5.cp_heading = params[:cp_heading]
  obj5.cp_desc = params[:cp_desc]
  obj5.products = params[:products]
  obj5.team = params[:team]
  obj5.cert_heading = params[:cert_heading]
  obj5.cert_details = params[:cert_details]
  obj5.valid_from = params[:valid_from]
  obj5.valid_till = params[:valid_till]
  obj5.issued_on = params[:issued_on]
  obj5.issued_by = params[:issued_by]
  obj5.honour_award = params[:honour_award]
  obj5.patents = params[:patents]
  obj5.trademarks = params[:trademarks]
  obj5.save
  end
  obj6 = Information.new
  obj6.create_By = params[:app_user_id]
  obj6.sync_date = params[:sync_date]
  obj6.sync_status = params[:sync_status]
  obj6.google_status = params[:google_status]
  obj6.delivery_no = params[:delivery_no]
  obj6.delivery_status = params[:delivery_status]
  obj6.update_by_idil = params[:update_by_idil]
  obj6.update_date_idil = params[:update_date_idil]
  obj6.update_by_customer = params[:update_by_customer]
  obj6.update_date_customer = params[:update_date_customer]
  obj6.qc_date = params[:qc_date]
  obj6.qc_by = params[:qc_by]
  obj6.qc_status = params[:qc_status]
  obj6.qc_remarks = params[:qc_remarks]
    if obj6.save
      render :json =>{:success=>true,:message=>"submitted successfully"}
    else  
      render :json => {:success=>false,:message => "Unable to submit, please check the form"} and return
    end  
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_user
      @app_user = AppUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_user_params
      params.require(:app_user).permit(:user_name, :email, :mobile_no, :password, :city, :user_id)
    end
end
