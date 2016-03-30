class StockadjustmentitemsController < ApplicationController
  before_action :set_stockadjustmentitem, only: [:show, :update, :destroy]

  # GET /stockadjustmentitems
  def index
    @stockadjustmentitems = Stockadjustmentitem.all

    render json: @stockadjustmentitems
  end

  # GET /stockadjustmentitems/1
  def show
    render json: @stockadjustmentitem
  end

  # POST /stockadjustmentitems
  def create
    @stockadjustmentitem = Stockadjustmentitem.new(stockadjustmentitem_params)

    if @stockadjustmentitem.save
      render json: @stockadjustmentitem, status: :created, location: @stockadjustmentitem
    else
      render json: @stockadjustmentitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stockadjustmentitems/1
  def update
    if @stockadjustmentitem.update(stockadjustmentitem_params)
      render json: @stockadjustmentitem
    else
      render json: @stockadjustmentitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stockadjustmentitems/1
  def destroy
    @stockadjustmentitem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockadjustmentitem
      @stockadjustmentitem = Stockadjustmentitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stockadjustmentitem_params
      params.fetch(:stockadjustmentitem, {}).permit!
    end
end
