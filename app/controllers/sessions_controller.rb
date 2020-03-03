# frozen_string_literal: true

class SessionsController < ApplicationController
  # New
  def new
    render 'sessions/new'
  end

  # Create
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = 'You have successfully logged in'
      redirect_to user_path(user)
    else
      flash[:error] = 'Something went wrong with your login information'
      render 'new'
    end
  end

  # Destroy
  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged out!'
    redirect_to root_path
  end
end
