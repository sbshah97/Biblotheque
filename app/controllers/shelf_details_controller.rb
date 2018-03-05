class ShelfDetailsController < ApplicationController
  before_action :set_shelf_detail, only: [:show, :edit, :update, :destroy]

  # GET /shelf_details
  # GET /shelf_details.json
  def index
    @shelf_details = ShelfDetail.all
  end

  # GET /shelf_details/1
  # GET /shelf_details/1.json
  def show
  end

  # GET /shelf_details/new
  def new
    @shelf_detail = ShelfDetail.new
  end

  # GET /shelf_details/1/edit
  def edit
  end

  # POST /shelf_details
  # POST /shelf_details.json
  def create
    @shelf_detail = ShelfDetail.new(shelf_detail_params)

    respond_to do |format|
      if @shelf_detail.save
        format.html { redirect_to @shelf_detail, notice: 'Shelf detail was successfully created.' }
        format.json { render :show, status: :created, location: @shelf_detail }
      else
        format.html { render :new }
        format.json { render json: @shelf_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shelf_details/1
  # PATCH/PUT /shelf_details/1.json
  def update
    respond_to do |format|
      if @shelf_detail.update(shelf_detail_params)
        format.html { redirect_to @shelf_detail, notice: 'Shelf detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @shelf_detail }
      else
        format.html { render :edit }
        format.json { render json: @shelf_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelf_details/1
  # DELETE /shelf_details/1.json
  def destroy
    @shelf_detail.destroy
    respond_to do |format|
      format.html { redirect_to shelf_details_url, notice: 'Shelf detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelf_detail
      @shelf_detail = ShelfDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shelf_detail_params
      params.require(:shelf_detail).permit(:address)
    end
end
