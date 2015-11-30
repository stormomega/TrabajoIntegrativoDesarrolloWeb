class SolerasController < ApplicationController
  before_action :set_solera, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @soleras = Solera.all
    respond_with(@soleras)
  end

  def show
    respond_with(@solera)
  end

  def new
    @solera = Solera.new
    respond_with(@solera)
  end

  def edit
  end

  def create
    @solera = Solera.new(solera_params)
    @solera.save
    respond_with(@solera)
  end

  def update
    @solera.update(solera_params)
    respond_with(@solera)
  end

  def destroy
    @solera.destroy
    respond_with(@solera)
  end

  private
    def set_solera
      @solera = Solera.find(params[:id])
    end

    def solera_params
      params.require(:solera).permit(:denominacion, :altura_h_mm, :base_b_mm, :ancho_superior_c_mm, :rebaje_triangular_e_mm, :rebaje_triangular_d_mm, :largo_a_mm, :resistencia_flexion_kn, :peso_referencial_kg)
    end
end
