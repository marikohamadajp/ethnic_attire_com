class DressesController < ApplicationController
  before_action :set_dress, only: [ :destroy ]

  def index
    @dresses = policy_scope(Dress).order(created_at: :desc)

    @dresses = Dress.geocoded

    @markers = @dresses.map do |dress|
      {
        lat: dress.latitude,
        lng: dress.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { dress: dress }),
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @dress = Dress.find(params[:id])
    authorize @dress
  end

  def new
    @dress = Dress.new
    authorize @dress
  end

  def edit
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    authorize @dress
    if @dress.save
      redirect_to user_dashboard_path, notice: 'Dress was successfully created.'
    else
      render :new
    end
  end

  def update
    if @dress.update(dress_params)
      redirect_to @dress, notice: 'Dress was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @dress
    @dress.destroy
    redirect_to user_dashboard_path, notice: 'Dress was successfully destroyed.'
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:name, :color, :size, :price, :photo, :address)
  end
end
