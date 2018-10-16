class SchoolClassesController < ApplicationController

  before_action :finder, only: [:show, :edit, :update, :destroy]

  def index
    @schoolclasses = SchoolClass.all
  end

  def show
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(params_school_class)
    redirect_to school_class_path(@schoolclass)
  end

  def edit
  end

  def update
    @schoolclass.update(params_school_class)
    redirect_to school_class_path(@schoolclass)
  end

  def destroy
    @schoolclass.delete
    redirect_to school_classes_path
  end

  private

  def finder
    @schoolclass = SchoolClass.find(params[:id])
  end

  def params_school_class
    params.require(:school_class).permit(:title, :room_number)
    # aka "strong params"
  end

end
