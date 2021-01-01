require 'rails_helper'

describe FoodFacade do
  describe "class methods" do
    it "foods" do
      foods = FoodFacade.foods("sweet potatoes")

      expect(foods).to be_an(Array)
      expect(foods.first).to be_an_instance_of(Food)
      expect(foods.first.description).to be_a(String)
      expect(foods.first.food_code).to be_a(String)
      expect(foods.first.brand).to be_a(String)
      expect(foods.first.ingredients).to be_a(String)
    end

    it "total_search_results" do
      count = FoodFacade.total_search_results("sweet potatoes")

      expect(count).to be_an(Integer)
      expect(count).to eq(2137)
    end
  end
end
