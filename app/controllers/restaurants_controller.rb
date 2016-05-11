class RestaurantsController < ApplicationController 

  def index
    @restaurant = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find_by_id(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end  

end  