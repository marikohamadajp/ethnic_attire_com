class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @dress = Dress.find(params[:dress_id])
    @booking.user = current_user
    @booking.dress = @dress
    @dress.available = false
    authorize @booking
    if @booking.save && @dress.save
      redirect_to user_dashboard_path, notice: 'Booking was successful'
    else
      render :new
    end
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:rent_date, :dress_id)
  end
end
