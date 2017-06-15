class WavesController < ApplicationController

  def index
  end

  def create
  end

  def show
  end

  def update
  end

  private

  def set_wave
    @wave = Wave.find(params[:id])
  end

  def wave_params
    params.require(:wave).permit(:car_id, :date, :departure_time, :departure_address, :arrival_address, :sport_type)
  end


end
