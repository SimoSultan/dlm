class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!

  def format_phone_number(number)
    x = number.to_s.delete('^0-9')
    return x
  end

  def format_dob(dob_day, dob_month, dob_year)
    dob = "#{dob_day}-#{dob_month}-#{dob_year}"

    return dob
  end





  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar)}
    end


    def after_sign_out_path_for(resource)
      home_path
    end
end
