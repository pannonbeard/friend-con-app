class MyScheduleController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @events = current_user.involved_events
  end
end
