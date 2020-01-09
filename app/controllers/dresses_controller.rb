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

  private

  def dress_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
