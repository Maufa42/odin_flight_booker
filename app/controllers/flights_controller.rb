class FlightsController < ApplicationController

  def index
    
    @flights = Flight.all
    # debugger
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.build(flight_params)
    
    if @flight.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def flight_params
    params.require(:flight).permit(:arrival_id,:departure_id,:arrival_time,:departure_time)
  end

end
