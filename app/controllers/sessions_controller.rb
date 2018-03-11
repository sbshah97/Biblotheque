class SessionsController < ApplicationController

  skip_before_filter :verify_login
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path
    else
      flash.now[:danger] = "Invalid email id or password. Please try again."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end

  def signup
    @user = User.new
    render 'sessions/signup'
  end

  def new_user
    @user = User.new(user_params)
    begin
      if @user.save!
        session[:user_id] = @user.id
        logged_in?
        redirect_to home_path
      end
    rescue => error
      logger.debug "ERROR - gaurav"
      flash.now[:danger] = "#{error.message}"
      render 'signup'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :phone, :is_admin, :is_deleted)
  end
end
