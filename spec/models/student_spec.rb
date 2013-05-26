require 'spec_helper'

describe Student do
  describe "instance methods" do
    let(:student) { FactoryGirl.create(:student, :email => 'student@example.com') }

    describe "#name" do
      context "with first name" do
        it "returns the full name" do
          expect(student.name).to eq("Joan Doe")
        end
      end

      context "without first name" do
        it "returns the user's email" do
          student.first_name = nil
          expect(student.name).to eq("student@example.com")
        end
      end
    end

    describe "#archive" do
      it "sets the archived column to true" do
        student.archive
        expect(student).to be_archived
      end
    end
  end
end
