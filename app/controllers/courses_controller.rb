class CoursesController < ApplicationController
  before_action :set_course, only:[:show, :add, :delete]

  def index
    @courses = Course.all
    session[:cart] = session[:cart] ? session[:cart] : [1,2,3]
  end
  
  def show
  end
  
  def add
    session[:cart] << @course
  end
  
  def delete

  end

  def cart

  end

  private
  def set_course
    @course = Course.find_by(name: params[:name])
  end
end
