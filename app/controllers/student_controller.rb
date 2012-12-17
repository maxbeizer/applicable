class StudentController < ApplicationController
  before_filter :authenticate_student!, :except => [:index, :show, :archive]
  before_filter :assign_student
  before_filter :authenticate_admin_user!, :only => [:index, :archive]

  def index
    @active_students = Student.where("archived = ?", false)
    @students = Student.all
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = StudentPdf.new(@student, view_context)
        send_data pdf.render, filename:
        "student_#{@student.last_name}.pdf",
        type: "application/pdf", disposition: "inline"
      end
    end
  end

  def edit
  end

  def update
    if @student.update_attributes(params[:student])
      flash[:notice] = "Your application has been updated"
      redirect_to student_path
    else
      flash[:alert] = "Your application has not been updated"
      render action: "edit"
    end
  end

  def complete
    StudentMailer.completion_email(@student).deliver
    StudentMailer.new_applicant_email(@student).deliver
    flash[:notice] = "Your application is complete"
    render 'student/complete'
  end

  def archive
    @student.archive
    redirect_to "/students"
  end

  private
  def assign_student
    params[:id] ? @student = Student.find(params[:id]) : @student = current_student
  end
end
