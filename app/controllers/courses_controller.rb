class CoursesController < ApplicationController
  before_action :set_course, only:[:show, :add]

  def index
    @courses = Course.all
    session[:cart] = session[:cart] ? session[:cart] : []
  end
  
  def show
  end
  
  def add
    session[:cart] << @course
  end
  
  def delete
    session[:cart].delete_at(params[:name].to_i)
  end

  def cart

  end

  def clear
    session[:cart] = []
  end

  private
  def set_course
    @course = Course.find_by(name: params[:name])
  end
end
