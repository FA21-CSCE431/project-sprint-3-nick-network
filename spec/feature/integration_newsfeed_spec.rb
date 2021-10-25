# frozen_string_literal: true

# location: spec/feature/integration_spec.rb
require 'rails_helper'

def login
  Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google]
  visit root_path
  click_link 'Sign In'
end

RSpec.describe 'Creating a new event', type: :feature do
  scenario 'valid News Feed Post' do
    login
    visit new_news_post_path
    fill_in 'Title', with: 'Nick Day'
    fill_in 'Description', with: 'Selling Nickwork shirt'
    click_on 'Create News post'
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Selling Nickwork shirt')
  end
end
