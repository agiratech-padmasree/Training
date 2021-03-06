class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def edit
    @product = Product.find(params[:id])
  end
  def show
    @product = Product.find(params[:id])
  end
  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to @product
    else
      render :new
  end
 end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
  end
end
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to @product
  end
  end
  def product_params
    params.require(:product).permit(:title,:price,:description,:image_url,:quantity,:is_active, :checkbox_value)
  end
end
