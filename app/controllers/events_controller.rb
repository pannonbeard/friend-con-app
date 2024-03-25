class EventsController < ApplicationController
  def index
    @gaming_year = GamingYear.where(active: true).first
    @q = @gaming_year.events.includes(:user, :seats, :gaming_year).ransack(params[:q])
    @events =  Kaminari.paginate_array(@q.result(distinct: true).sort_by{ |ev| [ev.day_of_week, ev.start_of_game, ev.title]}).page(params[:page]).per(10)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @gaming_year = GamingYear.where(active: true).first
    @event = Event.new
    @event.gaming_year = @gaming_year
    @event.user = current_user
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      EventMailer.event_added(@event).deliver_now
      redirect_to events_path, notice: 'Event Added'
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path, notice: 'Event Updated'
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path, notice: 'Event Removed'
  end

  def duplicate
    @old_event = Event.find(params[:id])
    @event = @old_event.dup

    @event.table = ''
    
    render :new
  end

  private

  def event_params
    params.require(:event).permit(
      :title, 
      :description, 
      :game_type, 
      :system_name, 
      :seats_available, 
      :day, 
      :start_time,
      :event_length,
      :user_id, 
      :gaming_year_id, 
      :supplies_needed,
      :gm_needs, 
      :virtual, 
      :table, willing_slots: [])
  end


end
