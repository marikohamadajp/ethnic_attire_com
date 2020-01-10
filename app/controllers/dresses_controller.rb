class DressesController < ApplicationController
  def index
    @dresses = Dress.all
  end

  def show
  end

  def new
    @dress = Dress.new
  end

  def edit
  end

  def create
    @dress = Dress.new(dress_params)
    if @dress.save
      redirect_to @dress, notice: 'Dress was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dress.update(flat_params)
      redirect_to @dress, notice: 'Dress was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dress.destroy
    redirect_to @dress, notice: 'Dress was successfully destroyed.'
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:name, :color, :size, :price, :photo)
  end
end
