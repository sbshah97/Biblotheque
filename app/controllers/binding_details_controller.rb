class BindingDetailsController < ApplicationController
  before_action :set_binding_detail, only: [:show, :edit, :update, :destroy]

  # GET /binding_details
  # GET /binding_details.json
  def index
    @binding_details = BindingDetail.all
  end

  # GET /binding_details/1
  # GET /binding_details/1.json
  def show
  end

  # GET /binding_details/new
  def new
    @binding_detail = BindingDetail.new
  end

  # GET /binding_details/1/edit
  def edit
  end

  # POST /binding_details
  # POST /binding_details.json
  def create
    @binding_detail = BindingDetail.new(binding_detail_params)

    respond_to do |format|
      if @binding_detail.save
        format.html { redirect_to @binding_detail, notice: 'Binding detail was successfully created.' }
        format.json { render :show, status: :created, location: @binding_detail }
      else
        format.html { render :new }
        format.json { render json: @binding_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /binding_details/1
  # PATCH/PUT /binding_details/1.json
  def update
    respond_to do |format|
      if @binding_detail.update(binding_detail_params)
        format.html { redirect_to @binding_detail, notice: 'Binding detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @binding_detail }
      else
        format.html { render :edit }
        format.json { render json: @binding_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binding_details/1
  # DELETE /binding_details/1.json
  def destroy
    @binding_detail.destroy
    respond_to do |format|
      format.html { redirect_to binding_details_url, notice: 'Binding detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_binding_detail
      @binding_detail = BindingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def binding_detail_params
      params.require(:binding_detail).permit(:name)
    end
end
