class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

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

  def user_details_are_empty
    if current_user.admin?
      return true if any_attributes_are_empty(current_user.admin)
    elsif current_user.instructor?
      return true if any_attributes_are_empty(current_user.instructor)
    elsif current_user.student?
      return true if any_attributes_are_empty(current_user.student)
    end
  end

  def any_attributes_are_empty(person)
      person.attributes.each do |attr_name, attr_val|
        puts "name = #{attr_name}"
        puts "value = #{attr_val}"
        puts "empty" if attr_val == ""
        return true if attr_val == ""
      end
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
