class SchoolClassesController < ApplicationController

  def new
    @school_class=SchoolClass.new
  end

  def index
    @school_classes=SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title=params[:school_class][:title]
    @school_class.room_number=params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class=SchoolClass.find_by(id: params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class=SchoolClass.find_by(id: params[:id])
  end

end
