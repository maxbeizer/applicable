ActiveAdmin.register Student do
  index do
    column :first_name
    column :last_name
    column :email
    column :created_at
    column :program_selection
  end
end
