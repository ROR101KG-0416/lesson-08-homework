class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save 
      redirect_to root_path
      flash[:notice] = "Saving was succefull"
    else 
      flash[:error] = "There was an error occured"
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
      flash[:notice] = "Character was successfully updated"
    else
    flash.now[:error] = "An error prevented the character from being updated"     
    render :edit
  end
 end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.delete
    redirect_to restaurants_path
  end

  private 

  def restaurant_params
  params.require(:restaurant).permit(:name, :street, :city, :state, :country, :postal_code)
  end
end
