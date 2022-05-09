module Api
  class HotelsController < ApplicationController
    def index
      @hotels = Hotel.all

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
      # @hotel.city_id = City.id

      if @hotel.save
        render json: @hotel, status: :created, location: api_hotel_path(@hotel)
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /hotels/1
    def update
      if @hotel.update(hotel_params)
        render json: @hotel
      else
        render json: @hotel.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @hotel = Hotel.find(params[:id])
      @hotel.destroy
      render json: { user: @hotel, message: 'Hotel has successfully been deleted' }
    end

    private

    def hotel_params
      params.permit(:name, :city_id)
    end
  end
end
