class HomeController < ApplicationController
  def index
    @notices = Notice.order(created_at: :desc).limit(10)
    @events = current_user ? current_user.involved_events : []
  end
end
