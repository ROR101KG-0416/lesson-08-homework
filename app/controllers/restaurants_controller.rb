class RestaurantsController < ApplicationController
  def index
    @restaurants= Restaurant.all
  end

  def show
    @restaurants = Restaurant.find_by_id(params[:id])
  end
end
