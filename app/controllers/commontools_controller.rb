class CommontoolsController < ApplicationController
  before_action :set_commontool, only: [:show, :update, :destroy]

  # GET /commontools
  def index
    @commontools = Commontool.all

    render json: @commontools
  end

  # GET /commontools/1
  def show
    render json: @commontool
  end

  # POST /commontools
  def create
    @commontool = Commontool.new(commontool_params)

    if @commontool.save
      render json: @commontool, status: :created, location: @commontool
    else
      render json: @commontool.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commontools/1
  def update
    if @commontool.update(commontool_params)
      render json: @commontool
    else
      render json: @commontool.errors, status: :unprocessable_entity
    end
  end

  # DELETE /commontools/1
  def destroy
    @commontool.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commontool
      @commontool = Commontool.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commontool_params
      params.fetch(:commontool,{}).permit!
    end
end
