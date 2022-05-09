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
      @room = Room.new(room_params)

      if @room.save
        render json: @room
      else
        render json: @room.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /rooms/1
    def update
      @room = Room.find(params[:id])

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
