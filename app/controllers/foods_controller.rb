class FoodsController < ApplicationController
  def index
    @total_search_results = FoodService.total_in_search(params[:q])

    @foods = FoodFacade.foods(params[:q])
  end
end
