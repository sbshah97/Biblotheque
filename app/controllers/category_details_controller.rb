class CategoryDetailsController < ApplicationController
  before_action :set_category_detail, only: [:show, :edit, :update, :destroy]

  # GET /category_details
  # GET /category_details.json
  def index
    @category_details = CategoryDetail.all
  end

  # GET /category_details/1
  # GET /category_details/1.json
  def show
  end

  # GET /category_details/new
  def new
    @category_detail = CategoryDetail.new
  end

  # GET /category_details/1/edit
  def edit
  end

  # POST /category_details
  # POST /category_details.json
  def create
    @category_detail = CategoryDetail.new(category_detail_params)

    respond_to do |format|
      if @category_detail.save
        format.html { redirect_to @category_detail, notice: 'Category detail was successfully created.' }
        format.json { render :show, status: :created, location: @category_detail }
      else
        format.html { render :new }
        format.json { render json: @category_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_details/1
  # PATCH/PUT /category_details/1.json
  def update
    respond_to do |format|
      if @category_detail.update(category_detail_params)
        format.html { redirect_to @category_detail, notice: 'Category detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_detail }
      else
        format.html { render :edit }
        format.json { render json: @category_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_details/1
  # DELETE /category_details/1.json
  def destroy
    @category_detail.destroy
    respond_to do |format|
      format.html { redirect_to category_details_url, notice: 'Category detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_detail
      @category_detail = CategoryDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_detail_params
      params.require(:category_detail).permit(:name)
    end
end
