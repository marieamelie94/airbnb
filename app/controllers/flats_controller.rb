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
    @user = current_user
  end

  def create
    @user = current_user
    @flat = Flat.new(flat_params)
    @flat.user = @user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :address, :air_conditionning, :wifi, :flat_type, :kitchen, :price, :category, :photo)
  end
end
