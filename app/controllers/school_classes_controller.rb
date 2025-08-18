class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(id: params[:id])
  end

  def edit
  end

  def update
  end

  private 

  def school_class_params 
    params.require(:school_class).permit(:title, :room_number)
  end
end
