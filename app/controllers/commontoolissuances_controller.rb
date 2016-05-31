class CommontoolissuancesController < ApplicationController
  before_action :set_commontoolissuance, only: [:show, :update, :destroy]

  # GET /commontoolissuances
  def index
    @commontoolissuances = Commontoolissuance.all

    render json: @commontoolissuances
  end

  # GET /commontoolissuances/1
  def show
    render json: @commontoolissuance
  end

  # POST /commontoolissuances
  def create
    @commontoolissuance = Commontoolissuance.new(commontoolissuance_params)

    if @commontoolissuance.save
      render json: @commontoolissuance, status: :created, location: @commontoolissuance
    else
      render json: @commontoolissuance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commontoolissuances/1
  def update
    if @commontoolissuance.update(commontoolissuance_params)
      render json: @commontoolissuance
    else
      render json: @commontoolissuance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /commontoolissuances/1
  def destroy
    @commontoolissuance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commontoolissuance
      @commontoolissuance = Commontoolissuance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commontoolissuance_params
      params.fetch(:commontoolissuance,{}).permit!
    end
end
