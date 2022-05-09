module Api
  class RoomsController < ApplicationController
    def index
      @rooms = Room.all

      render json: @rooms
    end

    # GET /rooms/1
    def show
      @room = Room.find(params[:id])
      render json: @room
    end

    # POST /rooms
    def create
      @room_hotel = Hotel.find(params[:hotel_id])
      @room = @room_hotel.rooms.new(room_params)

      if @room.save
        render json: @room, status: :created, location: api_hotel_rooms_path(@room)
      else
        render json: @room.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /rooms/1
    def update
      if @room.update(room_params)
        render json: @room
      else
        render json: @room.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @room = Room.find(params[:id])

      @room.destroy
      render json: { room: @room, message: 'room has successfully been deleted' }
    end

    private

    def room_params
      params.permit(:name, :hotel_id)
    end
  end
end
