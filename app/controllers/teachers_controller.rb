class TeachersController < ApplicationController
  def index
    @houses = House.includes(:teachers).all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end
