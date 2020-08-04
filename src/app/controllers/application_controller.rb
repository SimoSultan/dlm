class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  rescue_from CanCan::AccessDenied do |exception|
    if current_user.admin?
      redirect_to admin_path(current_user.admin.id), :alert => exception.message
    elsif current_user.instructor?
      redirect_to instructor_path(current_user.instructor.id), :alert => exception.message
    elsif current_user.student?
      redirect_to student_path(current_user.student.id), :alert => exception.message
    end
  end
  
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
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:update) { |u| u.permit(:avatar, :email, :password, :password_confirmation, :current_password)}
    end


    def after_sign_out_path_for(resource)
      home_path
    end
end
