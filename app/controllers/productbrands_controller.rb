class ProductbrandsController < ApplicationController
  before_action :set_productbrand, only: [:show, :update, :destroy]

  # GET /productbrands
  def index
    @productbrands = Productbrand.all

    render json: @productbrands
  end

  # GET /productbrands/1
  def show
    render json: @productbrand
  end

  # POST /productbrands
  def create
    @productbrand = Productbrand.new(productbrand_params)

    if @productbrand.save
      render json: @productbrand, status: :created, location: @productbrand
    else
      render json: @productbrand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productbrands/1
  def update
    if @productbrand.update(productbrand_params)
      render json: @productbrand
    else
      render json: @productbrand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productbrands/1
  def destroy
    @productbrand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productbrand
      @productbrand = Productbrand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def productbrand_params

logger.info params.inspect
      # params.fetch(:productbrand, {}).permit(:productbrand)
      # params.fetch(:productbrand, {}).permit(:productbrand)
      params.fetch(:productbrand, {}).permit!
#      params.fetch(:supplier, {}).permit!
#      params.fetch(:productbrand,{}).permit( attributes: [:productbrand])
      # params[:productbrand]

    end
end
