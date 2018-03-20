class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    # Customize cancan AccessDenied
    # We catch this exception, set the error message to flash, and redirect to the home page.
    redirect_to root_url, alert: exception.message
  end

end
