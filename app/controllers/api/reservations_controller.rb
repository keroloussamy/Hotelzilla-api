module Api
  class ReservationsController < ApplicationController
    # GET api/reservation
    def index
      @reservations = @current_user.reservations.all
      render json: @reservations
    end

    # POST api/reservation
    def create
      @reservation = @current_user.reservations.new(reservation_params)

      if @reservation.save
        render json: @reservation, status: :created, location: api_reservation_path(@reservation)
      else
        render json: @reservation.errors, status: :unprocessable_entity
      end
    end

    private

    def reservation_params
      params.permit(:date, :room_type_id, :hotel_id)
    end
  end
end
