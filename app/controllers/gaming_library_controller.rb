class GamingLibraryController < ApplicationController
  def index
    @gaming_year = GamingYear.where(active: true).first
    @gaming_library = @gaming_year.gaming_year_library
    @q = @gaming_library.library_games.ransack(params[:q])

    @games = @q.result(distinct: true).order(:title)
  end
end
