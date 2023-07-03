class FlightController < ApplicationController
  def index
  end
  def create
  # Perform the booking logic
  
  flash[:success] = 'Your booking was successful!'
  redirect_to root_path
end
end
