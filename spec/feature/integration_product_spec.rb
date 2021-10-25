# frozen_string_literal: true

# location: spec/feature/integration_spec.rb
require 'rails_helper'

def login
  Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google]
  visit root_path
  click_link 'Sign In'
end

RSpec.describe 'Creating a new event', type: :feature do
  scenario 'valid Product' do
    login
    visit new_product_path
    fill_in 'Name', with: 'Nick Day'
    fill_in 'Description', with: 'Nick spirit wear'
    fill_in 'product_price', with: '20'
    click_on 'Create Product'
    visit products_path
    expect(page).to have_content('Nick Day')
    expect(page).to have_content('Nick spirit wear')
    expect(page).to have_content('20')
  end
end
