class SolerillasController < ApplicationController
  before_action :set_solerilla, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solerillas = Solerilla.all
    respond_with(@solerillas)
  end

  def show
    respond_with(@solerilla)
  end

  def new
    @solerilla = Solerilla.new
    respond_with(@solerilla)
  end

  def edit
  end

  def create
    @solerilla = Solerilla.new(solerilla_params)
    @solerilla.save
    respond_with(@solerilla)
  end

  def update
    @solerilla.update(solerilla_params)
    respond_with(@solerilla)
  end

  def destroy
    @solerilla.destroy
    respond_with(@solerilla)
  end

  private
    def set_solerilla
      @solerilla = Solerilla.find(params[:id])
    end

    def solerilla_params
      params.require(:solerilla).permit(:denominacion, :largo_l_mm, :altura_h_mm, :base_b_mm, :resistencia_flexion_kn, :peso_referencial_kg)
    end
end
