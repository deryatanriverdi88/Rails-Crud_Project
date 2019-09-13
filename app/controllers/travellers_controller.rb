class TravellersController < ApplicationController
  def index
    
  end

   def new
      @traveller = Traveller.new
   end

   def create
     @traveller = Traveller.new(traveller_params)
     if @traveller.save
       session[:traveller_id] = @traveller.id
       redirect_to @traveller
     else
       flash[:errors] = @traveller.errors.full_messages
       flash[:attributes] = @traveller.attributes
       redirect_to new_traveller_path
     end
   end

   def show
     @traveller = Traveller.where(id: params[:id]).first
    unless @logged_in_traveller && @logged_in_traveller == @traveller
      flash[:errors] = ["You don't have permission to see that page"]
      redirect_to traveller_path(@logged_in_traveller)
    end
   end

   private

   def traveller_params
     params.require(:traveller).permit(:name, :username, :password)
   end
end
