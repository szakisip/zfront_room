class FavoritesController < ApplicationController

  # def create
  #   @favorite = Favorete.new(favorite_params)
  #   if @favorite.save
  #     flash[:success] = '投稿に「いいね!」しました。'
  #     redirect_to root_path
  #   else
  #     flash[:alert] = '「いいね!」に失敗しました。'
  #     redirect_to root_path
  # end

  # def destroy
  #   @favorite = Favorete.find(favorite_params)
  #   @favorite.destroy
  #   redirect_to root_path
  # end


  def create
    @favorite = Favorite.new(user_id: current_user.id,post_id: params[:post_id])
    @favorite.save
    result = [done: "save",user_id: current_user.id, post_id: params[:post_id]]
    redirect_to root_path
  end

  def destroy
    @post_favorite = Favorite.find(user_id: current_user.id, post_id: params[:post_id])
    @post_favorite.destroy
    result = [done: "destroy",user_id: current_user.id, post_id:params[:post_id]]
    redirect_to root_path(params)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :falk_id).merge(user_id: current_user.id, talk_id: params[:talk_id])
  end

  # def clicked_post
  #   talk.find(params[:post_id])
  # end

end
