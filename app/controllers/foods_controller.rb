class FoodsController < ApplicationController
  def index
    keyword = params[:q]
    response = Faraday.get('https://api.nal.usda.gov/fdc/v1/foods/search') do |f|
      f.params["api_key"] = ENV['USDA_API_KEY']
      f.params["query"] = keyword
      f.params["pageSize"] = 10
    end

    json = JSON.parse(response.body, symbolize_names: true)

    @foods = json[:foods]
  end
end