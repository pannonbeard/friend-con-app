class AdminController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @gaming_year = GamingYear.where(active: true).last
    @user_count = User.count
    @virtual_user_count = User.where(attending_virtually: true).count
    @attending_users_count = User.all.includes(:seats).filter{  |user| user.seats.count.positive? }.count

    @grouped_games = Event.group(:game_type).count
  end
end
