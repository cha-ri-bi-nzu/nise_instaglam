class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :it_is_your_post?, only: [:edit, :update, :destroy]
  
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        # ContactMailer.contact_mail(@contact).deliver
        redirect_to pictures_path, notice: "投稿でけた👍"
      else
        render :new
      end
    end
  end

  def confirm
    @picture = Picture.new(picture_params)
  end

  def show
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "You could edit now🙆"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:image, :image_cache, :content)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def it_is_your_post?
    redirect_to pictures_path unless @picture.user_id == current_user.id
  end
end
