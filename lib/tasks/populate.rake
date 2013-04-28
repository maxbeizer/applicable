namespace :db do
  task :populate => :environment do
    Student.destroy_all
    AdminUser.destroy_all

    student = Student.new :first_name => 'Jon', :last_name => 'Doe', :email => 'student@example.com', :password => 'asdfasdf', :password_confirmation => 'asdfasdf',
    :phone => '123-123-1234', :date_of_birth => '2012-12-31', :twitter => '@handle', :personal_url => 'personal.com', :employment_history => 'historically employed',
    :employment_status => 'employed', :application_reason => 'reasonable reason for application', :tech_background => 'grounded background in tech',
    :tech_story => 'storied tech story', :site_critique => 'criticall site critique', :discovery => 'discovered on internet', :video => 'youtube.com/video',
    :program_selection => 'January 2013 for Web Development Bootcamp', :seeking_job => 'yes',
    :scholarship => 'Yes, if accepted I will need sponsorship in order to attend the summer 2012 program', :location => 'Yes', :commitments => 'no',
    :awareness => 'awareness is never complete',  :anything_else => 'nothing else'
    student.save!

    admin_user = AdminUser.new :email => 'v@example.com', :password => 'asdfasdf', :password_confirmation => 'asdfasdf'
    admin_user.save!
  end
end
