class FoodFacade
  def self.foods(keyword)
    foods = FoodService.foods_by_query(keyword)[:foods]

    foods.map do |food_info|
      Food.new(food_info)
    end
  end

  def self.total_search_results(keyword)
    FoodService.foods_by_query(keyword)[:totalHits]
  end
end
