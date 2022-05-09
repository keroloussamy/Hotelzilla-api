module Api
  class CitiesController < ApplicationController
    # before_action :set_city

    def index
      @cities = City.all

      render json: @cities
    end

    # GET /cities/1
    def show
      @city = City.find(params[:id])
      render json: @city
    end

    # POST /cities
    def create
      @city = City.new(city_params)

      if @city.save
        render json: @city, status: :created, location: api_city_path(@city)
      else
        render json: @city.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /cities/1
    def update
      if @city.update(city_params)
        render json: @city
      else
        render json: @city.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @city = City.find(params[:id])
      @city.destroy
      render json: { city: @city, message: 'City has successfully been deleted' }
    end

    private

    # def set_city
    #   @city = City.find(params[:id])
    # end

    def city_params
      params.permit(:name)
    end
  end
end
