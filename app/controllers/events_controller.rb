class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    if @event.update(event_params)
      # need to redirect to host show page
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
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
    params.require(:event).permit(:name, :address, :description, :date, :venue_type, :movie, :ticket_price, :capacity, :photo)
  end
end
