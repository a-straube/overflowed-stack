class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.signup_confirmation(@user).deliver_now
      redirect_to '/'
    else
      flash[:notice] = "Oops! There was a problem with creating your account! Try again."
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end

end
