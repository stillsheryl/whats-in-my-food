class FoodFacade
  def self.foods(keyword)
    foods = FoodService.foods_by_query(keyword)

    foods.map do |food_info|
      Food.new(food_info)
    end
  end
end
