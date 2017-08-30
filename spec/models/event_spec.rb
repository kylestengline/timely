require 'rails_helper'

RSpec.describe Event, type: :model do

  subject {
    described_class.new(name: "dev magic", time: DateTime.now, duration: 5)
  } 

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is invalid with invalid attributes" do
    subject.time = nil
    expect(subject).to_not be_valid
  end

  it "is invalid with invalid attributes" do
    subject.duration = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it "has many events users" do
      assc = described_class.reflect_on_association(:events_users)
      expect(assc.macro).to eq :has_many
    end

    it "has many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_many
    end

    it "has many timeslots" do
      assc = described_class.reflect_on_association(:timeslots)
      expect(assc.macro).to eq :has_many
    end
  end

end
