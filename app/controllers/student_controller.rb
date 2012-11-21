class StudentController < ApplicationController
  before_filter :authenticate_student!
  before_filter :assign_student

  def show
  end

  def edit
  end

  def update
    if @student.update_attributes(params[:student])
      flash[:notice] = "Your application has been updated"
      redirect_to student_path(@student)
    else
      flash[:alert] = "Your application has not been updated"
      render action: "edit"
    end
  end

  def complete
    StudentMailer.completion_email(@student).deliver
    flash[:notice] = "Your application is complete"
    redirect_to :root
  end

  private
  def assign_student
    @student = current_student
  end
end
