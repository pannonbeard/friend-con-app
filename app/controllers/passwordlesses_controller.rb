class PasswordlessesController < ApplicationController
  allow_unauthenticated_access only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user
      user.one_time_logins.destroy_all

      login = user.one_time_logins.create(token: SecureRandom.hex(16), uuid: SecureRandom.uuid, expires_at: Time.zone.now + 1.hour)

      # Send email with link
      PasswordlessMailer.send_link(login).deliver_now

      redirect_to new_session_path, notice: 'You should receive an email shortly with your login link.'
    else
      redirect_to new_session_path, notice: 'No user with that email found.'
    end 
  end
end
