class WebsiteDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_website_detail, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /website_details
  # GET /website_details.json
  def index
    #@website_details = WebsiteDetail.all

    @website_details = WebsiteDetail.search(params[:dateF], params[:agentF])
    
  end

  # GET /website_details/1
  # GET /website_details/1.json
  def show
  end

  # GET /website_details/new
  def new
    @website_detail = WebsiteDetail.new
  end

  # GET /website_details/1/edit
  def edit
  end

  # POST /website_details
  # POST /website_details.json
  def create
    @website_detail = WebsiteDetail.new(website_detail_params)

    respond_to do |format|
      if @website_detail.save
        format.html { redirect_to @website_detail, notice: 'Website detail was successfully created.' }
        format.json { render :show, status: :created, location: @website_detail }
      else
        format.html { render :new }
        format.json { render json: @website_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /website_details/1
  # PATCH/PUT /website_details/1.json
  def update
    respond_to do |format|
      if @website_detail.update(website_detail_params)
        format.html { redirect_to @website_detail, notice: 'Website detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @website_detail }
      else
        format.html { render :edit }
        format.json { render json: @website_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /website_details/1
  # DELETE /website_details/1.json
  def destroy
    @website_detail.destroy
    respond_to do |format|
      format.html { redirect_to website_details_url, notice: 'Website detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website_detail
      @website_detail = WebsiteDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_detail_params
      params.require(:website_detail).permit(:hp_key_desc, :hp_detail_desc, :au_profile_heading, :au_profile_desc, :awards_heading, :awards_desc, :qc_heading, :qc_desc, :infra_heading, :infra_desc, :testimonial_date, :testimonial_desc, :news_date, :news_headline, :news_coverage_url, :news_desc, :job_title, :job_desc, :cp_heading, :cp_desc, :products, :team, :cert_heading, :cert_details, :valid_from, :valid_till, :issued_on, :issued_by, :honour_award, :patents, :trademarks, :created_by, :updated_by, :deleted_by, :user_id, :hp_image, :award_image, :qc_image, :infra_acilities_image, :testimonial_image, :news_image, :custom_profile_image)
    end
end
