class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorite_pictures
  end

  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to request.referer, notice: "#{favorite.picture.user.name}さんの投稿をお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to request.referer, notice: "#{favorite.picture.user.name}さんの投稿をお気に入り解除しました"
  end
end
