class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def new
    @cart = Cart.new
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to @cart
    end
    render 'new'
  end

  def update
    @cart = Cart.find(params[:id])
    if @cart.update(cart_params)
      redirect_to @cart
    else
      render 'edit'
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to cart_path
  end

  private
  def cart_params
    params.require(:cart).permit(:total, :quantity)
  end
end
