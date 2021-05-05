class HikesController < ApplicationController
  before_action :authenticate_user!

  def index
    json_response(Hike.all)
  end

  def show
    json_response(Hike.find(params[:id]))
  end
end
