class ProductsController < ApplicationController
  helper_method :sort_column, :sort_direction

  before_action :set_product, only: [:show, :update, :destroy]







  # GET /products
  def index
# params[:page] || params[:sort] || params[:direction] && params[:productname]

  if params[:producttype] && params[:productname]
    @products = Product.where(:producttype=>params[:producttype]).search(params[:productname]).order(sort_column + " " + sort_direction).paginate(:per_page => 8, :page => params[:page])
    elsif params[:producttype]
     @products = Product.where(:producttype=>params[:producttype]).order(sort_column + " " + sort_direction).paginate(:per_page => 8, :page => params[:page])
   elsif params[:itemcode]
    @products = Product.searchitemcode(params[:itemcode]).order(sort_column + " " + sort_direction).paginate(:per_page => 8, :page => params[:page])
   elsif params[:productname]
    @products = Product.search(params[:productname]).order(sort_column + " " + sort_direction).paginate(:per_page => 8, :page => params[:page])
  elsif params[:page] || params[:sort] || params[:direction]
   @products = Product.search(params[:productname]).order(sort_column + " " + sort_direction).paginate(:per_page => 8, :page => params[:page])
  else
    @products = Product.all.paginate(:per_page => 1000, :page => 1)
  end




    data = {
      products: @products,
      total_pages: @products.total_pages

    }
    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.fetch(:product,{}).permit!
    end
end


private

 def sort_column
   Product.column_names.include?(params[:sort]) ? params[:sort] : "productname"
 end

 def sort_direction
   %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
 end
