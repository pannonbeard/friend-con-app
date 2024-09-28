class HomeController < ApplicationController
  def index
    @active_con = GamingYear.where(active: true).first
    @notices = Notice.order(created_at: :desc).limit(10)
    @events = current_user ? current_user.involved_events : []
  end
end
