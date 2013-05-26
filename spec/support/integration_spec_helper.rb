module Applicable
  module IntegrationSpecHelper
    include Warden::Test::Helpers

    def log_in_as(role, user = nil)
      user = FactoryGirl.create(role) unless user
      login_as user, :scope => role
      login_as user, :scope => :user

      user
    end

  end
end
