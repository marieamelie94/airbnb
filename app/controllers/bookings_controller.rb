class BookingsController < ApplicationController
  def create
    # @booking = current_user.booking.create(booking_params)
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @user = current_user
    @booking.user = @user
    @booking.flat = @flat
    if @booking.save
      redirect_to '/pages/checkout'
    else
      render 'flat_path(@flat)'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flat_id, :user_id, :check_in, :checkout)
  end
end
