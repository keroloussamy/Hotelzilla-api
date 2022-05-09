module Api
  class HotelsController < ApplicationController
    # before_action :set_hotel

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
        render json: @hotel, status: :created, location: @hotel
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
      @hotel.destroy
      render json: { user: @hotel, message: 'Hotel has successfully been deleted' }
    end

    private

    # def set_hotel
    #   @hotel = Hotel.find(params[:id]) 
    # end

    def hotel_params
      params.permit(:name, :city_id)
    end

  end
end