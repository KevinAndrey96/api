class AutomovilsController < ApplicationController
  before_action :set_automovil, only: [:show, :update, :destroy]

  # GET /automovils
  def index
    @automovils = Automovil.all

    render json: @automovils
  end

  # GET /automovils/1
  def show
    render json: @automovil
  end

  # POST /automovils
  def create
    @automovil = Automovil.new(automovil_params)

    if @automovil.save
      render json: @automovil, status: :created, location: @automovil
    else
      render json: @automovil.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /automovils/1
  def update
    if @automovil.update(automovil_params)
      render json: @automovil
    else
      render json: @automovil.errors, status: :unprocessable_entity
    end
  end

  # DELETE /automovils/1
  def destroy
    @automovil.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automovil
      @automovil = Automovil.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def automovil_params
      params.require(:automovil).permit(:marca, :color, :modelo)
    end
end
