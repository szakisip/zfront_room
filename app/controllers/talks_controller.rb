class TalksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @talks = Talk.all
    # includes(:user).order("created_at DESC")
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def talk_params
    params.require(:talk).permit(:title, :category_id, :talk_text).merge(user_id: current_user.id)
  end

end
