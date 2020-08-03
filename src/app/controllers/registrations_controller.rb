class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?

      # We know that the user has been persisted to the database, so now we can create our empty profile
      puts "____________________________"
      if resource.student?
        resource.create_student!
      elsif resource.instructor?
        resource.create_instructor!
      elsif resource.admin?
        resource.create_admin!
      end
 

      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end

  end

  def edit
    super
  end

  def update
    super
  end

  # def upload_avatar
  #   @user = User.where(id: current_user.id)
  #   @user.avatar = params[:avatar]
  #   # @user.avatar = params[:user][:avatar]
  #   @user.save
  # #  current_user.avatar.attach(params[:avatar])
  # #  current_user.save
  # #  redirect_to student_path(current_user.student.id)
  # end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
    
  
end 