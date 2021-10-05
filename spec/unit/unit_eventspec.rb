# location: spec/unit/unit_eventspec.rb
require 'rails_helper'

RSpec.describe Event, type: :model do
  subject do
    described_class.new(title: 'All Nicks', description: 'Meeting with the Nicks. Ice cream will be served', event_date: '2021-05-25')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an event title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a event date' do
    subject.event_date = nil
    expect(subject).not_to be_valid
  end
end