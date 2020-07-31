class LessonInfosController < ApplicationController
  def index
    @infos = LessonInfo.all
  end
end
