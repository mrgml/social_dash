class BiographiesController < ApplicationController
  
  def show
    @biography = Biography.find_by_name(params[:id])
  end
  
  
end
