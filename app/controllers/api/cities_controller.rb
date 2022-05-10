module Api
  class CitiesController < ApplicationController
    def index
      @cities = City.all
      render json: @cities
    end
  end
end
