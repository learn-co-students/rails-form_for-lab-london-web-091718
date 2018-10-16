class StudentsController < ApplicationController
 before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def new
    @student = Student.new()
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  def delete
    @student.destroy
    redirect_to students_paths
  end

  private

  def student_params
    params[:student]
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
