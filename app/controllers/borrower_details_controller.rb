class BorrowerDetailsController < ApplicationController
  before_action :set_borrower_detail, only: [:show, :edit, :update, :destroy]

  # GET /borrower_details
  # GET /borrower_details.json
  def index
    @borrower_details = BorrowerDetail.all
  end

  # GET /borrower_details/1
  # GET /borrower_details/1.json
  def show
  end

  # GET /borrower_details/new
  def new
    @borrower_detail = BorrowerDetail.new
  end

  # GET /borrower_details/1/edit
  def edit
  end

  # POST /borrower_details
  # POST /borrower_details.json
  def create
    @borrower_detail = BorrowerDetail.new(borrower_detail_params)

    respond_to do |format|
      if @borrower_detail.save
        format.html { redirect_to @borrower_detail, notice: 'Borrower detail was successfully created.' }
        format.json { render :show, status: :created, location: @borrower_detail }
      else
        format.html { render :new }
        format.json { render json: @borrower_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrower_details/1
  # PATCH/PUT /borrower_details/1.json
  def update
    respond_to do |format|
      if @borrower_detail.update(borrower_detail_params)
        format.html { redirect_to @borrower_detail, notice: 'Borrower detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrower_detail }
      else
        format.html { render :edit }
        format.json { render json: @borrower_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrower_details/1
  # DELETE /borrower_details/1.json
  def destroy
    @borrower_detail.destroy
    respond_to do |format|
      format.html { redirect_to borrower_details_url, notice: 'Borrower detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrower_detail
      @borrower_detail = BorrowerDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrower_detail_params
      params.require(:borrower_detail).permit(:borrower_id, :book_id, :borrowed_from, :borrowed_to, :actual_return_date, :issued_by)
    end
end
