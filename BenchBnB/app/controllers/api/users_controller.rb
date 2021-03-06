class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to new_session_url
      # render "api/users/show"
    else
      flash.now[:errors] = @user.errors.full_messages
      # render json: @user.errors.full_messages, status: 442
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
