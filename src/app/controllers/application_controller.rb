class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password)}
    end

    def after_sign_up_path_for(current_user)
      if current_user.role == 'student'
        new_student_path
      else
        new_instructor_path
      end
    end

    def after_sign_out_path_for(resource)
      home_path
    end
end
