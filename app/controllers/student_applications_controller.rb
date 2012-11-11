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
end
