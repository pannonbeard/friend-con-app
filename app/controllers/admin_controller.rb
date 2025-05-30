class AdminController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @gaming_year = GamingYear.where(active: true).last
    @user_count = @gaming_year.users.count
    @virtual_user_count = @gaming_year.users.where(attending_virtually: true).count
    @attending_users_count = User.all.includes(seats: [:event]).where(event: { gaming_year_id: @gaming_year.id }).filter{  |user| user.seats.count.positive? }.count

    @grouped_games = Event.where(gaming_year: @gaming_year).group(:game_type).count
  end
end
