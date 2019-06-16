class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @category = params["food_type"]
    if params["food_type"].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == @category }
    end
    # @restaurants = Restaurant.all
  end

  def create
    # raise
    # Restaurant.new(name: params[:name], address: params[:name])
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

end
