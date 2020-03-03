# frozen_string_literal: true

class HomeController < ApplicationController
  def home
    # TODO: Change the Home page content
    redirect_to articles_path if logged_in?
  end

  def about; end
end
