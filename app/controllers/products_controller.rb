class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "El producto fue publicado con éxito"
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
    def product_params
      params.require(:product).permit(:name, :url, :description)
    end
end
