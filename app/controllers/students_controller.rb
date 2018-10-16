class StudentsController < ApplicationController

  before_action :finder, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params_student)
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(params_student)
    redirect_to student_path(@student)
  end

  def destroy
    @student.delete
    redirect_to students_path
  end

  private

  def finder
    @student = Student.find(params[:id])
  end

  def params_student
    params.require(:student).permit(:first_name, :last_name)
  end

end
