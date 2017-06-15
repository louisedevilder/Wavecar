class CowavesController < ApplicationController

  def index
  end

  def create
  end

  def show
  end

  def update
  end

  private

  def set_cowave
    @cowave = Cowave.find(params[:id])
  end

  def cowave_params
    params.require(:cowave).permit(:name, :description)
  end

end
