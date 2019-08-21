class BookingsController < ApplicationController

  before_action :set_event

  # def new
  #   @booking = Booking.new
  #   authorize @booking
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.event = @event
    authorize @booking
    if @booking.save
      redirect_to profile_path
    else
      redirect_to profile_path
      # change to render
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def booking_params
    params.require(:booking).permit(:event_id, :user_id, :number_of_tickets, :booking_price)
  end
end
