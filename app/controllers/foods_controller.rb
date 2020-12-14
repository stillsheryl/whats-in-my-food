class FoodsController < ApplicationController
  def index
    keyword = "\"#{params[:q]}\""

    @total_search_results = FoodFacade.total_search_results(keyword)

    @foods = FoodFacade.foods(keyword)[:foods].map do |food_info|
      Food.new(food_info)
    end
  end
end
