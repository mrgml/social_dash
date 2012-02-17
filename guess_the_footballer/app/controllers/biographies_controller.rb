class BiographiesController < ApplicationController
  
  def show
    @biography = Biography.find(params[:id])
  end
  
  def edit
    temp_bio = Biography.find(params[:id])
    temp_bio.name = ""
    @biography = temp_bio
  end
  
  def update
    @biography = Biography.find(params[:id])
    guess = params[:biography][:name]
    if guess.downcase == @biography.name.downcase then
      flash[:notice] = "You got it right, well done!"
      redirect_to(biography_path(params[:id]))
    else
      flash[:notice] = "Sorry, \"#{guess}\", is not the correct answer."  
      redirect_to(edit_biography_path(params[:id]))      
    end 
  end
  
  
  
end
