class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]


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
      render :show
    else
      render :new
    end
    # respond_to do |format|
    #   if @instructor.save
    #     format.html { redirect_to @instructor, notice: 'Instructor was successfully created.' }
    #     format.json { render :show, status: :created, location: @instructor }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @instructor.errors, status: :unprocessable_entity }
    #   end
    # end
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
      params.require(:instructor).permit(:first_name, :last_name, :address, :phone, :dob, :transmission, :gender, :avatar)
    end
end
