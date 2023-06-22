class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    
  end

  def create
    # ContactMailer.contact_mail(@contact).deliver
  end

  def confirm
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
