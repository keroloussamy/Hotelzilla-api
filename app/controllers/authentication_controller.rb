class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = jwt_encode(user_id: @user.id, user_email: @user.email, role: @user.role)
      render json: { auth: true, token: token }, status: :ok
    else
      render json: { auth: false, error: "unauthorized" }, status: :unauthorized
    end
  end
end
