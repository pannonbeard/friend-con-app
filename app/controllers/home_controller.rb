class HomeController < ApplicationController
  allow_unauthenticated_access
  
  def index
    @active_con = GamingYear.where(active: true).first
    @notices = Notice.order(created_at: :desc).limit(10)
    @events = current_user ? current_user.involved_events : []
  end
end
