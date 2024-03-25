class NoticesController < ApplicationController
  load_and_authorize_resource

  def index
    @notices = Notice.all.order(created_at: :desc)
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.save

    NotificationMailer.notice_posted(@notice).deliver_now

    redirect_to notices_path, notice: 'Notice Created'
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    @notice.update(notice_params)
    redirect_to notices_path, notice: 'Notice Updated'
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to notices_path, notice: 'Notice Removed'
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :description)
  end
end
