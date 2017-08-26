class CancionsController < ApplicationController
  before_action :set_cancion, only: [:show, :update, :destroy]

  # GET /cancions
  def index
    @cancions = Cancion.all

    render json: @cancions
  end

  # GET /cancions/1
  def show
    render json: @cancion
  end

  # POST /cancions
  def create
    @cancion = Cancion.new(cancion_params)

    if @cancion.save
      render json: @cancion, status: :created, location: @cancion
    else
      render json: @cancion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cancions/1
  def update
    if @cancion.update(cancion_params)
      render json: @cancion
    else
      render json: @cancion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cancions/1
  def destroy
    @cancion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancion
      @cancion = Cancion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cancion_params
      params.require(:cancion).permit(:nombre, :artista, :genero)
    end
end
