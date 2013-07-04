ActiveAdmin.register AdminUser do
  actions :all, :except => [:edit]

  index :download_links => false do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
