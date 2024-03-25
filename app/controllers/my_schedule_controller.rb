class MyScheduleController < ApplicationController
  def index
    @events = current_user.involved_events
  end
end
