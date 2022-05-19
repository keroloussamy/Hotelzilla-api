module Api
  class RoomTypesController < ApplicationController
    def index
      @room_types = RoomType.all
      render json: @room_types
    end
  end
end
