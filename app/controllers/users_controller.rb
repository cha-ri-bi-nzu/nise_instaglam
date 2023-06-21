class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def confirm
    @user = User.new(user_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_image, :profile_image_cache)
  end
end
