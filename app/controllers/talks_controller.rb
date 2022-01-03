class TalksController < ApplicationController
  def index
    # @talks = Talk.includes(:user).order("created_at DESC")
  end

  def new
    # @talk = Talk.new
  end

  def create
  end

end
