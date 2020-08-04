class LessonsController < ApplicationController

  # load_and_authorize_resource

  def index
    @all_lessons = []

    if current_user.student?
      @all_lessons = Lesson.where(student_id: current_user.student.id).order(:date, :time).reverse_order
    elsif current_user.instructor?
      @all_lessons = Lesson.where(instructor_id: current_user.instructor.id).order(:date, :time).reverse_order
    elsif current_user.admin?
      @all_lessons = Lesson.order(:date, :time).reverse_order
    end
    @all_lessons
    # authorize! :read, @all_lessons, :message => "You do not have authorization to view that content."

  end

  def new
    @lesson = Lesson.new
    @instructors = get_all_instructors()
    @students = get_all_students()
  end

  def edit
    @lesson = Lesson.find_by(id: params[:id])
    @instructors = get_all_instructors()
    @students = get_all_students()
  end

  def show
    @lesson = Lesson.find_by(id: params[:id])
    # render "shared/slideout", lesson: lesson

  end

  # def show_modal
  #   @lesson = params[:lesson]
  #   # respond_to do |format|
  #   #   format.js
  #   # end
  #   render "shared/slideout", lesson: @lesson
  # end

  def create
    @lesson = Lesson.new

    lesson_params = params[:lesson]

    @lesson.student_id = lesson_params[:student_id].to_i
    @lesson.instructor_id = lesson_params[:instructor_id].to_i
    @lesson.date = lesson_params[:date]
    @lesson.time = lesson_params[:time]
    @lesson.duration = lesson_params[:duration].to_i
    @lesson.cancelled = false

    if @lesson.save
      redirect_to lessons_path
    else
      redirect_to student_path(current_user.student.id)
    end

  end

  def update
    id = params[:id]
    @lesson = Lesson.find_by(id: id)

    @lesson.date = params[:date]
    @lesson.time = params[:time]
    @lesson.instructor_id = params[:instructor_id].to_i
    @lesson.duration = params[:duration].to_i
    @lesson.cancelled = params[:cancelled]

    if @lesson.save
      redirect_to lessons_path
    else
      render :edit
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    id = params[:id]
    @lesson = Lesson.find_by(id: id)
    @lesson.destroy
    redirect_to student_path(current_user.student.id)

  end

  private

  def get_all_instructors
    @instructors = Instructor.all
    @instructors.map do |ins|
      ins[:first_name] = "#{ins[:first_name]} #{ins[:last_name]}"
    end
    @instructors
  end

  def get_all_students
    @students = Student.all
    @students.map do |stu|
      stu[:first_name] = "#{stu[:first_name]} #{stu[:last_name]}"
    end
    @students
  end

end
