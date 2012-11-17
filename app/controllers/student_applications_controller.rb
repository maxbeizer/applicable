class StudentApplicationsController < ApplicationController
  before_filter :find_user
  def index

  end

  def new
    @student_application = @user.build_student_application
  end

  def create
    @student_application = @user.build_student_application
    if @student_application.save
      flash[:notice] = "Your Application has been created."
      redirect_to [@user, @student_application]
    else
      flash[:alert] = "Your Application has not been created."
      render :action => "new"
    end
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

  private
    def find_user
      @user = User.find(params[:user_id])
    end
end
