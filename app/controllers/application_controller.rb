class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for resource
    if resource.is_a? Student
      student_url resource
    else
      admin_root_url
    end
  end
end
