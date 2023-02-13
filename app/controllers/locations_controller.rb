class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def show
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    if  @location.save
      redirect_to :location
      else
      render 'new'
    end
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location.params)
      redirect_to @location
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to @location_path
  end
   
  private
  def location_params
    params.require(:location).permit(:address)
  end
end
