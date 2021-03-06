module Api
  class HotelsController < ApplicationController
    skip_before_action :authenticate_request, only: %i[index show]

    def index
      @hotels = Hotel.all
      render json: @hotels
    end

    def hotel_by_city
      @city = City.find(params[:id])
      @hotels = @city.hotels
      render json: @hotels
    end

    # GET /hotels/1
    def show
      @hotel = Hotel.find(params[:id])
      render json: @hotel
    end

    # POST /hotels
    def create
      @hotel = Hotel.new(hotel_params)

      if @hotel.save
        render json: @hotel, status: :created
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /hotels/1
    def update
      @hotel = Hotel.find(params[:id])

      if @hotel.update(hotel_params)
        render json: @hotel
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @hotel = Hotel.find(params[:id])
      @hotel.destroy
      render json: { message: 'Hotel has successfully been deleted' }
    end

    private

    def hotel_params
      params.permit(:name, :description, :rating, :image, :city_id)
    end
  end
end
