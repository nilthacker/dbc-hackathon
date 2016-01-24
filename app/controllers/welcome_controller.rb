class WelcomeController < ApplicationController

  def index
  end

  def show
    render 'welcome/_map_view'
  end
end
