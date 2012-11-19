class StudentApplicationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :lookup_application

  def index
  end

  def new
  end

  def create
    @student_application.user = current_user
    if @student_application.save
      flash[:notice] = "Your Application has been created."
      redirect_to @student_application
    else
      flash[:error] = "Your Application could not be created. #{@student_application.errors.full_messages.join}"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student_application.update_attributes(params[:student_application])
      flash[:notice] = "Your application has been updated"
      redirect_to @student_application
    else
      flash[:alert] = "Your application has not been updated"
      render action: "edit"
    end
  end

  protected
    def lookup_application
      if params[:id]
        @student_application = StudentApplication.find(params[:id])
      else
        @student_application = StudentApplication.new(params[:student_application])
      end
    end
end
