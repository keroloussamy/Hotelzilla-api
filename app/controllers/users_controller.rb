class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/{username}
  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessible_entity
    end
  end

  # PUT /users/{username}
  def update
    return if @user.update(user_params)

    render json: { errors: @user.errors.full_messages },
           status: :unprocessible_entity
  end

  # DELETE /users/{username}
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.permit(:name, :username, :email, :password)
  end
end
