class WavesController < ApplicationController

  def index
    session[:datetime] = params[:wave][:datetime]
    @waves = Wave.near(params[:wave][:departure_address], 10)
                               .where('waves.sport_type = ?', params[:wave][:sport_type])
                               .select { |p| available_for(p, session[:date]) }
    store_search_infos_in_session(wave_params)
  end

  def create
  end

  def show
  end

  def update
  end

  private

  def store_search_infos_in_session(search_infos)
    session[:searched] = { departure_address: search_infos[:departure_address],
              arrival_address: search_infos[:arrival_address],
              sport_type: search_infos[:sport_type]
    }
  end

  def set_wave
    @wave = Wave.find(params[:id])
  end

  def wave_params
    params.require(:wave).permit(:car_id, :date, :departure_time, :departure_address, :arrival_address, :sport_type)
  end


end
