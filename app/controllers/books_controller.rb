class BooksController < ApplicationController

  #User Defined
  def borrow
    @book=Book.find(params[:id])
    Rails.logger = Logger.new(STDOUT)
    logger.debug "Book id passed is #{params[:id]}"
    logger.debug "Book returned by search #{@book.id}"
    @book.is_borrowed=true
    @book.user_id = session[:user_id]

    if @book.save!
      # redirect_to @book, notice: 'Book was successfully borrowed.'
      render :show, status: :ok, location: @book
    else
      render :show
      # render json: @book.errors, status: :unprocessable_entity
    end
    #create check_out_history of book #vicky
    create_book_history params[:id], session[:user_id],Time.now.getlocal
  end

  def create_book_history(book_id, user_id, chk_out_dt)
    @book_history = BookHistory.new
    @book_history.book_id = book_id
    @book_history.user_id = user_id
    @book_history.chk_out_dt = chk_out_dt
    @book_history.save!
  end

  def return
    @book=Book.find(params[:id])
    Rails.logger = Logger.new(STDOUT)
    logger.debug "Book id passed is #{params[:id]}"
    logger.debug "Book returned by search #{@book.id}"
    invalid_return = false
    if @book.is_borrowed && (@book.user_id != @current_user.id)
      invalid_return = true
    end
    send_mail = false
    if @book.is_requested
      user = User.find(@book.requested_by)
      send_mail = true
    end
    @book.is_borrowed=false
    @book.user_id = nil
    @book.requested_by = nil
    @book.is_requested = false
    if !invalid_return && @book.save!
      # redirect_to @book, notice: 'Book was successfully borrowed.'
      render :show, status: :ok, location: @book
    else
      flash.now[:danger] = "Invalid Action!"
      render :show     #render json: @book.errors, status: :unprocessable_entity
    end
    #create check_out_history of book #vicky #add check in date
    if send_mail
      send_email_to_requester(user, @book.title)
    end
    complete_book_history params[:id],session[:user_id],Time.now.getlocal
  end

  def send_email_to_requester(user, book_name)
    Notifier.send_notification(user.email, user.name, book_name).deliver_now!
  end

  def complete_book_history(book_id, user_id, chk_in_dt)
    @book_history = BookHistory.find_by(:book_id => book_id, :user_id => user_id, :chk_in_date => nil)
    @book_history.chk_in_date = chk_in_dt
    @book_history.save!
  end

  def request_book
    @book=Book.find(params[:id])
    @book.is_requested=true
    @book.requested_by=session[:user_id]
    if @book.save!
     render :show, status: :ok, location: @book
    else
    render :show
    render json: @book.errors, status: :unprocessable_entity
    end
  end

  def cancel_request
    @book=Book.find(params[:id])
    @book.is_requested=false
    @book.requested_by=nil
    if @book.save!
     render :show, status: :ok, location: @book
    else
    render :show
    render json: @book.errors, status: :unprocessable_entity
    end
  end

  # GET /books
  # GET /books.json
  def index
    @books = Book.paginate_by_sql("select * from books where is_deleted = 'f'", :page => params[:page], :per_page => 10)
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    Rails.logger = Logger.new(STDOUT)
    logger.debug "params passed is #{book_params}"
    @book.is_deleted = false

    respond_to do |format|
      if @book.save
        logger.debug "Book saved with id #{@book.id}"
        format.html { redirect_to @book, notice: 'Book was successfully added.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.present?
        @book.is_deleted = true
        @book.save
        format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

    # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

private
    # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:title, :description, :author, :isbn, :is_borrowed, :is_deleted)
  end
  
  end
