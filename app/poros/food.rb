class Food
  attr_reader :description, :food_code, :brand, :ingredients
  def initialize(food_info)
    @description = food_info[:description]
    @food_code = food_info[:gtinUpc]
    @brand = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
  end
end
