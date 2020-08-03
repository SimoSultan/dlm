class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]
  
  # GET /students
  # GET /students.json
  def index
    @students = Student.order(:created_at).reverse_order
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @lesson = Lesson.new
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create

    @student = Student.new(student_params)
    @student.user = current_user

    if @student.save
      redirect_to student_path(current_user.student.id)
    else
      render :new
    end

  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    # student_params[:phone] = format_phone(student_params[:phone])
    # puts "student_params[:phone]"
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
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
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params[:student][:first_name].capitalize!
      params[:student][:last_name].capitalize!
      params[:student][:phone] = format_phone_number(params[:student][:phone])
      # params[:student][:dob] = format_dob(params[:student][:dob_day], params[:student][:dob_month], params[:student][:dob_year])
      
      # params.require(:student).permit(:first_name, :last_name, :address, :phone, :dob, :dob_day, :dob_month, :dob_year, :transmission, :avatar)
      params.require(:student).permit(:first_name, :last_name, :address, :phone, :dob, :transmission, :avatar)
    end

end
