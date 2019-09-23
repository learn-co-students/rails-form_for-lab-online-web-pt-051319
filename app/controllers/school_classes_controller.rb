class SchoolClassesController < ApplicationController

  def show
    @class = SchoolClass.find(params[:id])
  end 
  
  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    # raise params.inspect
    @class = SchoolClass.new
    @class.title = params[:school_class][:title]
    @class.room_number = params[:school_class][:room_number]
    @class.save
    redirect_to school_class_path(@class)
  end

  def update
    # raise params.inspect
    @class = SchoolClass.find(params[:id])
    @class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@class)
  end  

end  