class CowavesController < ApplicationController
    before_action :set_cowave, only: [:show :update]


  def index
    @cowaves = Cowave.all
  end

  def new
    @cowave = Cowave.new
  end

  def create
    @cowave = current_user.cowaves.new(cowave_params)
     if @cowave.save
      redirect_to #TODO
    else
      render :new
    end
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
