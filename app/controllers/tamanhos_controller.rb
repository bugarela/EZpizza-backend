class TamanhosController < ApplicationController
  before_action :set_tamanho, only: [:show, :update, :destroy]

  # GET /tamanhos
  def index
    @tamanhos = Tamanho.all

    render json: @tamanhos
  end

  # GET /tamanhos/1
  def show
    render json: @tamanho
  end

  # POST /tamanhos
  def create
    @tamanho = Tamanho.new(tamanho_params)

    if @tamanho.save
      render json: @tamanho, status: :created, location: @tamanho
    else
      render json: @tamanho.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tamanhos/1
  def update
    if @tamanho.update(tamanho_params)
      render json: @tamanho
    else
      render json: @tamanho.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tamanhos/1
  def destroy
    @tamanho.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamanho
      @tamanho = Tamanho.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tamanho_params
      params.require(:tamanho).permit(:nome, :preco, :diametro)
    end
end
