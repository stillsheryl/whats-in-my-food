class FoodFacade

  def self.foods(keyword)
    response = conn(keyword)
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.total_search_results(keyword)
    foods = foods(keyword)
    foods[:totalHits]
  end

  private

  def self.conn(keyword)
    Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search') do |f|
      f.params["api_key"] = ENV['USDA_API_KEY']
      f.params["query"] = keyword
      f.params["pageSize"] = 10
      f.params["sortBy"] = "ingredients.keyword"
    end
  end

end
