class ProducttypesController < ApplicationController
  before_action :set_producttype, only: [:show, :update, :destroy]

  # GET /producttypes
  def index
    @producttypes = Producttype.all

    render json: @producttypes
  end

  # GET /producttypes/1
  def show
    render json: @producttype
  end

  # POST /producttypes
  def create
    @producttype = Producttype.new(producttype_params)

    if @producttype.save
      render json: @producttype, status: :created, location: @producttype
    else
      render json: @producttype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /producttypes/1
  def update
    if @producttype.update(producttype_params)
      render json: @producttype
    else
      render json: @producttype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /producttypes/1
  def destroy
    @producttype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producttype
      @producttype = Producttype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def producttype_params
      logger.info params.inspect
      params.fetch(:producttype,{}).permit!
    end
end
