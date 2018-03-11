class BookHistoriesController < ApplicationController
  before_action :set_book_history, only: [:show, :edit, :update, :destroy]

  # GET /book_histories
  # GET /book_histories.json
  def index
    @book_histories = BookHistory.all
    @data=params[:data]#params[:id]
  end

  # GET /book_histories/1
  # GET /book_histories/1.json
  def show
  end

  # GET /book_histories/new
  def new
    @book_history = BookHistory.new
  end

  # GET /book_histories/1/edit
  def edit
  end

  # POST /book_histories
  # POST /book_histories.json
  def create
    @book_history = BookHistory.new(book_history_params)

    respond_to do |format|
      if @book_history.save
        format.html { redirect_to @book_history, notice: 'Book history was successfully created.' }
        format.json { render :show, status: :created, location: @book_history }
      else
        format.html { render :new }
        format.json { render json: @book_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_histories/1
  # PATCH/PUT /book_histories/1.json
  def update
    respond_to do |format|
      if @book_history.update(book_history_params)
        format.html { redirect_to @book_history, notice: 'Book history was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_history }
      else
        format.html { render :edit }
        format.json { render json: @book_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_histories/1
  # DELETE /book_histories/1.json
  def destroy
    @book_history.destroy
    respond_to do |format|
      format.html { redirect_to book_histories_url, notice: 'Book history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_history
      @book_history = BookHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_history_params
      params.require(:book_history).permit(:book_id, :chk_out_dt, :chk_in_date, :user_id)
    end
end
