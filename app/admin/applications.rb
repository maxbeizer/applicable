ActiveAdmin.register Application do
  config.per_page = 10
  actions :all, :except => [:new, :edit]

  index do
    column :applicant, :sortable => :name do |application|
      link_to application.student.name, admin_student_path(application.student)
    end
    column :program_selection
    default_actions
  end

  filter :program_selection
end
