class EventsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped
  skip_after_action :verify_authorized, only: [:show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.geocoded
    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { event: event} )
        # image_url: helpers.asset_url('')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      params[:event][:photos][:name]&.each do |url|
        @event.photos.create(name: url)
      end
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.update(event_params)
    if @event.update(event_params)
      params[:event][:photos][:name]&.each do |url|
        @event.photos.create(name: url)
      end
      # need to redirect to host show page
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    if @event.destroy
      # need to redirect to host show page
      rediect_to events_path
    else
      # need to render to host show page
      render event_path(@event)
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :address, :description, :date, :venue_type, :movie, :ticket_price, :capacity)
  end
end
