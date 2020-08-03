module ApplicationHelper

  def user_avatar(user, size=40)
    if user.student.avatar.attached?
      user.student.avatar
    elsif user.instructor.avatar.attached?
      user.instructor.avatar
    elsif user.admin.avatar.attached?
      user.admin.avatar
    else
      "default.png"
    end
  end



end
