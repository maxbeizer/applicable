class ApplicationsController < ApplicationController
  before_filter :authenticate_student!

  def show
  end

  def new
    @application = student.applications.build
  end

  def create
    @application = student.applications.build params[:application]
    if @application.save
      flash[:notice] = "You have sucessfully completed your application"
      redirect_to student_url student
    else
     flash[:alert] = "There was a problem completing your application" 
     render 'applications/edit'
    end
  end

  def edit
  end

  def update
    if application.update_attributes params[:application]
      flash[:notice] = "You have sucessfully updated your application"
      redirect_to student_url student
    else
     flash[:alert] = "There was a problem updating your application" 
     render :back
    end
  end

  def destroy
    if application.destroy
      flash[:notice] = "Your application has been successfully deleted."
      redirect_to student_url student
    else
      flash[:alert] = "There was a problem deleteing your request"
      render 'students/show'
    end
  end

  helper_method :student
  def student
    @student ||= Student.find params[:student_id]
  end

  helper_method :application
  def application
    @application ||= student.applications.find params[:id] if student.applications.any?
  end
end
