class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_one :student_application

  def has_application?
    StudentApplication.where(user_id: :id.to_s)
  end
end
