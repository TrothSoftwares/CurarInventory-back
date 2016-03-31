class OrderitemsController < ApplicationController
  before_action :set_orderitem, only: [:show, :update, :destroy]

  # GET /orderitems
  def index
    @orderitems = Orderitem.all

    render json: @orderitems
  end

  # GET /orderitems/1
  def show
    render json: @orderitem
  end

  # POST /orderitems
  def create
    @orderitem = Orderitem.new(orderitem_params)

    if @orderitem.save
      render json: @orderitem, status: :created, location: @orderitem
    else
      render json: @orderitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orderitems/1
  def update
    if @orderitem.update(orderitem_params)
      render json: @orderitem
    else
      render json: @orderitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orderitems/1
  def destroy
    @orderitem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderitem
      @orderitem = Orderitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orderitem_params
      params.fetch(:orderitem, {}).permit!
    end
end
