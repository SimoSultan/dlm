class LessonsController < ApplicationController

  def index()
    # @all_lessons = []
    @all_lessons = Lesson.order(:date, :time).reverse_order

    # BELOW IS WORKING JUST LOOKING AT ALL LESSONS FOR DEV REASONS
    # if current_user.student?
      @all_lessons = Lesson.where(student_id: current_user.student.id).order(:date, :time).reverse_order
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
    @lesson = Lesson.find_by(id: params[:id])
  end

  def create
    @lesson = Lesson.new()

    lesson_params = params[:lesson]

    @lesson.student_id = lesson_params[:student_id].to_i
    @lesson.instructor_id = lesson_params[:instructor_id].to_i
    @lesson.date = lesson_params[:date]
    @lesson.time = lesson_params[:time]
    @lesson.duration = lesson_params[:duration].to_i
    # @lesson.transmission = lesson_params[:transmission].to_i
    @lesson.cancelled = false
    # @lesson.status = 0

    if @lesson.save
      render :index
    else
      render :new
    end

  end

  def update
    id = params[:id]
    lesson = Lesson.find_by(id: id)

    lesson.date = params[:date]
    lesson.time = params[:time]
    lesson.instructor_id = params[:instructor_id].to_i
    lesson.duration = params[:duration].to_i
    lesson.cancelled = params[:cancelled]

    if lesson.save
      render :index
    else
      render :edit
    end
  end

  private


end
