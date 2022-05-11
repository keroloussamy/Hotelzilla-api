module Api
  class HotelsController < ApplicationController
    skip_before_action :authenticate_request, only: [:index, :show]

    def index
      @city = City.find(params[:city_id])
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
        render json: @hotel, status: :created, location: api_hotel_path(@hotel)
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
      render json: { hotel: @hotel, message: 'Hotel has successfully been deleted' }
    end

    private

    def hotel_params
      params.permit(:name, :description, :rating, :image, :city_id)
    end
  end
end
