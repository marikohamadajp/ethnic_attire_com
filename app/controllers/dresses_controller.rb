class DressesController < ApplicationController
  def index
    @dresses = Dress.all
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    if @dress.save
      # need to specify redirection after creation below
      redirect_to root_path
    else render :new
    end
  end

  def edit

  end

  private

  def dress_params
    params.require(:dress).permit(:name, :color, :size, :price, :photo)
  end
end
