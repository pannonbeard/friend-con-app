require 'securerandom'

class GamingYearsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @gaming_years = GamingYear.all
  end

  def new
    @gaming_year = GamingYear.new
  end

  def create
    @gaming_year = GamingYear.new(gaming_year_params)
    @gaming_year.signup_key = SecureRandom.uuid
    @gaming_year.save

    redirect_to gaming_years_path, notice: 'Gaming Year Added'
  end

  def edit
    @gaming_year = GamingYear.find(params[:id])
  end

  def update
    @gaming_year = GamingYear.find(params[:id])
    @gaming_year.update(gaming_year_params)

    redirect_to gaming_years_path, notice: 'Gaming Year Updated'
  end

  def destroy
    @gaming_year = GamingYear.find(params[:id])
    @gaming_year.destroy

    redirect_to gaming_years_path, notice: 'Gaming Year Removed'
  end

  private

  def gaming_year_params
    params.require(:gaming_year).permit(:year, :active, :seating_open)
  end
end

