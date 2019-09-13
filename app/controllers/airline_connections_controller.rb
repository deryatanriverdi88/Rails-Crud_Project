class AirlineConnectionsController < ApplicationController


  def index
    @airline_connections = AirlineConnection.all
  end

  def show

    @airline_connection = AirlineConnection.find(params[:id])
    @booking = Booking.new
  end

  def choose
  @airline_connection = AirlineConnection.find(params[:chosen_airline_connection])
  redirect_to @airline_connection
  end

end


# def choose
# @airline_connection = AirlineConnection.find(params[:chosen_airline_connection])
# redirect_to new_booking_path(connection: @airline_connection.connection_id)
# end
