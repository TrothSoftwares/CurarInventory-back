class ProbrasController < ApplicationController
  before_action :set_probra, only: [:show, :update, :destroy]

  # GET /probras
  def index
    @probras = Probra.all

    render json: @probras
  end

  # GET /probras/1
  def show
    render json: @probra
  end

  # POST /probras
  def create
    @probra = Probra.new(probra_params)

    if @probra.save
      render json: @probra, status: :created, location: @probra
    else
      render json: @probra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /probras/1
  def update
    if @probra.update(probra_params)
      render json: @probra
    else
      render json: @probra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /probras/1
  def destroy
    @probra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_probra
      @probra = Probra.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def probra_params
      logger.info params.inspect
      params.fetch(:probra, {}).permit!
      # params.fetch(:product,{}).permit!
    end
end
