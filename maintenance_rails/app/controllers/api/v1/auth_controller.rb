class Api::V1::AuthController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # if user and password is valid
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Incorrect username or password."}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "Cookies have been tampered with."}
    end
  end

  def googleAuth
    #get access tokens from google server
    access_token = request.env["omniauth.auth"]
    user = User.from_omniauth(access_token)
    log_in(user)
    #access_token is used to authenticate request made from the rails app to the google server
    user.google_token = access_token.credentials.token
    #refresh_token to request new access_token
    #note: refresh_token is only sent once during the first request
    refresh_token = access_token.credentials.refresh_token
    user.google_refresh_token = refresh_token if refresh_token.present?
    user.save
    redirect_to root_path
  end
end
