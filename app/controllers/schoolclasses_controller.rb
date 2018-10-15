class SchoolclassesController < ApplicationController
  def index
    @schoolclasses = Schoolclass.all
  end

  def show
    @schoolclass = Schoolclass.find(params[:id])
  end

  def new
    @schoolclass = Schoolclass.new
  end

  def create
    @schoolclass = Schoolclass.new(params.require(:schoolclass))
    @schoolclass.save
    redirect_to schoolclass_path(@schoolclass)
  end

    def edit
      @schoolclass = Schoolclass.find(params[:id])

    end

    def update
      @schoolclass = Schoolclass.find(params[:id])
      @schoolclass.update(params.require(:schoolclass))
      @schoolclass.save
      redirect_to schoolclass_path(@schoolclass)
    end



end
