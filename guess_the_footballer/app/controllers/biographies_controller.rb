class BiographiesController < ApplicationController
  
  def show
    @biography = Biography.find(params[:id])
  end
  
  
end
