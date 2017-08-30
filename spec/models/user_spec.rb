require 'rails_helper'

RSpec.describe User, type: :model do
  subject { 
    described_class.new(name: "dev magic", email: "email@example.com")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it "is invalid without an email" do
    subject.email = nil 
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it "has many events_users" do
      assc = described_class.reflect_on_association(:events_users)
      expect(assc.macro).to eq :has_many
    end

    it "has many events" do
      assc = described_class.reflect_on_association(:events)
      expect(assc.macro).to eq :has_many
    end
  end
 
end
