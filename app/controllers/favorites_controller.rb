class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.all
  end

  def create
  end

  def destroy
  end
end
