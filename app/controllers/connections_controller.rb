class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
  end

  def show
    @connection = Connection.find(params[:id])
  end

  def choose
  @connection = Connection.find(params[:chosen_connection])
  redirect_to airline_connection_url(connection: @connection)
  end
end
