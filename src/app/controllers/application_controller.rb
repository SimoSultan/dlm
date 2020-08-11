class ApplicationController < ActionController::Base

  require 'date'

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # redirect to appropriate users show page and display the error that they cannot access that content
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
    # delete any non numerics values from the string
    x = number.to_s.delete('^0-9')
    return x
  end

  def format_dob(dob_day, dob_month, dob_year)
    # join the dob strings together again
    dob = "#{dob_day}-#{dob_month}-#{dob_year}"
    return dob
  end

  def user_details_are_empty
    # check if any attributes on the user's profile are absent
    # if they any are, they will not be able to book any lessons
    if current_user.admin?
      return true if any_attributes_are_empty(current_user.admin)
    elsif current_user.instructor?
      return true if any_attributes_are_empty(current_user.instructor)
    elsif current_user.student?
      return true if any_attributes_are_empty(current_user.student)
    end
  end

  def any_attributes_are_empty(person)
    # this looks through the persons' details to see if any attributes are empty
    # this can happen when someone signs up, and when they get redirected to their edit page and they click out of that page and start using the app
    person.attributes.each do |attr_name, attr_val|
      return true if attr_val == ""
    end
    return false
  end

  def get_specific_lesson(user, spot)
    # get current time and day
    # get all lessons from current user
    # loop through those lessons and check the lesson date against today's date
    # if we want the upcoming lesson, return the upcoming lessons array of 1 element, otherwise return previous lesson
    today = Time.now
    year = today.year
    month = today.month
    day = today.day

    user_lessons = user.lessons
    upcoming_lessons = []
    previous_lessons = []

    user_lessons.each do |lesson|
      # if the lesson date is less than today, then add the lesson to previous lessons
      # otherwise add to upcoming lessons
      lesson.date < today ? previous_lessons << lesson : upcoming_lessons << lesson
    end


    if spot == "upcoming"
      return upcoming_lessons.min(1) { |a| a.date <=> today }
    else
      return previous_lessons.min(1) { |a| a.date <=> today }
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:role, :email, :password, :password_confirmation)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password)}
    end

    # after signout, redirect users to home page
    def after_sign_out_path_for(resource)
      home_path
    end
end
