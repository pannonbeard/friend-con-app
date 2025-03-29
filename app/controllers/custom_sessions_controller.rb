class CustomSessionsController < Devise::SessionsController
  ## for rails 5+, use before_action, after_action
  before_action :before_login, :only => :create
  after_action :after_login, :only => :create

  def before_login
  end

  def after_login
    current_gaming_year = GamingYear.find_by(active: true)
    return if current_user.signed_up_for_year?(current_gaming_year)

    current_user.gaming_years << current_gaming_year
  end
end