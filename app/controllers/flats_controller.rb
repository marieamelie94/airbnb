class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(cocktail_params)
    if @flat.save
      redirect_to @flat
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:flat).permit(:name, :description, :user, :air_conditionning,:wifi, :type, :kitchen)
  end
end
