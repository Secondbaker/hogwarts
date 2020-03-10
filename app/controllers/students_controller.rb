class StudentsController < ApplicationController
  
  # GET /students
  def index
    @students = Student.order(:name)
  end
  #immediately tries to load associated view

  # GET /students/:id
  def show

  end
end
