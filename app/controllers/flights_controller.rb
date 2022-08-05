require 'date'
class FlightsController < ApplicationController

  def index
    
    @flights = Flight.all
    # debugger
    unless params[:arrival_time].nil?
	  @available_flights = Flight.where(arrival_id: params[:arrival_id],departure_id: params[:departure_id],arrival_time: params[:arrival_time].to_date.all_day)
    # debugger
    @seat = params[:passenger_seats].to_i
    end

  end

  def allflight
    @flights = Flight.all
  end
  # def show
  #   @flight = Flight.find[params[:id]]  
  # end


  # Below Functionality is used to populate the database

  # def new
  #   @flight = Flight.new
  # end

  # def create
  #   @flight = Flight.build(flight_params)
    
  #   if @flight.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end


  private

  def flight_params
    params.require(:flight).permit(:arrival_id,:departure_id,:arrival_time,:departure_time,:seat) 
  end

end
