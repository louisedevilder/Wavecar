class RidersController < ApplicationController

  def index
  end

  def create
  end

  def show
  end

  def update
  end

  private

  def set_rider
    @rider = Rider.find(params[:id])
  end

  def rider_params
    params.require(:rider).permit(:name, :description)
  end
end

end
