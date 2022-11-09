class DessinsController < ApplicationController
  before_action :set_dessin, only: [:show, :edit, :update, :destroy]

  def index
    @dessins = Dessin.all
  end

  def show
    # @dessin = Dessin.find(params[:id])
  end

  def new
    @dessin = Dessin.new
  end

  def create
    @dessin = Dessin.new(dessin_params)
    @dessin.save
    redirect_to dessins_path(@dessin)
  end

  def edit
    # @dessin = Dessin.find(params[:id])
  end

  def update
    # @dessin = Dessin.find(params[:id])
    @dessin.update(dessin_params)
    redirect_to dessin_path(@dessin)
  end

  def destroy
    # @dessin = Dessin.find(params[:id])
    @dessin.destroy
    redirect_to dessins_path, status: :see_other
  end

  private

  def set_dessin
    @dessin = Dessin.find(params[:id])
  end

  def dessin_params
    params.require(:dessin).permit(:image, :name, :description)
  end
end
