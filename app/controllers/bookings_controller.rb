class BookingsController < ApplicationController

  def index

  end

  def new
    @booking = Booking.new
    @airline_connection = AirlineConnection.new
  end

  def create
    @traveller = session[:traveller_id]
    @booking = Booking.create(booking_params)
    redirect_to traveller_path(Traveller.find(@booking.traveller_id))
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @traveller = session[:traveller_id]
    @booking= Booking.find(params[:id])
    @booking.destroy
    redirect_to traveller_path(@traveller)
  end


  private
  def booking_params
    params.require(:booking).permit(:date, :traveller_id, :connection_id)
  end



end
