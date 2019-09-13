class LoginController < ApplicationController

  def new

  end

  def create
    traveller = Traveller.find_by(username: params[:username])
    if traveller && traveller.authenticate(params[:password])
      session[:traveller_id] = traveller.id
      redirect_to traveller_path(traveller)
    else
      flash[:errors] = ["Ya done goofed"]
      redirect_to new_login_path
    end
  end

  def destroy
    session[:traveller_id] = nil
    flash[:message] = ["You've been logged out"]
   redirect_to travellers_path
  end



end
