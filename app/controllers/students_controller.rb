class StudentsController < ApplicationController

def index
  @students=Student.all
end

def new
  @student=Student.new
end

def show
  @student = Student.find_by(id: params[:id])
end

def create
  @student = Student.new
  @student.last_name=params[:student][:last_name]
  @student.first_name=params[:student][:first_name]
  @student.save
  redirect_to student_path(@student)
end

def update
  @student=Student.find_by(id: params[:id])
  @student.update(params.require(:student))
  redirect_to student_path(@student)
end

def edit
  @student=Student.find_by(id: params[:id])
end


end
