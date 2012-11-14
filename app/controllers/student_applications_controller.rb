class StudentApplicationsController < ApplicationController
  def index

  end

  def new
    @student_application = StudentApplication.new
  end

  def create
    @student_application = StudentApplication.new(params[:student_application])
    @student_application.save
    flash[:notice] = "Your Application has been created."
    redirect_to @student_application
  end

  def show
    @student_application = StudentApplication.find(params[:id])
  end

  def edit
    @student_application = StudentApplication.find(params[:id])
  end

  def update
    @student_application = StudentApplication.find(params[:id])
    if @student_application.update_attributes(params[:student_application])
      flash[:notice] = "Your application has been updated"
      redirect_to @student_application
    else
      flash[:alert] = "Your application has not been updated"
      render action: "edit"
    end
  end
end
