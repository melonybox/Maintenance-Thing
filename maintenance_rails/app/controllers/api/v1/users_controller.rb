class Api::V1::UsersController < ApplicationController
  def create
  user = User.new(
    email: params[:email],
    username: params[:username],
    password: params[:password],
  )
  if user.save
    token = encode_token(user.id)
    render json: {user: UserSerializer.new(user), token: token}
    # token would be used if autologin was implemented or possibly else?
  else
    render json: {errors: user.errors.full_messages}
  end

  def self.from_omniauth(auth)
    #creates new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.name = auth.info.name
      user.email = auth.info.email
    end
  end
end
