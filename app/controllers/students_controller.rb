class StudentsController < ApplicationController
  
  # GET /students
  def index
    @students = Student.includes(:house).order(:name)
    #removes n+1 problem with includes
  end
  #immediately tries to load associated view

  # GET /students/:id
  def show
    @student = Student.includes(:house).find(params[:id])
  end
end
