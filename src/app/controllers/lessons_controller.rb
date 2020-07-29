class LessonsController < ApplicationController

  def index
    @all_lessons = []
    @all_lessons = Lesson.all

    # BELOW IS WORKING JUST LOOKING AT ALL LESSONS FOR DEV REASONS
    # if current_user.student?
    #   @all_lessons = Lesson.where(student_id: current_user.student.id)
    # else
    #   @all_lessons = Lesson.where(instructor_id: current_user.instructor.id)
    # end
  end

  def new
    @lesson = Lesson.new
  end

  def edit
  end

  def show
  end

  def create
    @lesson = Lesson.new()

    lesson_params = params[:lesson]

    @lesson.student_id = lesson_params[:student_id].to_i
    @lesson.instructor_id = lesson_params[:instructor_id].to_i
    @lesson.date = lesson_params[:date]
    @lesson.time = format_time(lesson_params[:time])
    @lesson.duration = lesson_params[:duration].to_i
    @lesson.transmission = lesson_params[:transmission].to_i
    @lesson.cancelled = false
    @lesson.status = 0

    if @lesson.save
      render :index
    else
      render :new
    end

  end

  def update
    new_lesson_details = params[:lesson]
    id = new_lesson_details[:id]
    lesson = Lesson.find_by(id: id)
    lesson.date = new_lesson_details[:date]
    lesson.time = new_lesson_details[:time]
    lesson.instructor = new_lesson_details[:instructor]
    lesson.duration = new_lesson_details[:duration]
    lesson.cancelled = new_lesson_details[:cancelled]

    if lesson.update
      redirect_to lessons_path
    end
  end

  private
    def format_time(time)
      puts "ooooooooooooooooooooooooooooooo"
      puts time
      time
    end

end
