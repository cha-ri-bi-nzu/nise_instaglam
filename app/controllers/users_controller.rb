class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :are_you_current_user?, only: [:edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:back]
      render :new
    else
      if @user.save
        redirect_to user_path(@user.id)
      else
        render :new
      end
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
    if @user.update(user_params)
      redirect_to user_path, notice: "Editing done"
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_image, :profile_image_cache)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def are_you_current_user?
    redirect_to user_path(@user.id) unless @user.id == current_user.id
  end
end
