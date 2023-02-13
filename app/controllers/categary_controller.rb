class CategaryController < ApplicationController
  def index
    @categaries = Categary.all
  end 

  def new
    @categary = Categary.new
  end

  def show
    @categary = Categary.find(params[:id])
  end

  def edit
    @categary = Categary.find(params[:id])
  end

  def create
    @categary = Categary.new(categary_params)
    if @categary.save
      redirect_to @categary
    else
      render 'new'
    end
  end

  def update
    @categary = Categary.find(params[:id])
    if @categary.update(categary_params)
      redirect_to @categary
    else
      render 'edit'
    end
  end
  
  def destroy
    @categary = Categary.find(params[:id])
    @categary.destroy
    redirect_to categary_path
  end

  private
  def categary_params
    params.require(:categary).permit(:itemcategary)
  end
end
