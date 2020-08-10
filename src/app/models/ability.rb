class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      
        
      if user.admin?
        # admin can create, read, update and delete all things
        can :manage, :all
      elsif user.instructor?
        # instructor can read their own details
        # instructor can read their own associated lessons
        # instructor can update and delete their own user profile
        # are blocked from reading any student and admin details
        can :read, Instructor, user_id: user.id 
        can :read, Lesson, instructor_id: user.instructor.id 
        can :manage, User, user_id: user.id 
        cannot :read, Student
        cannot :read, Admin 
      elsif user.student?
        # student can read their own details
        # student can read their own associated lessons
        # student can update and delete their own user profile
        # are blocked from reading any instructor and admin details
        can :read, Student, user_id: user.id 
        can :read, Lesson, student_id: user.student.id      
        can :manage, User, user_id: user.id 
        cannot :read, Instructor 
        cannot :read, Admin 
      end
        

    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
