namespace :db do
  task :populate => :environment do
    Student.destroy_all
    AdminUser.destroy_all

    admin = AdminUser.new :email => 'admin@example.com', :password => 'password'

    3.times do |i|
      Student.new :email => "test#{i}@example.com", :password => 'password', :password_confirmation => 'password',
                            :first_name => "test #{i} first", :last_name => "test #{i} last",
                            :date_of_birth => "2013-05-#{i+1}",

                            :phone => '123-123-1234', :twitter => '@handle', :personal_url => 'personal.com', 
                            :employment_history => 'historically employed', :employment_status => 'employed', 
                            :application_reason => 'reasonable reason for application', 
                            :tech_background => 'grounded background in tech', 
                            :tech_story => 'storied tech story', :site_critique => 'criticall site critique', 
                            :discovery => 'discovered on internet', :video => 'youtube.com/video',
                            :program_selection => 'January 2013 for Web Development Bootcamp', 
                            :seeking_job => 'yes', 
                            :scholarship => 'Yes, if accepted I will need sponsorship in order to attend the summer 2012 program', 
                            :location => 'Yes', :commitments => 'no', :awareness => 'awareness is never complete',  
                            :anything_else => 'nothing else'
    end
  end
end
