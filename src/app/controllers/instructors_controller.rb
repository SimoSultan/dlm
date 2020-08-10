class InstructorsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = Instructor.order(:created_at).reverse_order.includes([:user])
    authorize! :read, @instructors, :message => "You do not have authorization to view that content."
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
    @instructor = Instructor.find_by(id: params[:id])
    @upcoming = get_specific_lesson(@instructor, 'upcoming')[0]
    @previous = get_specific_lesson(@instructor, 'previous')[0]
  end

  # GET /instructors/new
  def new
    @instructor = Instructor.new
    authorize! :read, @instructor, :message => "You do not have authorization to view that content."
  end

  # GET /instructors/1/edit
  def edit
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.user = current_user
    authorize! :read, @instructor, :message => "You do not have authorization to view that content."

    if @instructor.save
      redirect_to edit_instructor_path
      # flash.now[:notice] = 'Lesson successfully updated!'
    else
      render :new
      flash.now[:alert] = 'Something went wrong and lesson was not updated.'
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
        format.html { render :edit, alert: 'Something went wrong and Instructor was not updated.' }
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
      authorize! :read, @instructor, :message => "You do not have authorization to view that content."
    end

    # Only allow a list of trusted parameters through.
    def instructor_params
      params[:instructor][:first_name].capitalize!
      params[:instructor][:last_name].capitalize!
      params[:instructor][:phone] = format_phone_number(params[:instructor][:phone])
      params.require(:instructor).permit(:first_name, :last_name, :address, :phone, :dob, :transmission, :gender, :avatar)
    end

end
