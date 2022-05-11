module Api
  class CitiesController < ApplicationController
    skip_before_action :authenticate_request
    
    def index
      @cities = City.all
      render json: @cities
    end
  end
end
