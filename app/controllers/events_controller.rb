class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped
  skip_after_action :verify_authorized, only: [:show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    @events = Event.geocoded
    search_params = params[:search]

    if search_params[:query].present?
      @events = Event.near(search_params[:query], 10)
    else
      @events = Event.geocoded
    end

    if search_params[:from].present? && search_params[:to].present?
      @events = @events.where('date >= ?', search_params[:from]).where('date <= ?', search_params[:to])
    else
      @events = Event.geocoded
    end

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { event: event })
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
      # raise
      params_photos.each do |file|
        @event.photos.create(image: file)
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
      params_photos.each do |file|
        @event.photos.create(image: file)
      end
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    if @event.destroy
      # need to redirect to host show page
      redirect_to events_path
    else
      # need to render to host show page
      render event_path(@event)
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def params_photos
    params.dig('event', 'photos', 'image') || []
  end

  def event_params
    params.require(:event).permit(:name, :address, :description, :date, :venue_type, :movie, :ticket_price, :capacity)
  end
end
      # sql_query = "events.address @@ :query"
      # @events = Event.where(sql_query, query: "%#{params[:query]}%")
