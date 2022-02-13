class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.create(talk_id: params[:talk_id])
    redirect_to root_path
  end

  def destroy
    @talk = Talk.find(params[:talk_id])
    @favorite = current_user.favorites.find_by(talk_id: @talk.id)
    @favorite.destroy
    redirect_to root_path
  end

end

#