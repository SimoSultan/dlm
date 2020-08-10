class PublicsController < ApplicationController
  # skip authentication of users on home page
  before_action :authenticate_user!, except: [:home]
  
  def home
  end

end
