require 'spec_helper'

describe Application do
  describe "associtations" do
    it { should belong_to(:student) }
  end
end
