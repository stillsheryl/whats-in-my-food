class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.foods(params[:q])

    @total_search_results = FoodFacade.total_search_results(params[:q])
  end
end
