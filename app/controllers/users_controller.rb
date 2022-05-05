class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only: [:show, :destroy]

  # GET /users
  def index 
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/{username}
  def show 
    render json: @user, status: :ok
  end

end
