class SaborsController < ApplicationController
  before_action :set_sabor, only: [:show, :update, :destroy]

  # GET /sabors
  def index
    @sabors = Sabor.all

    render json: @sabors
  end

  # GET /sabors/1
  def show
    render json: @sabor
  end

  # POST /sabors
  def create
    @sabor = Sabor.new(sabor_params)

    if @sabor.save
      render json: @sabor, status: :created, location: @sabor
    else
      render json: @sabor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sabors/1
  def update
    if @sabor.update(sabor_params)
      render json: @sabor
    else
      render json: @sabor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sabors/1
  def destroy
    @sabor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sabor
      @sabor = Sabor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sabor_params
      params.require(:sabor).permit(:nome, :preco_adicional, :ingredientes)
    end
end
