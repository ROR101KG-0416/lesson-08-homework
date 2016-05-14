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
       flash[:notice] = "Restaurant  was  saved  successfully"
     else 
       flash[:error] = "Restaurant was not saved because an error occured"
     end
   end
 
   def update
     @restaurant = Restaurant.find_by_id(params[:id])
         Restaurant.update(restaurant_params)
         redirect_to restaurant_path(@restaurant)
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