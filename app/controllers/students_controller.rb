class StudentsController < ApplicationController
  before_filter :authenticate_student!

  def show
  end

  def edit
  end

  def update
    if student.update_attributes params[:student]
      flash[:success] = 'Your info was saved successfully'
      redirect_to student_url
    else
      flash[:alert] = 'There was an error updating your info'
      render :back
    end
  end

  def destroy
    if student.destroy
      flash[:success] = 'You have successfully deleted your account'
      redirect_to root_url
    else
      flash[:alert] = 'There was a problem deleting your account'
      render :back
    end
  end

  helper_method :student
  def student
    @student ||= Student.find params[:id]
  end
end
