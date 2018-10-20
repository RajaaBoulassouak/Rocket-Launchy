class LaunchesController < ApplicationController 
  
  def index 
    @search = LaunchSearch.new
  end
end