class SchoolClassesController < ApplicationController
#inherits from ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end


  def show
    @schoolclasses = SchoolClass.find_by(id: params[:id])

  end

  def create
    @schoolclass = SchoolClass.new
    @schoolclass.title = params[:school_class][:title]
    @schoolclass.room_number = params[:school_class][:room_number]
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find_by(id: params[:id])
  end

  def update
    @schoolclass = SchoolClass.find_by(id: params[:id])
      @schoolclass.update(params.require(:school_class))
    redirect_to school_class_path(@schoolclass)
  end

end
