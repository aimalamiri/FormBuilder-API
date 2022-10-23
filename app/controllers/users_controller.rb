class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      token = issue_token(user)
      render json: { user: UserSerializer.new(user), jwt: token }
    elsif user.error.messages
      render json: { error: user.error.messages }
    else
      render json: { error: 'User could not be created. Please try again latter.' }
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password)
  end
end
