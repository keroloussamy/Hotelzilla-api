module Api
  class HotelsController < ApplicationController
    before_action :set_hotel
    
    def destroy
      @hotel.destroy
      render json: { user: @hotel, message: 'Hotel has successfully been deleted' }
    end

    private

    def set_hotel
      @hotel = Hotel.find(params[:id]) 
    end

  end
end