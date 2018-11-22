class BookingsController < ApplicationController
  def index
    @user = current_user
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: @user.id)
  end

  def create
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

  def destroy
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(@user)
  end

  private

  def booking_params
    params.require(:booking).permit(:flat_id, :user_id, :check_in, :checkout)
  end
end
