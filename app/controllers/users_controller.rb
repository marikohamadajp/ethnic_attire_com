class UsersController < ApplicationController
  def dashboard
    @dresses = Dress.all
    @user = current_user

    @bookings = current_user.bookings
    @my_dress = @bookings.map{ |booking| booking.dress }
    authorize @user
  end
end
