class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end
  
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
    # @dose.cocktail = @cocktail works as well - attach 
    @dose.save!
    redirect_to cocktail_path(@cocktail)
  end

  def destroyams
  end


  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end 

end
