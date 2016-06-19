class StatutoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_statutory, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /statutories
  # GET /statutories.json
  def index
    @statutories = Statutory.all
  end

  # GET /statutories/1
  # GET /statutories/1.json
  def show
  end

  # GET /statutories/new
  def new
    @statutory = Statutory.new
  end

  # GET /statutories/1/edit
  def edit
  end

  # POST /statutories
  # POST /statutories.json
  def create
    @statutory = Statutory.new(statutory_params)

    respond_to do |format|
      if @statutory.save
        format.html { redirect_to @statutory, notice: 'Statutory was successfully created.' }
        format.json { render :show, status: :created, location: @statutory }
      else
        format.html { render :new }
        format.json { render json: @statutory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statutories/1
  # PATCH/PUT /statutories/1.json
  def update
    respond_to do |format|
      if @statutory.update(statutory_params)
        format.html { redirect_to @statutory, notice: 'Statutory was successfully updated.' }
        format.json { render :show, status: :ok, location: @statutory }
      else
        format.html { render :edit }
        format.json { render json: @statutory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statutories/1
  # DELETE /statutories/1.json
  def destroy
    @statutory.destroy
    respond_to do |format|
      format.html { redirect_to statutories_url, notice: 'Statutory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statutory
      @statutory = Statutory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statutory_params
      params.require(:statutory).permit(:reg_no, :reg_authority, :cin_no, :tan_no, :pan_no, :service_tax_no, :excise_reg_no, :tin_no, :dgft, :cst_no, :ssi_no, :epf_no, :esi_no, :sct_no, :dnb_no, :rbi_no, :fssai, :nsic_no, :sst_no, :created_by, :updated_by, :deleted_by, :user_id)
    end
end
