class Api::SessionsController < ApplicationController

  before_action :require_login, only: [:destroy]


  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.nil?
      flash.now[:errors] = ["Invalid credentials"]
    else
      login(@user)
      # redirect_to
    end
  end

  def destroy
    logout
    render json: {}, status: 404
  end

end
