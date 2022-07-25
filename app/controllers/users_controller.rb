class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user = User.first
    if @user.save
      session[:user_id] = @user[:id] 
      redirect_to root_path, notice: "SuccessFully Created The Accounts"
    else
      flash[:alert] = "Something was Wrong"
      render :new
    end
  end

  private
  def user_params
  params.require(:user).permit(:user_name,:email,:password,:password_confirmation)
  end
end