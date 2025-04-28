class LibraryGamesController < ApplicationController
  before_action :set_library_game, only: [:show, :edit, :update, :destroy]

  def show; end

  def new
    @library_game = LibraryGame.new
  end

  def create
    @gaming_year = GamingYear.where(active: true).first
    @library_game = LibraryGame.new(library_game_params)
    @library_game.user = current_user
    @library_game.gaming_year_library = @gaming_year.gaming_year_library

    if @library_game.save
      redirect_to gaming_library_index_path
    else
      render :new
    end
  end

  def edit;  end

  def update
    @library_game = LibraryGame.find(params[:id])
    @library_game.update(library_game_params)

    if @library_game.save
      redirect_to gaming_library_index_path
    else
      render :edit
    end
  end

  def destroy
    @library_game.destroy

    redirect_to gaming_library_index_path
  end

  private

  def library_game_params
    params.require(:library_game).permit(:title, :publisher, :player_count, :game_type, :supplies_needed, :user_id, :gaming_library_id)
  end

  def set_library_game
    @library_game = LibraryGame.find(params[:id])
  end
end
