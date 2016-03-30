class PurchaseorderitemsController < ApplicationController
  before_action :set_purchaseorderitem, only: [:show, :update, :destroy]

  # GET /purchaseorderitems
  def index
    @purchaseorderitems = Purchaseorderitem.all

    render json: @purchaseorderitems
  end

  # GET /purchaseorderitems/1
  def show
    render json: @purchaseorderitem
  end

  # POST /purchaseorderitems
  def create
    @purchaseorderitem = Purchaseorderitem.new(purchaseorderitem_params)

    if @purchaseorderitem.save
      render json: @purchaseorderitem, status: :created, location: @purchaseorderitem
    else
      render json: @purchaseorderitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchaseorderitems/1
  def update
    if @purchaseorderitem.update(purchaseorderitem_params)
      render json: @purchaseorderitem
    else
      render json: @purchaseorderitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchaseorderitems/1
  def destroy
    @purchaseorderitem.destroy
    #  render status: 200, json: 200

    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchaseorderitem
      @purchaseorderitem = Purchaseorderitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purchaseorderitem_params
      params.fetch(:purchaseorderitem, {}).permit!
    end
end
