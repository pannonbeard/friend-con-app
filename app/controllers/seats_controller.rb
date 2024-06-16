class SeatsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @seat = Seat.new(seat_params)
    @seat.save

    redirect_to events_path
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy

    redirect_to events_path
  end

  private

  def seat_params
    params.permit(:user_id, :event_id)
  end
end