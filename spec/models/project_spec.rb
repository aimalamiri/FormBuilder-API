require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'Project model' do
    subject { Project.create!(name: "Test Project", description: "This is a test project.", user_id: 1) }
    before { subject.save }

    it "is invalid with empty name" do
      subject.name = nil
      expect(subject).to_not be_valid(:name)
    end
  end
end