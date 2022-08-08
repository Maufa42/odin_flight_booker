class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def new
    @booking = Booking.new()
    # debugger
    @flight = Flight.find(params[:flight_id])
    @count = params[:seat].to_i
    @count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.create(booking_params)
    # debugger
    if @booking.save
        @booking.passengers.each do |pass|
          BookingMailer.book_mailer(pass).deliver_now!
          flash[:notice] =  "Bookings Successfull! "
        end
        redirect_to root_path
      else
        flash[:alert] = "Not able to Complete Booking"
        render :new
      end
  end

  def show
    @bookings = Booking.all
    # @flight = Flight.find(@booking.flight_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,passengers_attributes: [:name,:email]) 
  end

end


