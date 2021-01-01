require 'rails_helper'

describe "Food Service" do
  describe "foods_by_query" do
    it "returns food data from API call" do
      foods = FoodService.foods_by_query("sweet potatoes")

      expect(foods).to be_a(Hash)
      expect(foods).to have_key(:totalHits)
      expect(foods).to have_key(:foods)

      foods = foods[:foods]
      food = foods.first
      expect(food).to be_a(Hash)
      expect(food[:description]).to be_a(String)
      expect(food[:gtinUpc]).to be_a(String)
      expect(food[:brandOwner]).to be_a(String)
      expect(food[:ingredients]).to be_a(String)
    end
  end
end
