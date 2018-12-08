class Api::SessionsController < ApplicationController
  before_action :require_login


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
    logout(@user)
    redirect_to new_session_url
  end

end
