class BookingsController < ApplicationController

def new
  @dress = Dress.find(params[:dress_id])
  @booking = Booking.new
  authorize @booking
end


private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :date, :dress_id)
  end

end
