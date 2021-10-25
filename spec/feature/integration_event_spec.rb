# location: spec/feature/integration_eventspec.rb
require 'rails_helper'


def login
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit root_path
  click_link 'Sign In'
end

RSpec.describe 'Creating a new event', type: :feature do

  scenario 'valid Event' do
    login
    visit new_event_path
    fill_in 'Title', with: 'Nick Day'
    fill_in 'Description', with: 'Socialize with the Nicks. Ice cream will be served'
    fill_in 'event_date_time', with: '2021-10-24T00:00:00'
    fill_in 'Location', with: 'College Station, TX' 
    fill_in 'event_add_req', with: 'NA'
    click_on 'Create Event'
    visit events_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Socialize with the Nicks. Ice cream will be served')
    expect(page).to have_content('21')
  end

end