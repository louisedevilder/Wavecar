class CarsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:cowave_id, :place, :type, :brand)
  end

end
