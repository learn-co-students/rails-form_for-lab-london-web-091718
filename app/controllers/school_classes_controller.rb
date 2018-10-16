class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]


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
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params_school_class)
    redirect_to school_class_path(@schoolclass)
  end

  def destroy
    @schoolclass.destroy
    redirect_to school_classes_path
  end

  private

  def set_school_class
    @schoolclass = SchoolClass.find(params[:id])
    # byebug
  end

  def params_school_class
    params.require(:school_class).permit(:title, :room_number)
    #aka STRONG PARAMS
  end



end
