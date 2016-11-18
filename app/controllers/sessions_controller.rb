class SessionsController < ApplicationController
  def new
  end

  def create
    cookies.signed[:username] = params[:session][:username]
    redirect_to root_path
  end
end
