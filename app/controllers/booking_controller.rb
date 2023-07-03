class BookingController < ApplicationController

	def index	
       @booking = Booking.find(params[:id])
       if @booking.present?
	      render json: {booking: BookingSerializer.new(@booking),class_type: @booking.class_type,travellers: @booking.travellers}
	   else
	     render :new, status: :unprocessable_entity
	   end
	end

	def create
       @booking = Booking.new(booking_params)
       if @booking.save
	     render json: {booking: BookingSerializer.new(@booking)}
	   else
	     render :new, status: :unprocessable_entity
	   end
	end

	def booking_params
       params.permit(:trip,:from,:to,:depart,:return)
	end
end
