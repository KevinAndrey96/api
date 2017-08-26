class ViviendasController < ApplicationController
  before_action :set_vivienda, only: [:show, :update, :destroy]

  # GET /viviendas
  def index
    @viviendas = Vivienda.all

    render json: @viviendas
  end

  # GET /viviendas/1
  def show
    render json: @vivienda
  end

  # POST /viviendas
  def create
    @vivienda = Vivienda.new(vivienda_params)

    if @vivienda.save
      render json: @vivienda, status: :created, location: @vivienda
    else
      render json: @vivienda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /viviendas/1
  def update
    if @vivienda.update(vivienda_params)
      render json: @vivienda
    else
      render json: @vivienda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /viviendas/1
  def destroy
    @vivienda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vivienda
      @vivienda = Vivienda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vivienda_params
      params.require(:vivienda).permit(:barrio, :tipo, :habitantes)
    end
end
