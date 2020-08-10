class StudentsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.order(:created_at).reverse_order.includes([:user])
    authorize! :read, @students, :message => "You do not have authorization to view that content."
  end

  # GET /students/1
  # GET /students/1.json
  def show
    # create an empty object for the new lesson form
    # get all instructors names and ids for the drop down
    # get the students upcoming and previous lessons for the jumbotron on the page
    @student = Student.find_by(id: params[:id])
    @lesson = Lesson.new
    @instructors = get_all_instructors()
    @upcoming = get_specific_lesson(@student, 'upcoming')[0]
    @previous = get_specific_lesson(@student, 'previous')[0]

  end

  # GET /students/new
  def new
    @student = Student.new
    authorize! :read, @student, :message => "You do not have authorization to view that content."
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    # link the current user to the student when they finish filling in all their details
    @student = Student.new(student_params)
    @student.user = current_user
    authorize! :read, @student, :message => "You do not have authorization to view that content."

    if @student.save
      redirect_to edit_student_path(current_user.student.id), :notice => "Thanks for signup up"
    else
      render :new, :alert => "Something went wrong, try again"
    end

  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
      authorize! :read, @student, :message => "You do not have authorization to view that content."
    end

    # Only allow a list of trusted parameters through.
    def student_params
      # capitalise the first and last name on update
      # format the phone number by removing and non numeric characters from the string
      params[:student][:first_name].capitalize!
      params[:student][:last_name].capitalize!
      params[:student][:phone] = format_phone_number(params[:student][:phone])
      
      params.require(:student).permit(:first_name, :last_name, :address, :phone, :dob, :transmission, :avatar)
    end

    def get_all_instructors
      # get only the instructors, ids, and first and last name to display in the dropdown for booking a lesson
      @instructors = Instructor.select("first_name", "last_name", "id").all
      @instructors.map do |ins|
        ins[:first_name] = "#{ins[:first_name]} #{ins[:last_name]}"
      end
      @instructors
    end
end
