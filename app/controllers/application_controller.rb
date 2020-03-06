# frozen_string_literal: true

# This class is to use session actions
class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # Good !something.nil?
    !!current_user
  end

  def require_user
    # Use a guard clause instead of wrapping the code
    # inside a conditional expression (if !foo end)
    return unless logged_in?
    flash[:danger] = 'You must be logged in to perform that action!'
    redirect_to root_path
  end
end
