class StockadjustmentsController < ApplicationController
  before_action :set_stockadjustment, only: [:show, :update, :destroy]

  # GET /stockadjustments
  def index
    @stockadjustments = Stockadjustment.all

    render json: @stockadjustments
  end

  # GET /stockadjustments/1
  def show
    render json: @stockadjustment
  end

  # POST /stockadjustments
  def create
    @stockadjustment = Stockadjustment.new(stockadjustment_params)

    if @stockadjustment.save
      render json: @stockadjustment, status: :created, location: @stockadjustment
    else
      render json: @stockadjustment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stockadjustments/1
  def update
    if @stockadjustment.update(stockadjustment_params)
      render json: @stockadjustment
    else
      render json: @stockadjustment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stockadjustments/1
  def destroy
    @stockadjustment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockadjustment
      @stockadjustment = Stockadjustment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stockadjustment_params
      params.fetch(:stockadjustment, {}).permit!
    end
end
