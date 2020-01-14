class UsersController < ApplicationController
  def dashboard
    @dresses = Dress.all
    @user = current_user
    authorize @user
  end
end
