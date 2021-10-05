# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a new event', type: :feature do
  scenario 'valid Event' do
    visit new_event_path
    fill_in 'Title', with: 'Nick Day'
    fill_in 'Description', with: 'Socialize with the Nicks. Ice cream will be served'
    select '2021', :from => 'event_event_date_1i'
    select 'October', :from => 'event_event_date_2i'
    select '21', :from => 'event_event_date_3i'
    click_on 'Create Event'
    visit events_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Socialize with the Nicks. Ice cream will be served')
    expect(page).to have_content('20')
  end

  scenario 'valid Meeting' do
    visit new_meeting_path
    fill_in 'Title', with: 'Nick Day'
    fill_in 'Description', with: 'Socialize with the Nicks. Ice cream will be served'
    select '2021', :from => 'meeting_meeting_date_1i'
    select 'October', :from => 'meeting_meeting_date_2i'
    select '21', :from => 'meeting_meeting_date_3i'
    click_on 'Create Meeting'
    visit meetings_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Socialize with the Nicks. Ice cream will be served')
    expect(page).to have_content('20')
  end


  scenario 'valid Product' do
    visit new_product_path
    fill_in 'Name', with: 'Nick Day'
    fill_in 'Description', with: 'Socialize with the Nicks. Ice cream will be served'
    fill_in 'Price', with: '20'
    click_on 'Create Product'
    visit products_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Socialize with the Nicks. Ice cream will be served')
    expect(page).to have_content('20')
  end

end