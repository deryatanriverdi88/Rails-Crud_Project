class ApplicationController < ActionController::Base
  before_action :set_up_voting

private

  def set_up_voting
      # session["remaining_votes"] ||= 5
      @notification = flash["notification"]
      @errors = flash["errors"]
      # byebug
    if (session[:traveller_id])
      @logged_in_traveller = Traveller.find(session[:traveller_id])

    end
  end
end
