require 'rails_helper'

describe "Food Service" do
  describe "foods_by_query" do
    it "returns food data from API call" do
      foods = FoodService.foods_by_query("sweet potatoes")

      expect(foods).to be_an(Array)

      food = foods.first
      expect(food).to be_a(Hash)
      expect(food[:description]).to be_a(String)
      expect(food[:gtinUpc]).to be_a(String)
      expect(food[:brandOwner]).to be_a(String)
      expect(food[:ingredients]).to be_a(String)
    end

    describe "total_in_search" do
      it "shows total found for keyword search" do
        count = FoodService.total_in_search("sweet potatoes")

        expect(count).to be_an(Integer)
        expect(count).to eq(2137)
      end
    end
  end
end
