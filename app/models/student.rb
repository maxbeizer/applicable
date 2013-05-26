class Student < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :phone,
                  :date_of_birth, :twitter, :personal_url

  before_create :remove_at_sign_from_twitter

  def name
    first_name.nil? ? email : [first_name, last_name].join(" ")
  end

  def archive
    self.archived = true
    self.save!
  end

  private
  def remove_at_sign_from_twitter
    if self.twitter
      self.twitter.gsub(/^@/, '')
    end
  end
end
