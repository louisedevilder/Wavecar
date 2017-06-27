class WavesController < ApplicationController

  def index
    if params[:search].present?
    @waves = Wave.near(params[:wave][:departure_address], 10)
                   .where('waves.sport = ?', params[:wave][:sport])
    @sports = Sport.pluck(:name).uniq
    else
      @waves = Wave.all
    end
  end

  def new
    @wave = Wave.new
    @sport = Sport.all.order[:name]
  end

  def create
  end

  def show
  end

  def update
  end

  private

  # def store_search_infos_in_session(search_infos)
  #   session[:searched] = { departure_address: search_infos[:departure_address],
  #             arrival_address: search_infos[:arrival_address],
  #             sport: search_infos[:sport]
  #   }
  # end

  def set_wave
    @wave = Wave.find(params[:id])
  end

  def wave_params
    params.require(:wave).permit(:car_id, :sport_id, :date, :departure_time, :departure_address, :arrival_address)
  end
end
