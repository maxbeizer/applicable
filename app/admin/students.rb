ActiveAdmin.register Student do
  config.per_page = 10
  index do
    column :first_name
    column :last_name
    column :email
    column :updated_at
    default_actions
  end

  show do |student|
    attributes_table do
      row :name
      row :phone
      row :email
      row :date_of_birth
      row :twitter
      row :personal_url
      row :applications_count do
        student.applications.count
      end

      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :twitter
end
