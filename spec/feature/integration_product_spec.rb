# frozen_string_literal: true

# location: spec/feature/integration_spec.rb
require 'rails_helper'

def login
  Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google]
  visit root_path
  click_link 'Sign In'
end

RSpec.describe 'Creating, editing, and destroying product', type: :feature do
  scenario 'valid Product' do
    login
    visit new_product_path 
    fill_in 'Name', with: 'Shirt'  # creating a new product 
    fill_in 'Description', with: 'Nick spirit wear'
    fill_in 'product_price', with: '20'
    click_on 'Create Product'
    visit products_path
    expect(page).to have_content('Shirt')
    expect(page).to have_content('Nick spirit wear')
    expect(page).to have_content('20')

    visit products_path
    click_on 'Edit'  # editing the product
    fill_in 'Name', with: 'T-Shirt' 
    fill_in 'Description', with: 'Blue shirt'
    fill_in 'product_price', with: '25'
    click_on 'Update Product'

    expect(page).to have_content('T-Shirt')
    expect(page).to have_content('Blue shirt')
    expect(page).to have_content('25')  
    
    visit products_path
    
    click_on 'Destroy'  # deleting the product
    click_on 'Delete product'
    expect(page).to have_no_content('T-Shirt')
    expect(page).to have_no_content('Blue shirt')
  end
end
