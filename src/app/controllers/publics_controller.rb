class PublicsController < ApplicationController
  def index
  end

  def student_signup
    @details = "Student"
    render 'signup'
  end

  def instructor_signup
    @details = "Instructor"
    render 'signup'
  end 
end
