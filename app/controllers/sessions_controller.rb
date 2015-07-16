class SessionsController < ApplicationController
  def new
  end

  def create
    sign_in_as session_params[:email]
    redirect_to root_path
  end

  private

  def session_params
    params.require(:user).permit(:email)
  end
end
