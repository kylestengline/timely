require 'rails_helper'

RSpec.describe Timeslot, type: :model do
  let!(:event) { Event.create(name: "dev magic", time: DateTime.now, duration: 5)}

  subject {
    described_class.new(start_time: DateTime.now, event_id: 1)
  } 

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is invalid with invalid attributes" do
    subject.event_id = nil
    expect(subject).to_not be_valid
  end

  it "is invalid with invalid attributes" do
    subject.start_time = nil
    expect(subject).to_not be_valid
  end
end
