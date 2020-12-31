require 'rails_helper'

describe FoodFacade do
  describe "class methods" do
    it "foods" do
      foods = FoodFacade.foods("sweet potatoes")

      expect(foods).to be_a(Hash)
      expect(foods[:foods]).to be_an(Array)
      expect(foods[:foods].first[:description]).to be_a(String)
      expect(foods[:foods].first).to be_an_instance_of(Food)
    end

    it "total_search_results" do
      foods = FoodFacade.total_search_results("sweet potatoes")

      expect(foods).to eq("2113")
    end
  end
end
