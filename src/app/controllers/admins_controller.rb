class AdminsController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_role
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params[:admin][:first_name].capitalize!
      params[:admin][:last_name].capitalize!
      params.require(:admin).permit(:first_name, :last_name, :avatar)
    end

    # def authenticate_role
    #   unless current_user.admin?
    #     if current_user.instructor?
    #       unless params[:id] == current_user.instructor.id
    #         redirect_to instructor_path(current_user.instructor.id), :alert => "Access denied."
    #       end
    #     elsif current_user.student?
    #       unless params[:id] == current_user.student.id
    #         redirect_to student_path(current_user.student.id), :alert => "Access denied."
    #       end
    #     end
    #   end
    # end
end
