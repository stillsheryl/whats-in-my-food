require 'rails_helper'

describe Food do
  it "creates a food object" do
    attributes = {
      description: "Sweet Potatoes",
      gtinUpc: "36284655171",
      brandOwner: "Nancy's Farm",
      ingredients: "sweet potatoes"
    }
    food = Food.new(attributes)

    expect(food.description).to eq("Sweet Potatoes")
    expect(food.food_code).to eq("36284655171")
    expect(food.brand).to eq("Nancy's Farm")
    expect(food.ingredients).to eq("sweet potatoes")
  end
end
