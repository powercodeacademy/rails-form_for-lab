class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))

    if @school_class.save
      redirect_to @school_class
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])

    if @student.update(school_class_params(:title, :room_number))
      redirect_to @student
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
