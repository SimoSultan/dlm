class InstructorsController < ApplicationController
  before_action :authenticate_user!
  # before_action :admin_only, only: [:new, :index, :create]
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_role
  load_and_authorize_resource

  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = Instructor.order(:created_at).reverse_order
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
  end

  # GET /instructors/new
  def new
    @instructor = Instructor.new
  end

  # GET /instructors/1/edit
  def edit
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.user = current_user

    if @instructor.save
      redirect_to edit_instructor_path
    else
      render :new
    end
  end

  # PATCH/PUT /instructors/1
  # PATCH/PUT /instructors/1.json
  def update
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.html { redirect_to @instructor, notice: 'Instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor.destroy
    respond_to do |format|
      format.html { redirect_to instructors_url, notice: 'Instructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instructor_params
      params[:instructor][:first_name].capitalize!
      params[:instructor][:last_name].capitalize!
      params[:instructor][:phone] = format_phone_number(params[:instructor][:phone])
      params.require(:instructor).permit(:first_name, :last_name, :address, :phone, :dob, :transmission, :gender, :avatar)
    end


    # def authenticate_role
    #   # skip if person is admin
    #   unless current_user.admin?
    #     # check if they are instructor
    #     if current_user.instructor?
    #     # skip if params id matches the current person's instructor id
    #       if @instructor.id == current_user.instructor.id
    #         # otherwise redirect them back to their own show page
    #         redirect_to instructor_path(current_user.instructor.id), :alert => "Access denied."
    #       end
    #     # check if they are instructor
    #     elsif current_user.student?
    #       # skip if params id matches the current person's student id
    #       unless params[:id] == current_user.student.id
    #         # otherwise redirect them back to their own show page
    #         redirect_to student_path(current_user.student.id), :alert => "Access denied."
    #       end
    #     end
    #   end
    # end

    # def admin_only
    #   # skip if person is admin
    #   unless current_user.admin?
    #     puts "-------"
    #     puts "here"
    #     # check if they are instructor
    #     if current_user.instructor?
    #       # otherwise redirect them back to their own show page
    #       redirect_to instructor_path(current_user.instructor.id), :alert => "Access denied."
    #     # check if they are instructor
    #     elsif current_user.student?
    #       # otherwise redirect them back to their own show page
    #       redirect_to student_path(current_user.student.id), :alert => "Access denied."
    #     end
    #   end
    # end


end
