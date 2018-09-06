class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students = Student.all
  end

  def show

  end

  def edit
  
    !@student.active ? "active" : "inactive"
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
