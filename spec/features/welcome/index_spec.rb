require 'rails_helper'

describe 'As a user, when I visit "/" '  do
  describe 'And I fill in the search form with "sweet potatoes" and click "Search"' do
    it 'redirects me to the "/foods" page and shows a total of the number of items returned by the search, and a list of ten foods that contain the ingredient "sweet potatoes"' do
      visit root_path

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_content("2113 Results")

      expect(page).to have_css(".ingredient", count: 10)

      within(first(".ingredient")) do
        expect(page).to have_css(".")
      end
    end

    it "shows the foods's details (GTIN/UPC code, description, Brand Owner, ingredients) for each food" do
      visit root_path

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      expect(current_path).to eq(foods_path)

      expect(page).to have_css(".ingredient", count: 10)

      within(first(".ingredient")) do
        expect(page).to have_css(".food_code")
        expect(page).to have_css(".description")
        expect(page).to have_css(".brand")
        expect(page).to have_css(".ingredients")
      end
    end
  end
end
