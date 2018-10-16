class SchoolClassesController < ApplicationController
  before_action :find_class, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
  end

  def create
    @school_class = SchoolClass.create(class_params)

    redirect_to @school_class
  end

  def update
    @school_class.update(class_params)
    redirect_to  @school_class
  end

  private

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
