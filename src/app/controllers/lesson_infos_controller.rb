class LessonInfosController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @infos = LessonInfo.all
  end
end
