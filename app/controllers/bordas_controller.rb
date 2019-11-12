class BordasController < ApplicationController
  before_action :set_borda, only: [:show, :update, :destroy]

  # GET /bordas
  def index
    @bordas = Borda.all

    render json: @bordas
  end

  # GET /bordas/1
  def show
    render json: @borda
  end

  # POST /bordas
  def create
    @borda = Borda.new(borda_params)

    if @borda.save
      render json: @borda, status: :created, location: @borda
    else
      render json: @borda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bordas/1
  def update
    if @borda.update(borda_params)
      render json: @borda
    else
      render json: @borda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bordas/1
  def destroy
    @borda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borda
      @borda = Borda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def borda_params
      params.require(:borda).permit(:nome, :preco_adicional)
    end
end
