class BizTabsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_biz_tab, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /biz_tabs
  # GET /biz_tabs.json
  def index
    @biz_tabs = BizTab.all
  end

  # GET /biz_tabs/1
  # GET /biz_tabs/1.json
  def show
  end

  # GET /biz_tabs/new
  def new
    @biz_tab = BizTab.new
  end

  # GET /biz_tabs/1/edit
  def edit
  end

  # POST /biz_tabs
  # POST /biz_tabs.json
  def create
    @biz_tab = BizTab.new(biz_tab_params)

    respond_to do |format|
      if @biz_tab.save
        format.html { redirect_to @biz_tab, notice: 'Biz tab was successfully created.' }
        format.json { render :show, status: :created, location: @biz_tab }
      else
        format.html { render :new }
        format.json { render json: @biz_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biz_tabs/1
  # PATCH/PUT /biz_tabs/1.json
  def update
    respond_to do |format|
      if @biz_tab.update(biz_tab_params)
        format.html { redirect_to @biz_tab, notice: 'Biz tab was successfully updated.' }
        format.json { render :show, status: :ok, location: @biz_tab }
      else
        format.html { render :edit }
        format.json { render json: @biz_tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biz_tabs/1
  # DELETE /biz_tabs/1.json
  def destroy
    @biz_tab.destroy
    respond_to do |format|
      format.html { redirect_to biz_tabs_url, notice: 'Biz tab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biz_tab
      @biz_tab = BizTab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biz_tab_params
      params.require(:biz_tab).permit(:primary_business_type, :website, :about_us, :year_of_establishment, :no_of_employees, :annual_sales, :ownership_type, :alternate_website, :additional_businesses, :office_type, :question, :bankers_details, :business_day, :business_hours, :specialization, :remarks, :deals_in, :business_preferred_area, :created_by, :updated_by, :deleted_by, :user_id, :company_logo, :office_interior_image, :office_exterior_image)
    end
end
