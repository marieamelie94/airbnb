class FlatsController < ApplicationController
  def index
    # @flats = Flat.all
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lng: flat.longitude,
        lat: flat.latitude,
        infoWindow: { content: render_to_string(partial: "/flats/map_window", locals: { flat: flat })}
      }
    end
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
