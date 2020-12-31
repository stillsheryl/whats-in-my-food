require 'rails_helper'

describe FoodFacade do
  describe "class methods" do
    it "foods" do
      foods = FoodFacade.foods("sweet potatoes")

      expect(foods).to be_an(Array)
      expect(foods.first).to be_an_instance_of(Food)
      expect(foods.first.description).to be_a(String)
    end
  end
end
