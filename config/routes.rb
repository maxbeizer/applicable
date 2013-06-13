Applicable::Application.routes.draw do
  root to: "public#index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :students

  resources :students do
    resources :applications
  end

  match '/students' => 'student#index'

  match 'student/:id/archived', :as => 'archive_student', :to => 'student#archive'

  resources :student, :only => [:show], :as => :applicant

  match 'student/:id', :as => 'delete_student', :to => 'student#destroy', :via => :delete
end
