# location: spec/feature/integration_spec.rb
require 'rails_helper'

def login
  Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
  visit root_path
  click_link 'Sign In'
end

RSpec.describe 'Creating a new event', type: :feature do
  scenario 'valid Meeting' do
    login
    visit new_meeting_path
    fill_in 'Title', with: 'Nick Day'
    fill_in 'Description', with: 'Socialize with the Nicks. Ice cream will be served'
    fill_in 'meeting_meeting_date', with: '2021-10-24T00:00:00'
    fill_in 'Location', with: 'College Station, TX' 
    click_on 'Create Meeting'
    visit meetings_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Socialize with the Nicks. Ice cream will be served')
    expect(page).to have_content('20')
    expect(page).to have_content('10/24/2021 at 12:00AM')
  end

  # scenario 'Destroy Meeting' do
  #   login
  #   visit new_meeting_path
  #   click_on 'Destroy'
  #   click_on 'Delete meeting'
  #   expect(page).to have_content('')
  # end
end